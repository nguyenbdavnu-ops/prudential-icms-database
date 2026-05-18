-- data/insert_data.sql
-- Put all INSERT ... VALUES or COPY statements here to populate the schema.

-- Example:
-- INSERT INTO example_table (name) VALUES ('Alice'), ('Bob');

-- You can split inserts per table and include transactional wrappers if desired
-- These INSERTs avoid supplying PKs so serial IDs are used; references
-- use subqueries to map by name to the generated IDs.
-- ==================================================================

BEGIN;

-- Clients (user provided ~22 samples)
INSERT INTO clients (client_name, client_phone, client_email, client_address, client_dob)
VALUES
('Nguyen Van An', '987654321', 'an.nguyen@gmail.com', '123 Le Loi Street, HN', '1990-05-01'),
('Tran Thi Hoa', '987543210', 'hoa.tran@gmail.com', '45 Tran Phu Street, DN', '1985-08-15'),
('Le Quang Huy', '971234567', 'huy.le@gmail.com', '89 Nguyen Hue Street, SG', '1992-03-10'),
('Pham Minh Tu', '98765432', 'tu.pham@gmail.com', '234 Hung Vuong Street, HN', '1988-11-30'),
('Dang Thi Lan', '934567890', 'lan.dang@gmail.com', '678 Cach Mang Thang 8 Street, HN', '1995-06-22'),
('Hoang Quoc Anh', '912345678', 'anh.hoang@gmail.com', '12 Hai Ba Trung Street, SG', '1997-04-12'),
('Vo Nhat Nam', '945678123', 'nam.vo@gmail.com', '345 Dong Da Street, HN', '1993-12-01'),
('Nguyen Tien Dung', '912000001', 'dung.nguyen01@gmail.com', '12 Ly Thuong Kiet, HN', '1991-02-14'),
('Pham Thi Thanh', '912000002', 'thanh.pham02@gmail.com', '33 Hang Bai, HN', '1987-07-22'),
('Tran Van Binh', '912000003', 'binh.tran03@gmail.com', '45 Bach Dang, HCM', '1993-09-30'),
('Le Thi Kim Oanh', '912000004', 'oanh.le04@gmail.com', '99 Le Van Luong, HN', '1990-12-12'),
('Hoang Minh Tuan', '912000005', 'tuan.hoang05@gmail.com', '76 Nguyen Chi Thanh, HCM', '1992-05-08'),
('Do Quynh Trang', '912000006', 'trang.do06@gmail.com', '44 Doi Can, HN', '1988-03-17'),
('Ngo Van Son', '912000007', 'son.ngo07@gmail.com', '21 Phan Chu Trinh, HN', '1994-06-20'),
('Trinh Thi Ngoc', '912000008', 'ngoc.trinh08@gmail.com', '15 Le Duan, HCM', '1996-10-15'),
('Bui Van Phuc', '912000009', 'phuc.bui09@gmail.com', '65 Dien Bien Phu, DN', '1985-01-05'),
('Dang Mai Lan', '912000010', 'lan.dang10@gmail.com', '99 Nguyen Hue, HN', '1991-11-11'),
('Pham Anh Tuan', '912000011', 'tuan.pham11@gmail.com', '78 Kim Ma, HN', '1993-04-19'),
('Nguyen Thi Dao', '912000012', 'dao.nguyen12@gmail.com', '32 Nguyen Du, HN', '1997-08-09'),
('Le Van Hoang', '912000013', 'hoang.le13@gmail.com', '43 Vo Van Tan, HCM', '1995-07-27'),
('Tran Thi Yen', '912000014', 'yen.tran14@gmail.com', '18 Phan Dinh Phung, HN', '1989-06-01'),
('Vo Thanh Long', '912000015', 'long.vo15@gmail.com', '21 Nguyen Van Cu, CT', '1992-02-22');

-- Agents
INSERT INTO agents (agent_name, agent_phone, agent_email, branch)
VALUES
('Bac Ha Agency', '912345678', 'bacha@gmail.com', 'Hanoi'),
('Trung Viet Agency', '987654321', 'trungviet@gmail.com', 'Da Nang'),
('Minh Phat Company', '908765432', 'minhphat@gmail.com', 'Ho Chi Minh'),
('Dong A Agency', '945678123', 'donga@gmail.com', 'Hai Phong'),
('Nam Long Company', '923456789', 'namlong@gmail.com', 'Can Tho'),
('An Phat Insurance', '921000001', 'anphat@insurance.com', 'Ha Noi'),
('Bao Viet Agency', '921000002', 'baoviet@agency.com', 'Hai Phong'),
('Viet Tin Services', '921000003', 'viettinsv@ins.com', 'Da Nang'),
('Hoang Long Company', '921000004', 'hoanglong@insure.com', 'HCM'),
('Trust Insurance', '921000005', 'trust@secure.com', 'Can Tho'),
('New Life Agency', '921000006', 'newlife@agency.com', 'Hue'),
('Pacific Partners', '921000007', 'pacific@insurance.com', 'Quang Ninh'),
('Green Shield Co.', '921000008', 'greenshield@ins.com', 'Nha Trang'),
('Safe Future Group', '921000009', 'safefuture@group.com', 'Ha Noi'),
('Reliable Insure', '921000010', 'reliable@insure.vn', 'HCM'),
('Smart Secure', '921000011', 'smart@secure.com', 'Hue'),
('Nam A Protect', '921000012', 'nama@protect.com', 'Can Tho'),
('Golden Shield', '921000013', 'golden@shield.com', 'HCM'),
('Viet Pro Agency', '921000014', 'vietpro@agency.com', 'Ha Noi'),
('Sunlife Agency', '921000015', 'sunlife@agency.com', 'Da Nang'),
('Bao An Group', '921000016', 'baoan@group.com', 'Hai Duong'),
('Minh Chau Insure', '921000017', 'minhchau@insure.com', 'Vinh'),
('An Khang Co.', '921000018', 'ankhang@co.com', 'HCM'),
('Peace Agency', '921000019', 'peace@agency.com', 'Ha Noi'),
('Tien Phong Services', '921000020', 'tienphong@service.com', 'Bac Ninh');

