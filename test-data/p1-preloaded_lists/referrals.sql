USE linkServicesGroup;

/* Generic sources */
INSERT INTO ReferralSource (referralSourceName, websiteURL, registerTimestamp) VALUES
('Search Engine', ''),
('SEEK', 'https://www.seek.com.au/', '2017-11-02 00:00:00'),
('Indeed', 'https://au.indeed.com/', '2017-11-02 00:00:00'),
('LinkedIn', 'https://au.linkedin.com/', '2017-11-02 00:00:00'),
('JobActive', 'https://jobsearch.gov.au/job/search', '2017-11-02 00:00:00'),
('Facebook', 'https://www.facebook.com/', '2017-11-02 00:00:00'),
('Gumtree', 'https://www.gumtree.com.au/', '2017-11-02 00:00:00'),
('Word of Mouth', 'https://en.wikipedia.org/wiki/Word_of_mouth', '2017-11-02 00:00:00'),
('Snapchat', 'https://www.snapchat.com/', '2017-11-02 00:00:00'),
('Twitter', 'https://twitter.com/', '2017-11-02 00:00:00'),
('Instagram', 'https://www.instagram.com/', '2017-11-02 00:00:00'),
('News Article', '', '2017-11-02 00:00:00'),
('Event', '', '2017-11-02 00:00:00'),
('Advertising', '', '2017-11-02 00:00:00'),
('University', '', '2017-11-02 00:00:00'),
('TAFE', 'https://tafeqld.edu.au/', '2017-11-02 00:00:00'),
('Registered Training Organization', '', '2017-11-02 00:00:00'),
('Other', '', '2017-11-02 00:00:00');

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

