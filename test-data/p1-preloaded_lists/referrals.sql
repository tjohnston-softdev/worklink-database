USE linkServicesGroup;

/* Generic sources */
INSERT INTO ReferralSource (referralSourceName, websiteURL) VALUES
('Search Engine', ''),
('SEEK', 'https://www.seek.com.au/'),
('Indeed', 'https://au.indeed.com/'),
('LinkedIn', 'https://au.linkedin.com/'),
('JobActive', 'https://jobsearch.gov.au/job/search'),
('Facebook', 'https://www.facebook.com/'),
('Gumtree', 'https://www.gumtree.com.au/'),
('Word of Mouth', 'https://en.wikipedia.org/wiki/Word_of_mouth'),
('Snapchat', 'https://www.snapchat.com/'),
('Twitter', 'https://twitter.com/'),
('Instagram', 'https://www.instagram.com/'),
('News Article', ''),
('Event', ''),
('Advertising', ''),
('University', ''),
('TAFE', 'https://tafeqld.edu.au/'),
('Registered Training Organization', ''),
('Other', '');

/* Companies - Main */
INSERT INTO ReferralSource (referralSourceName, registerTimestamp, websiteURL) VALUES
('Kuhic and Sons', '2019-08-31 07:05:01', 'www.zbreewood0.com.au'),
('Connelly LLC', '2021-02-14 01:24:13', 'www.gcovet1.com.au'),
('Padberg-Fay', '2018-09-14 21:01:31', 'www.cpirrey2.com.au'),
('Reichel LLC', '2019-04-16 01:14:28', 'www.nklimschak3.com.au'),
('Hagenes and Sons', '2021-02-18 11:27:03', 'www.bguiot4.com.au');


/* Companies - Sub */
INSERT INTO ReferralSourceCompany VALUES
(19, '3 Golf View Crossing', 'Zerk Breewood', 'zbreewood0@archive.org', '0495136114', 1);
(20, '66543 Judy Parkway', 'Giselbert Covet', 'gcovet1@blog.com', '0481860838', 1);
(21, '80131 Union Point', 'Currie Pirrey', 'cpirrey2@w3.org', '0459441866', 1);
(22, '8702 Larry Alley', 'Nev Klimschak', 'nklimschak3@sogou.com', '0483342830', 1);
(23, '9987 Ohio Alley', 'Bobbie Guiot', 'bguiot4@reuters.com', '0461739301', 1);