-- Insurances
INSERT INTO insurances (insurance_type, des_ins, premium_range)
VALUES
('Vehicle Insurance', 'Protection for motorcycles, cars against risks', '2,000,000 - 15,000,000'),
('Life Insurance', 'Ensures long-term life security', '50,000,000 - 200,000,000'),
('Home Insurance', 'Protection for assets, residences', '5,000,000 - 50,000,000'),
('Health Insurance', 'Covers medical expenses', '10,000,000 - 30,000,000'),
('Travel Insurance', 'Ensures safety while traveling', '1,000,000 - 5,000,000'),
('Accident Insurance', 'Covers accidental injuries and death', '5,000,000 - 50,000,000'),
('Business Insurance', 'Protects businesses against losses', '50,000,000 - 500,000,000'),
('Education Insurance', 'Secures future education expenses', '10,000,000 - 200,000,000'),
('Fire Insurance', 'Protects property against fire damage', '15,000,000 - 100,000,000'),
('Agricultural Insurance', 'Covers crops and livestock', '2,000,000 - 30,000,000'),
('Cyber Insurance', 'Protects against cyber attacks and data breaches', '20,000,000 - 100,000,000'),
('Pet Insurance', 'Covers veterinary expenses', '1,000,000 - 10,000,000'),
('Marine Insurance', 'Covers cargo and shipping vessels', '100,000,000 - 1,000,000,000'),
('Loan Protection', 'Pays off loans in case of unforeseen events', '5,000,000 - 50,000,000'),
('Natural Disaster Insurance', 'Covers earthquake and flood damage', '30,000,000 - 200,000,000'),
('Burglary Insurance', 'Covers theft and burglary losses', '10,000,000 - 70,000,000'),
('Critical Illness Insurance', 'Covers severe illnesses like cancer, stroke', '40,000,000 - 250,000,000'),
('Income Protection', 'Replaces income during disability', '20,000,000 - 100,000,000'),
('Mobile Device Insurance', 'Covers loss or damage to mobile devices', '500,000 - 5,000,000'),
('Home Appliance Insurance', 'Protects household appliances', '1,000,000 - 10,000,000'),
('Funeral Insurance', 'Covers funeral-related expenses', '3,000,000 - 30,000,000'),
('Wedding Insurance', 'Covers unexpected cancellations or damage', '10,000,000 - 60,000,000');

-- Policies (link to insurances by type)
INSERT INTO policies (insurance_id, policy_name, coverage_limit, policy_fee)
VALUES
((SELECT insurance_id FROM insurances WHERE insurance_type='Vehicle Insurance'), 'Basic Vehicle Insurance', 10000000, 500),
((SELECT insurance_id FROM insurances WHERE insurance_type='Vehicle Insurance'), 'Comprehensive Car Insurance', 50000000, 5000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Life Insurance'), 'Personal Life Insurance', 500000000, 10000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Health Insurance'), 'Basic Health Insurance', 100000000, 2000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Travel Insurance'), 'Domestic Travel Insurance', 50000000, 1000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Travel Insurance'), 'International Travel Insurance', 200000000, 2500000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Accident Insurance'), 'Basic Accident Plan', 50000000, 2000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Business Insurance'), 'SME Business Protect', 200000000, 8000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Education Insurance'), 'Education Plus', 100000000, 6000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Fire Insurance'), 'Standard Fire Policy', 150000000, 4000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Agricultural Insurance'), 'Farm Secure Plan', 30000000, 2500000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Cyber Insurance'), 'Cyber Shield Basic', 80000000, 3500000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Pet Insurance'), 'Pet Health Plus', 7000000, 1000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Marine Insurance'), 'Cargo Marine Cover', 900000000, 15000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Loan Protection'), 'Loan Safety Flex', 40000000, 2000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Natural Disaster Insurance'), 'Disaster Recovery Premium', 180000000, 10000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Burglary Insurance'), 'Anti-Theft Home Cover', 60000000, 3000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Critical Illness Insurance'), 'Critical Life Plan', 200000000, 8000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Income Protection'), 'Work Disability Cover', 100000000, 5000000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Mobile Device Insurance'), 'Mobile Premium Protection', 3000000, 800000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Home Appliance Insurance'), 'Appliance Secure', 7000000, 1200000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Funeral Insurance'), 'Funeral Essential Cover', 25000000, 1800000),
((SELECT insurance_id FROM insurances WHERE insurance_type='Wedding Insurance'), 'Wedding Smart Plan', 50000000, 3500000);

