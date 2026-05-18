-- queries/business_queries.sql
-- PostgreSQL versions of the 11 business queries

-- 1) Which contracts have an end date in 2024 and include client details?
SELECT c.contract_id, c.contract_name, c.end_date, cl.client_id, cl.client_name, cl.client_phone, cl.client_email
FROM contracts c
JOIN clients cl ON c.client_id = cl.client_id
WHERE EXTRACT(YEAR FROM c.end_date) = 2024;

-- 2) Find all active contracts with their client details and agent information.
SELECT c.contract_id, c.contract_name, c.status, cl.client_name, ag.agent_name, ag.agent_email
FROM contracts c
JOIN clients cl ON c.client_id = cl.client_id
JOIN agents ag ON c.agent_id = ag.agent_id
WHERE c.status = 'Active';

-- 3) Which agents have handled contracts with a total amount greater than 50,000,000?
SELECT ag.agent_id, ag.agent_name, SUM(c.amount) AS total_contract_value
FROM contracts c
JOIN agents ag ON c.agent_id = ag.agent_id
GROUP BY ag.agent_id, ag.agent_name
HAVING SUM(c.amount) > 50000000;

-- 4) Which internal staff members handle the most claims?
SELECT s.staff_id, s.staff_name, COUNT(cis.claim_id) AS total_claims
FROM claim_internal_staff cis
JOIN internal_staff s ON cis.staff_id = s.staff_id
GROUP BY s.staff_id, s.staff_name
ORDER BY total_claims DESC;

-- 5) Which insurance types generate the most revenue from paid contracts?
SELECT ins.insurance_type, SUM(pm.payment_amount) AS revenue
FROM contracts c
JOIN policies p ON c.policy_id = p.policy_id
JOIN insurances ins ON p.insurance_id = ins.insurance_id
JOIN payments pm ON c.contract_id = pm.contract_id
WHERE pm.payment_status = 'Paid'
GROUP BY ins.insurance_type
ORDER BY revenue DESC;

-- 6) Beneficiary relationship types linked to active contracts: totals per relationship
SELECT b.relationship,
			 COUNT(cb.beneficiary_id) AS total_beneficiaries,
			 COUNT(DISTINCT cb.contract_id) AS total_contracts,
			 SUM(c.amount) AS total_coverage
FROM contract_beneficiaries cb
JOIN beneficiaries b ON cb.beneficiary_id = b.beneficiary_id
JOIN contracts c ON cb.contract_id = c.contract_id
WHERE c.status = 'Active'
GROUP BY b.relationship
ORDER BY total_beneficiaries DESC;

-- 7) Clients with the highest number of pending claims and associated contract amounts
SELECT cl.client_id, cl.client_name, COUNT(clm.claim_id) AS pending_claims, SUM(ct.amount) AS total_contract_amount
FROM claims clm
JOIN contracts ct ON clm.contract_id = ct.contract_id
JOIN clients cl ON ct.client_id = cl.client_id
WHERE clm.status = 'Pending'
GROUP BY cl.client_id, cl.client_name
ORDER BY pending_claims DESC;

-- 8) Claims not 'Approved' with associated client feedback rating < 3
SELECT clm.claim_id, ct.contract_id, clm.status AS claim_status, fb.feedback_id, fb.rating_star, fb.comments
FROM claims clm
JOIN contracts ct ON clm.contract_id = ct.contract_id
JOIN clients c ON ct.client_id = c.client_id
JOIN feedback fb ON c.client_id = fb.client_id
WHERE clm.status <> 'Approved' AND fb.rating_star < 3;

-- 9) Agents who handled the most contracts and their average contract values
SELECT ag.agent_id, ag.agent_name, ag.branch, COUNT(ct.contract_id) AS total_contracts, AVG(ct.amount) AS avg_contract_value
FROM agents ag
JOIN contracts ct ON ag.agent_id = ct.agent_id
GROUP BY ag.agent_id, ag.agent_name, ag.branch
ORDER BY total_contracts DESC;

-- 10) Clients whose total contract amount exceeds the average contract amount among clients with feedback rating < 3
SELECT cl.client_id, cl.client_name, SUM(c.amount) AS total_contract_value
FROM clients cl
JOIN contracts c ON cl.client_id = c.client_id
GROUP BY cl.client_id, cl.client_name
HAVING SUM(c.amount) > (
		SELECT AVG(ct.amount)
		FROM contracts ct
		JOIN clients cli ON ct.client_id = cli.client_id
		JOIN feedback fb ON cli.client_id = fb.client_id
		WHERE fb.rating_star < 3
)
ORDER BY total_contract_value DESC;

-- 11) Clients with highest total contract values and their most recent payment status
SELECT cl.client_id, cl.client_name, SUM(c.amount) AS total_contract_value,
			 (
				 SELECT p.payment_status
				 FROM contracts c2
				 JOIN payments p ON c2.contract_id = p.contract_id
				 WHERE c2.client_id = cl.client_id
				 ORDER BY p.payment_date DESC
				 LIMIT 1
			 ) AS latest_payment_status
FROM clients cl
JOIN contracts c ON cl.client_id = c.client_id
GROUP BY cl.client_id, cl.client_name
ORDER BY total_contract_value DESC;

