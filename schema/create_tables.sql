-- Full DDL for the Insurance Contract Management System (ICMS)
-- Run in PostgreSQL. Adjust types if using another RDBMS.

CREATE TABLE IF NOT EXISTS clients (
	client_id SERIAL PRIMARY KEY,
	client_name VARCHAR(255) NOT NULL,
	client_phone VARCHAR(50),
	client_email VARCHAR(255),
	client_address TEXT,
	client_dob DATE
);

CREATE TABLE IF NOT EXISTS agents (
	agent_id SERIAL PRIMARY KEY,
	agent_name VARCHAR(255) NOT NULL,
	agent_phone VARCHAR(50),
	agent_email VARCHAR(255),
	branch VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS insurances (
	insurance_id SERIAL PRIMARY KEY,
	insurance_type VARCHAR(100) NOT NULL,
	des_ins TEXT,
	premium_range TEXT
);

CREATE TABLE IF NOT EXISTS policies (
	policy_id SERIAL PRIMARY KEY,
	insurance_id INTEGER NOT NULL REFERENCES insurances(insurance_id) ON DELETE RESTRICT,
	policy_name VARCHAR(255) NOT NULL,
	coverage_limit NUMERIC(14,2),
	policy_fee NUMERIC(14,2)
);

CREATE TABLE IF NOT EXISTS internal_staff (
	staff_id SERIAL PRIMARY KEY,
	staff_name VARCHAR(255) NOT NULL,
	staff_phone VARCHAR(50),
	staff_email VARCHAR(255),
	staff_role VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS beneficiaries (
	beneficiary_id SERIAL PRIMARY KEY,
	fullname VARCHAR(255) NOT NULL,
	relationship VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS contracts (
	contract_id SERIAL PRIMARY KEY,
	policy_id INTEGER NOT NULL REFERENCES policies(policy_id) ON DELETE RESTRICT,
	contract_name VARCHAR(255),
	client_id INTEGER NOT NULL REFERENCES clients(client_id) ON DELETE CASCADE,
	agent_id INTEGER NOT NULL REFERENCES agents(agent_id) ON DELETE SET NULL,
	start_date DATE,
	end_date DATE,
	status VARCHAR(50),
	amount NUMERIC(14,2)
);

-- Many-to-many: contracts <-> beneficiaries (with percentage share)
CREATE TABLE IF NOT EXISTS contract_beneficiaries (
	contract_id INTEGER NOT NULL REFERENCES contracts(contract_id) ON DELETE CASCADE,
	beneficiary_id INTEGER NOT NULL REFERENCES beneficiaries(beneficiary_id) ON DELETE CASCADE,
	percentage_share NUMERIC(5,2) DEFAULT 0.00,
	PRIMARY KEY (contract_id, beneficiary_id)
);

CREATE TABLE IF NOT EXISTS payments (
	payment_id SERIAL PRIMARY KEY,
	agent_id INTEGER REFERENCES agents(agent_id) ON DELETE SET NULL,
	contract_id INTEGER NOT NULL REFERENCES contracts(contract_id) ON DELETE CASCADE,
	payment_date TIMESTAMP WITH TIME ZONE DEFAULT now(),
	payment_amount NUMERIC(14,2) NOT NULL,
	payment_method VARCHAR(50),
	payment_status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS claims (
	claim_id SERIAL PRIMARY KEY,
	contract_id INTEGER NOT NULL REFERENCES contracts(contract_id) ON DELETE CASCADE,
	claim_date DATE,
	description TEXT,
	claim_amount NUMERIC(14,2),
	status VARCHAR(50),
	settlement_amount NUMERIC(14,2),
	resolution_date DATE
);

-- Many-to-many: claims <-> internal_staff (who handled the claim)
CREATE TABLE IF NOT EXISTS claim_internal_staff (
	claim_id INTEGER NOT NULL REFERENCES claims(claim_id) ON DELETE CASCADE,
	staff_id INTEGER NOT NULL REFERENCES internal_staff(staff_id) ON DELETE CASCADE,
	PRIMARY KEY (claim_id, staff_id)
);

CREATE TABLE IF NOT EXISTS feedback (
	feedback_id SERIAL PRIMARY KEY,
	client_id INTEGER NOT NULL REFERENCES clients(client_id) ON DELETE CASCADE,
	feedback_date DATE,
	rating_star SMALLINT CHECK (rating_star >= 0 AND rating_star <= 5),
	feedback_type VARCHAR(50),
	comments TEXT,
	status VARCHAR(50),
	resolved_date DATE
);

-- Optional: add indexes for common lookup columns
CREATE INDEX IF NOT EXISTS idx_contracts_client_id ON contracts(client_id);
CREATE INDEX IF NOT EXISTS idx_payments_contract_id ON payments(contract_id);
CREATE INDEX IF NOT EXISTS idx_claims_contract_id ON claims(contract_id);