-- Internal staff
INSERT INTO internal_staff (staff_name, staff_phone, staff_email, staff_role)
VALUES
('Do Hoang Anh', '989876543', 'anh.do@internal.com', 'Claims Processor'),
('Nguyen Thi Hang', '912987654', 'hang.nguyen@internal.com', 'Policy Analyst'),
('Le Van Minh', '987654321', 'minh.le@internal.com', 'Risk Manager'),
('Pham Quoc Bao', '945678123', 'bao.pham@internal.com', 'Claims Adjuster'),
('Tran Thu Huong', '911223344', 'huong.tran@internal.com', 'Compliance Officer'),
('Nguyen Van Linh', '930000001', 'linh.nguyen@staff.com', 'Claims Processor'),
('Pham Thi Hoa', '930000002', 'hoa.pham@staff.com', 'Policy Analyst'),
('Tran Van Nam', '930000003', 'nam.tran@staff.com', 'Risk Manager'),
('Le Thi Bich', '930000004', 'bich.le@staff.com', 'Compliance Officer'),
('Do Quang Minh', '930000005', 'minh.do@staff.com', 'Underwriter'),
('Vo Thi Thu', '930000006', 'thu.vo@staff.com', 'Customer Service'),
('Bui Van Khoa', '930000007', 'khoa.bui@staff.com', 'Claims Adjuster'),
('Hoang Thi Lan', '930000008', 'lan.hoang@staff.com', 'Investigator'),
('Nguyen Anh Tuan', '930000009', 'tuan.anh@staff.com', 'Legal Advisor'),
('Trinh Minh Chau', '930000010', 'chau.trinh@staff.com', 'Policy Auditor'),
('Mai Hong Phuc', '930000011', 'phuc.mai@staff.com', 'Claims Assistant'),
('Le Quoc Cuong', '930000012', 'cuong.le@staff.com', 'Internal Auditor'),
('Pham Nhat Long', '930000013', 'long.pham@staff.com', 'Actuary'),
('Nguyen Bao Tram', '930000014', 'tram.nguyen@staff.com', 'Support Staff'),
('Dang Thanh Ha', '930000015', 'ha.dang@staff.com', 'Policy Coordinator'),
('Vo Minh Hieu', '930000016', 'hieu.vo@staff.com', 'Documentation Officer'),
('Hoang Xuan Tin', '930000017', 'tin.hoang@staff.com', 'Field Investigator');

-- Beneficiaries (insert basic info; percentage stored in contract_beneficiaries)
INSERT INTO beneficiaries (fullname, relationship)
VALUES
('Tran Thi Hoa', 'Spouse'),
('Tran Van An', 'Child'),
('Nguyen Thi Duyen', 'Spouse'),
('Pham Van Dat', 'Sibling'),
('Le Thi Hoa', 'Parent'),
('Pham Minh Chau', 'Spouse'),
('Nguyen Van Nam', 'Child'),
('Nguyen Thi Lan', 'Parent'),
('Vo Thi Mai', 'Spouse'),
('Tran Van Minh', 'Child'),
('Pham Thi Bich', 'Spouse'),
('Le Thi Dao', 'Spouse'),
('Le Van Bao', 'Child'),
('Tran Minh Anh', 'Parent'),
('Nguyen Dinh Tu', 'Spouse'),
('Nguyen Thi Mai', 'Child'),
('Pham Nhu Quynh', 'Sibling'),
('Pham Van Nhat', 'Sibling'),
('Dang Bao Ha', 'Parent'),
('Nguyen Huu Toan', 'Spouse'),
('Hoang My Linh', 'Child'),
('Tran Duc Huy', 'Spouse'),
('Tran Minh Chau', 'Child'),
('Nguyen Thi Loan', 'Sibling'),
('Nguyen Tuan Anh', 'Parent');

