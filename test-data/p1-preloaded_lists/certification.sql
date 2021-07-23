USE linkServicesGroup;

INSERT INTO CheckClearance (checkClearanceName, checkClearanceDesc) VALUES
('Willing to obtain', 'This Support Worker is willing to obtain any checks or clearances necessary for a job role'),
('First Aid', 'This Support Worker has the skills and training required to perform First Aid'),
('Blue Card', 'This Support Worker is suitable for working with children and youth'),
('Criminal History Check', 'This Support Worker has undergone and passed a Criminal History check'),
('Police Check', 'This Support Worker has undergone and passed a Police check'),
('Insurance Check', 'This Support Worker has a required and up-to-date insurance policy'),
('Mental Health', 'This Support Worker has the skills necessary to assist people who are experiencing mental illness'),
('Hand Hygene and Infection Control', 'This Support Worker has knowledge regarding hand hygene practices and preventing the spread of infections'),
('Manual Handling', 'This Support Worker has the formal training and qualification necessary for manual handling and labour tasks'),
('Worker Orientation Module', 'This module is an interactive online course that explains the obligations of workers under the NDIS Code of Conduct.');


INSERT INTO Qualification (qualificationName) VALUES
('Diploma of Community Services Case Management'),
('Diploma of Community Services'),
('Diploma of Youth Work'),
('Diploma of Alcohol Other Drugs'),
('Certificate IV in Disability'),
('Certificate IV in Mental Health'),
('Certificate IV in Youth Work'),
('Certificate IV in Aging Support'),
('Certificate III in Home and Community'),
('Certificate III in Individual Support Services'),
('Certificate III in Aged Care'),
('Certificate III in Disability'),
('Certificate III in Health Services Assistance'),
('Certificate IV in Aged Care'),
('Degree in Nursing'),
('Degree in Allied Health'),
('Certificate IV in Home and Community'),
('Other Relevant Qualifications'),
('Other Relevant Experience');


INSERT INTO ExperienceArea (experienceAreaName) VALUES
("Intellecual"), ("Physical"), ("Acquired Brain Injury"),
("Neurological"), ("Vision"), ("Hearing"),
("Speech"), ("Psychiatric"), ("Developmental Delay");