-- Contracts (map client/agent/policy by name)
INSERT INTO contracts (policy_id, contract_name, client_id, agent_id, start_date, end_date, status, amount)
VALUES
((SELECT policy_id FROM policies WHERE policy_name='Basic Vehicle Insurance'), 'Motorcycle Insurance', (SELECT client_id FROM clients WHERE client_name='Nguyen Van An'), (SELECT agent_id FROM agents WHERE agent_name='Bac Ha Agency'), '2024-01-01', '2025-01-01', 'Active', 2000000),
((SELECT policy_id FROM policies WHERE policy_name='Comprehensive Car Insurance'), 'Critical Illness Plus', (SELECT client_id FROM clients WHERE client_name='Tran Thi Hoa'), (SELECT agent_id FROM agents WHERE agent_name='Trung Viet Agency'), '2024-02-01', '2034-02-01', 'Active', 80000000),
((SELECT policy_id FROM policies WHERE policy_name='Personal Life Insurance'), 'Health Secure Plan', (SELECT client_id FROM clients WHERE client_name='Le Quang Huy'), (SELECT agent_id FROM agents WHERE agent_name='Minh Phat Company'), '2024-03-01', '2034-03-01', 'Pending', 50000000),
((SELECT policy_id FROM policies WHERE policy_name='Basic Health Insurance'), 'Edu Save - Child Plan', (SELECT client_id FROM clients WHERE client_name='Pham Minh Tu'), (SELECT agent_id FROM agents WHERE agent_name='Dong A Agency'), '2024-01-15', '2042-01-15', 'Active', 60000000),
((SELECT policy_id FROM policies WHERE policy_name='Domestic Travel Insurance'), 'Life Investment Link', (SELECT client_id FROM clients WHERE client_name='Dang Thi Lan'), (SELECT agent_id FROM agents WHERE agent_name='Nam Long Company'), '2024-04-01', '2044-04-01', 'Active', 150000000),
((SELECT policy_id FROM policies WHERE policy_name='International Travel Insurance'), 'Hospital Cash - Basic', (SELECT client_id FROM clients WHERE client_name='Hoang Quoc Anh'), (SELECT agent_id FROM agents WHERE agent_name='An Phat Insurance'), '2024-05-01', '2034-05-01', 'Active', 20000000),
((SELECT policy_id FROM policies WHERE policy_name='Basic Accident Plan'), 'Savings for Retirement', (SELECT client_id FROM clients WHERE client_name='Vo Nhat Nam'), (SELECT agent_id FROM agents WHERE agent_name='Bao Viet Agency'), '2024-06-01', '2044-06-01', 'Pending', 120000000),
((SELECT policy_id FROM policies WHERE policy_name='SME Business Protect'), 'Income Protection Plan', (SELECT client_id FROM clients WHERE client_name='Nguyen Tien Dung'), (SELECT agent_id FROM agents WHERE agent_name='Viet Tin Services'), '2024-07-01', '2037-07-01', 'Active', 70000000),
((SELECT policy_id FROM policies WHERE policy_name='Education Plus'), 'LifeCare Premier', (SELECT client_id FROM clients WHERE client_name='Pham Thi Thanh'), (SELECT agent_id FROM agents WHERE agent_name='Hoang Long Company'), '2024-08-01', '2040-08-01', 'Active', 95000000),
((SELECT policy_id FROM policies WHERE policy_name='Standard Fire Policy'), 'Child Education Fund', (SELECT client_id FROM clients WHERE client_name='Tran Van Binh'), (SELECT agent_id FROM agents WHERE agent_name='Trust Insurance'), '2024-09-01', '2043-09-01', 'Pending', 75000000),
((SELECT policy_id FROM policies WHERE policy_name='Farm Secure Plan'), 'HealthPlus Max', (SELECT client_id FROM clients WHERE client_name='Le Thi Kim Oanh'), (SELECT agent_id FROM agents WHERE agent_name='New Life Agency'), '2024-10-01', '2034-10-01', 'Active', 40000000),
((SELECT policy_id FROM policies WHERE policy_name='Cyber Shield Basic'), 'Life Assurance Flexi', (SELECT client_id FROM clients WHERE client_name='Hoang Minh Tuan'), (SELECT agent_id FROM agents WHERE agent_name='Pacific Partners'), '2024-11-01', '2044-11-01', 'Active', 100000000),
((SELECT policy_id FROM policies WHERE policy_name='Pet Health Plus'), 'Retirement Shield', (SELECT client_id FROM clients WHERE client_name='Do Quynh Trang'), (SELECT agent_id FROM agents WHERE agent_name='Green Shield Co.'), '2024-12-01', '2049-12-01', 'Pending', 130000000),
((SELECT policy_id FROM policies WHERE policy_name='Cargo Marine Cover'), 'Hospital Income Plan', (SELECT client_id FROM clients WHERE client_name='Ngo Van Son'), (SELECT agent_id FROM agents WHERE agent_name='Safe Future Group'), '2024-03-15', '2034-03-15', 'Completed', 30000000),
((SELECT policy_id FROM policies WHERE policy_name='Loan Safety Flex'), 'Family Protect - Duo', (SELECT client_id FROM clients WHERE client_name='Trinh Thi Ngoc'), (SELECT agent_id FROM agents WHERE agent_name='Reliable Insure'), '2024-04-10', '2040-04-10', 'Active', 110000000),
((SELECT policy_id FROM policies WHERE policy_name='Disaster Recovery Premium'), 'Critical Shield Advance', (SELECT client_id FROM clients WHERE client_name='Bui Van Phuc'), (SELECT agent_id FROM agents WHERE agent_name='Smart Secure'), '2024-05-05', '2035-05-05', 'Pending', 90000000),
((SELECT policy_id FROM policies WHERE policy_name='Anti-Theft Home Cover'), 'Child Future Secure', (SELECT client_id FROM clients WHERE client_name='Dang Mai Lan'), (SELECT agent_id FROM agents WHERE agent_name='Nam A Protect'), '2024-06-06', '2042-06-06', 'Active', 85000000),
((SELECT policy_id FROM policies WHERE policy_name='Critical Life Plan'), 'Income Booster Plan', (SELECT client_id FROM clients WHERE client_name='Pham Anh Tuan'), (SELECT agent_id FROM agents WHERE agent_name='Golden Shield'), '2024-07-07', '2037-07-07', 'Active', 95000000),
((SELECT policy_id FROM policies WHERE policy_name='Work Disability Cover'), 'Health Essential Care', (SELECT client_id FROM clients WHERE client_name='Nguyen Thi Dao'), (SELECT agent_id FROM agents WHERE agent_name='Viet Pro Agency'), '2024-08-08', '2034-08-08', 'Completed', 35000000),
((SELECT policy_id FROM policies WHERE policy_name='Mobile Premium Protection'), 'Life Cover Plus', (SELECT client_id FROM clients WHERE client_name='Le Van Hoang'), (SELECT agent_id FROM agents WHERE agent_name='Sunlife Agency'), '2024-09-09', '2044-09-09', 'Active', 105000000),
((SELECT policy_id FROM policies WHERE policy_name='Appliance Secure'), 'Edu Plan Junior', (SELECT client_id FROM clients WHERE client_name='Tran Thi Yen'), (SELECT agent_id FROM agents WHERE agent_name='Bao An Group'), '2024-10-10', '2041-10-10', 'Pending', 78000000),
((SELECT policy_id FROM policies WHERE policy_name='Funeral Essential Cover'), 'Retirement Investment', (SELECT client_id FROM clients WHERE client_name='Vo Thanh Long'), (SELECT agent_id FROM agents WHERE agent_name='Minh Chau Insure'), '2024-11-11', '2050-11-11', 'Active', 140000000);

-- Additional contracts from user block
INSERT INTO contracts (policy_id, contract_name, client_id, agent_id, start_date, end_date, status, amount)
VALUES
((SELECT policy_id FROM policies WHERE policy_name='Basic Health Insurance'), 'Health Plan Add-on', (SELECT client_id FROM clients WHERE client_name='Tran Thi Hoa'), (SELECT agent_id FROM agents WHERE agent_name='Bac Ha Agency'), '2023-12-15', '2024-12-15', 'Active', 3000000),
((SELECT policy_id FROM policies WHERE policy_name='Personal Life Insurance'), 'Life Cover Premium', (SELECT client_id FROM clients WHERE client_name='Dang Thi Lan'), (SELECT agent_id FROM agents WHERE agent_name='Minh Phat Company'), '2024-01-01', '2024-12-31', 'Active', 10000000),
((SELECT policy_id FROM policies WHERE policy_name='Education Plus'), 'Education Plan Child 2', (SELECT client_id FROM clients WHERE client_name='Vo Nhat Nam'), (SELECT agent_id FROM agents WHERE agent_name='Dong A Agency'), '2024-03-01', '2024-11-01', 'Pending', 5000000);

-- Contract beneficiaries with percentage shares
INSERT INTO contract_beneficiaries (contract_id, beneficiary_id, percentage_share)
VALUES
((SELECT contract_id FROM contracts WHERE contract_name='Motorcycle Insurance'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Tran Thi Hoa'), 60.00),
((SELECT contract_id FROM contracts WHERE contract_name='Motorcycle Insurance'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Tran Van An'), 40.00),
((SELECT contract_id FROM contracts WHERE contract_name='Critical Illness Plus'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Thi Duyen'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Health Secure Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Pham Van Dat'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='Health Secure Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Le Thi Hoa'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='Edu Save - Child Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Pham Minh Chau'), 60.00),
((SELECT contract_id FROM contracts WHERE contract_name='Edu Save - Child Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Van Nam'), 40.00),
((SELECT contract_id FROM contracts WHERE contract_name='Life Investment Link'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Thi Lan'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Hospital Cash - Basic'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Vo Thi Mai'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='Hospital Cash - Basic'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Tran Van Minh'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='Savings for Retirement'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Pham Thi Bich'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Income Protection Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Le Thi Dao'), 60.00),
((SELECT contract_id FROM contracts WHERE contract_name='Income Protection Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Le Van Bao'), 40.00),
((SELECT contract_id FROM contracts WHERE contract_name='LifeCare Premier'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Tran Minh Anh'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Child Education Fund'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Dinh Tu'), 70.00),
((SELECT contract_id FROM contracts WHERE contract_name='Child Education Fund'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Thi Mai'), 30.00),
((SELECT contract_id FROM contracts WHERE contract_name='HealthPlus Max'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Pham Nhu Quynh'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='HealthPlus Max'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Pham Van Nhat'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='Life Assurance Flexi'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Dang Bao Ha'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Retirement Shield'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Huu Toan'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Hospital Income Plan'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Hoang My Linh'), 100.00),
((SELECT contract_id FROM contracts WHERE contract_name='Family Protect - Duo'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Tran Duc Huy'), 60.00),
((SELECT contract_id FROM contracts WHERE contract_name='Family Protect - Duo'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Tran Minh Chau'), 40.00),
((SELECT contract_id FROM contracts WHERE contract_name='Critical Shield Advance'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Thi Loan'), 50.00),
((SELECT contract_id FROM contracts WHERE contract_name='Critical Shield Advance'), (SELECT beneficiary_id FROM beneficiaries WHERE fullname='Nguyen Tuan Anh'), 50.00);

-- Payments
INSERT INTO payments (agent_id, contract_id, payment_date, payment_amount, payment_method, payment_status)
VALUES
((SELECT agent_id FROM agents WHERE agent_name='Bac Ha Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Motorcycle Insurance'), '2024-01-05', 2000000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Trung Viet Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Critical Illness Plus'), '2024-02-10', 100000000, 'Cash', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Minh Phat Company'), (SELECT contract_id FROM contracts WHERE contract_name='Health Secure Plan'), '2024-03-12', 5000000, 'Bank Transfer', 'Pending'),
((SELECT agent_id FROM agents WHERE agent_name='Dong A Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Edu Save - Child Plan'), '2024-03-17', 10000000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Nam Long Company'), (SELECT contract_id FROM contracts WHERE contract_name='Life Investment Link'), '2024-05-02', 1500000, 'Credit Card', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='An Phat Insurance'), (SELECT contract_id FROM contracts WHERE contract_name='Hospital Cash - Basic'), '2024-01-15', 2000000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Bao Viet Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Savings for Retirement'), '2024-01-20', 8000000, 'Cash', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Viet Tin Services'), (SELECT contract_id FROM contracts WHERE contract_name='Income Protection Plan'), '2024-02-05', 6000000, 'Credit Card', 'Pending'),
((SELECT agent_id FROM agents WHERE agent_name='Hoang Long Company'), (SELECT contract_id FROM contracts WHERE contract_name='LifeCare Premier'), '2024-02-10', 4000000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Trust Insurance'), (SELECT contract_id FROM contracts WHERE contract_name='Child Education Fund'), '2024-02-18', 2500000, 'Cash', 'Pending'),
((SELECT agent_id FROM agents WHERE agent_name='New Life Agency'), (SELECT contract_id FROM contracts WHERE contract_name='HealthPlus Max'), '2024-01-10', 3500000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Pacific Partners'), (SELECT contract_id FROM contracts WHERE contract_name='Life Assurance Flexi'), '2024-03-01', 1000000, 'Credit Card', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Green Shield Co.'), (SELECT contract_id FROM contracts WHERE contract_name='Retirement Shield'), '2024-03-15', 15000000, 'Cash', 'Failed'),
((SELECT agent_id FROM agents WHERE agent_name='Safe Future Group'), (SELECT contract_id FROM contracts WHERE contract_name='Hospital Income Plan'), '2024-04-01', 2000000, 'Bank Transfer', 'Pending'),
((SELECT agent_id FROM agents WHERE agent_name='Reliable Insure'), (SELECT contract_id FROM contracts WHERE contract_name='Family Protect - Duo'), '2024-04-10', 10000000, 'Cash', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Smart Secure'), (SELECT contract_id FROM contracts WHERE contract_name='Critical Shield Advance'), '2024-01-12', 8000000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Nam A Protect'), (SELECT contract_id FROM contracts WHERE contract_name='Child Future Secure'), '2024-02-14', 5000000, 'Credit Card', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Golden Shield'), (SELECT contract_id FROM contracts WHERE contract_name='Income Booster Plan'), '2024-02-20', 800000, 'Cash', 'Pending'),
((SELECT agent_id FROM agents WHERE agent_name='Viet Pro Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Health Essential Care'), '2024-03-03', 1200000, 'Bank Transfer', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Sunlife Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Life Cover Plus'), '2024-03-08', 1800000, 'Cash', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Bao An Group'), (SELECT contract_id FROM contracts WHERE contract_name='Edu Plan Junior'), '2024-03-15', 3500000, 'Credit Card', 'Failed'),
((SELECT agent_id FROM agents WHERE agent_name='Minh Chau Insure'), (SELECT contract_id FROM contracts WHERE contract_name='Retirement Investment'), '2024-04-01', 2000000, 'Bank Transfer', 'Paid');

-- Additional payments
INSERT INTO payments (agent_id, contract_id, payment_date, payment_amount, payment_method, payment_status)
VALUES
((SELECT agent_id FROM agents WHERE agent_name='Bac Ha Agency'), (SELECT contract_id FROM contracts WHERE contract_name='Motorcycle Insurance'), '2024-06-01', 2000000, 'Cash', 'Paid'),
((SELECT agent_id FROM agents WHERE agent_name='Minh Phat Company'), (SELECT contract_id FROM contracts WHERE contract_name='Health Secure Plan'), '2024-07-01', 3000000, 'Bank Transfer', 'Paid');

-- Claims
INSERT INTO claims (contract_id, claim_date, description, claim_amount, status, settlement_amount, resolution_date)
VALUES
((SELECT contract_id FROM contracts WHERE contract_name='Motorcycle Insurance'), '2024-07-20', 'Motorcycle accident', 1000000, 'Approved', 950000, '2024-08-01'),
((SELECT contract_id FROM contracts WHERE contract_name='Critical Illness Plus'), '2024-08-15', 'Life insurance claim', 4000000, 'Pending', NULL, NULL),
((SELECT contract_id FROM contracts WHERE contract_name='Health Secure Plan'), '2024-09-10', 'Home insurance claim', 2500000, 'Approved', 2400000, '2024-09-20'),
((SELECT contract_id FROM contracts WHERE contract_name='Edu Save - Child Plan'), '2024-10-05', 'Medical expense claim', 10000000, 'Rejected', 0, '2024-10-15'),
((SELECT contract_id FROM contracts WHERE contract_name='Life Investment Link'), '2024-11-01', 'Travel cancellation reimbursement', 5000000, 'Approved', 4800000, '2024-11-15'),
((SELECT contract_id FROM contracts WHERE contract_name='Hospital Cash - Basic'), '2024-04-10', 'Car accident damage', 1500000, 'Approved', 1450000, '2024-04-20'),
((SELECT contract_id FROM contracts WHERE contract_name='Savings for Retirement'), '2024-04-15', 'Emergency surgery', 5000000, 'Pending', NULL, NULL),
((SELECT contract_id FROM contracts WHERE contract_name='Income Protection Plan'), '2024-04-18', 'Accident recovery claim', 3000000, 'Approved', 2900000, '2024-04-25'),
((SELECT contract_id FROM contracts WHERE contract_name='LifeCare Premier'), '2024-05-01', 'Business disruption loss', 4000000, 'Rejected', 0, '2024-05-10'),
((SELECT contract_id FROM contracts WHERE contract_name='Child Education Fund'), '2024-05-03', 'Tuition interruption support', 2000000, 'Approved', 1900000, '2024-05-15'),
((SELECT contract_id FROM contracts WHERE contract_name='HealthPlus Max'), '2024-05-07', 'Fire damage reimbursement', 7000000, 'Approved', 6900000, '2024-05-20'),
((SELECT contract_id FROM contracts WHERE contract_name='Life Assurance Flexi'), '2024-05-10', 'Flood damage to crops', 1000000, 'Pending', NULL, NULL),
((SELECT contract_id FROM contracts WHERE contract_name='Retirement Shield'), '2024-05-12', 'Cybersecurity breach loss', 9000000, 'Rejected', 0, '2024-05-25'),
((SELECT contract_id FROM contracts WHERE contract_name='Hospital Income Plan'), '2024-05-15', 'Pet surgery claim', 2000000, 'Approved', 1950000, '2024-05-30'),
((SELECT contract_id FROM contracts WHERE contract_name='Family Protect - Duo'), '2024-05-20', 'Cargo loss in transit', 10000000, 'Approved', 9800000, '2024-06-01'),
((SELECT contract_id FROM contracts WHERE contract_name='Critical Shield Advance'), '2024-06-01', 'Loan default compensation', 8000000, 'Approved', 7900000, '2024-06-10'),
((SELECT contract_id FROM contracts WHERE contract_name='Child Future Secure'), '2024-06-03', 'Natural disaster damage', 5000000, 'Pending', NULL, NULL),
((SELECT contract_id FROM contracts WHERE contract_name='Income Booster Plan'), '2024-06-05', 'Surgical claim', 1000000, 'Approved', 900000, '2024-06-15'),
((SELECT contract_id FROM contracts WHERE contract_name='Health Essential Care'), '2024-06-07', 'Work injury claim', 1200000, 'Approved', 1150000, '2024-06-18'),
((SELECT contract_id FROM contracts WHERE contract_name='Life Cover Plus'), '2024-06-09', 'Device loss claim', 1800000, 'Approved', 1750000, '2024-06-20');

-- Additional claims
INSERT INTO claims (contract_id, claim_date, description, claim_amount, status, settlement_amount, resolution_date)
VALUES
((SELECT contract_id FROM contracts WHERE contract_name='Motorcycle Insurance'), '2024-08-15', 'Follow-up repair cost', 500000, 'Approved', 480000, '2024-08-22'),
((SELECT contract_id FROM contracts WHERE contract_name='Health Secure Plan'), '2024-09-20', 'Additional housing damage', 1200000, 'Pending', NULL, NULL),
((SELECT contract_id FROM contracts WHERE contract_name='Life Investment Link'), '2024-11-20', 'Lost luggage during trip', 1000000, 'Approved', 950000, '2024-11-28');

-- Feedback
INSERT INTO feedback (client_id, feedback_date, rating_star, feedback_type, comments, status, resolved_date)
VALUES
((SELECT client_id FROM clients WHERE client_name='Nguyen Van An'), '2024-01-10', 5, 'Positive', 'Great service', 'Resolved', '2024-01-15'),
((SELECT client_id FROM clients WHERE client_name='Tran Thi Hoa'), '2024-01-12', 4, 'Positive', 'Agent was helpful and professional', 'Resolved', '2024-01-16'),
((SELECT client_id FROM clients WHERE client_name='Nguyen Van An'), '2024-01-20', 3, 'Neutral', 'Late response to inquiry', 'Resolved', '2024-01-25'),
((SELECT client_id FROM clients WHERE client_name='Le Quang Huy'), '2024-02-01', 2, 'Negative', 'Claim processing took too long', 'Pending', NULL),
((SELECT client_id FROM clients WHERE client_name='Pham Minh Tu'), '2024-02-05', 5, 'Positive', 'Online portal is easy to use', 'Resolved', '2024-02-07'),
((SELECT client_id FROM clients WHERE client_name='Dang Thi Lan'), '2024-02-10', 1, 'Negative', 'Unclear terms in policy', 'Resolved', '2024-02-15'),
((SELECT client_id FROM clients WHERE client_name='Hoang Quoc Anh'), '2024-02-12', 4, 'Positive', 'Quick and helpful support', 'Resolved', '2024-02-14'),
((SELECT client_id FROM clients WHERE client_name='Tran Thi Hoa'), '2024-02-20', 2, 'Negative', 'Unexpected charges on premium', 'Pending', NULL),
((SELECT client_id FROM clients WHERE client_name='Vo Nhat Nam'), '2024-03-01', 3, 'Neutral', 'Average service', 'Resolved', '2024-03-05'),
((SELECT client_id FROM clients WHERE client_name='Le Quang Huy'), '2024-03-04', 5, 'Positive', 'Claim settled quickly', 'Resolved', '2024-03-10'),
((SELECT client_id FROM clients WHERE client_name='Nguyen Van An'), '2024-03-10', 1, 'Negative', 'No response from agent', 'Resolved', '2024-03-15'),
((SELECT client_id FROM clients WHERE client_name='Nguyen Tien Dung'), '2024-03-12', 4, 'Positive', 'Efficient communication via email', 'Resolved', '2024-03-14'),
((SELECT client_id FROM clients WHERE client_name='Pham Thi Thanh'), '2024-03-15', 2, 'Negative', 'Inconsistent information provided', 'Pending', NULL),
((SELECT client_id FROM clients WHERE client_name='Tran Van Binh'), '2024-03-18', 5, 'Positive', 'Very satisfied with the overall experience', 'Resolved', '2024-03-20'),
((SELECT client_id FROM clients WHERE client_name='Nguyen Van An'), '2024-04-01', 3, 'Neutral', 'Good, but room for improvement', 'Pending', NULL),
((SELECT client_id FROM clients WHERE client_name='Pham Minh Tu'), '2024-04-05', 5, 'Positive', 'App interface is user-friendly', 'Resolved', '2024-04-06'),
((SELECT client_id FROM clients WHERE client_name='Hoang Quoc Anh'), '2024-04-08', 2, 'Negative', 'Delayed policy activation', 'Pending', NULL),
((SELECT client_id FROM clients WHERE client_name='Nguyen Tien Dung'), '2024-04-10', 3, 'Neutral', 'Expected faster claim updates', 'Resolved', '2024-04-12'),
((SELECT client_id FROM clients WHERE client_name='Tran Van Binh'), '2024-04-12', 4, 'Positive', 'Helpful customer support', 'Resolved', '2024-04-13'),
((SELECT client_id FROM clients WHERE client_name='Vo Nhat Nam'), '2024-04-14', 1, 'Negative', 'Unable to contact agent', 'Pending', NULL);

-- Claim internal staff associations (map by claim date+contract name and staff name)
-- For simplicity map by claim description/contract name and staff by staff_name
INSERT INTO claim_internal_staff (claim_id, staff_id)
SELECT c.claim_id, s.staff_id
FROM claims c JOIN internal_staff s ON s.staff_name = 'Do Hoang Anh'
WHERE c.description = 'Motorcycle accident' AND c.claim_date = '2024-07-20'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Nguyen Thi Hang' WHERE c.description = 'Motorcycle accident' AND c.claim_date = '2024-07-20'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Le Van Minh' WHERE c.description = 'Life insurance claim' AND c.claim_date = '2024-08-15'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Do Hoang Anh' WHERE c.description = 'Home insurance claim' AND c.claim_date = '2024-09-10'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Pham Quoc Bao' WHERE c.description = 'Home insurance claim' AND c.claim_date = '2024-09-10'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Tran Thu Huong' WHERE c.description = 'Medical expense claim' AND c.claim_date = '2024-10-05'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Nguyen Thi Hang' WHERE c.description = 'Travel cancellation reimbursement' AND c.claim_date = '2024-11-01'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Le Van Minh' WHERE c.description = 'Car accident damage' AND c.claim_date = '2024-04-10'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Pham Quoc Bao' WHERE c.description = 'Emergency surgery' AND c.claim_date = '2024-04-15'
UNION ALL
SELECT c.claim_id, s.staff_id FROM claims c JOIN internal_staff s ON s.staff_name = 'Do Hoang Anh' WHERE c.description = 'Accident recovery claim' AND c.claim_date = '2024-04-18';

COMMIT;


