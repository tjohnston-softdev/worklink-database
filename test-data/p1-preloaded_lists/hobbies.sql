USE linkServicesGroup;

INSERT INTO HobbyCategory (hobbyCategoryName) VALUES
('Collecting'), ('Arts & Crafts'), ('Games'), ('Model & Electronic'),
('Sports & Outdoors'), ('Performing Arts'), ('Music'), ('Spiritual & Mental'),
('Food & Drinks'), ('Animals');


INSERT INTO Hobby (hobbyName) VALUES
("Collectables"), ("Memorabilia"), ("Geology"), ("Autographs"), 
("Manga"), ("Trading Cards"), ("Animation"), ("Calligraphy"), ("Pottery"), 
("Fashion Design"), ("Flowers"), ("Graffiti"), ("Knitting"), ("Origami"), 
("Paper Airplanes"), ("Photography"), ("Scrapbooking"), ("Sewing"), ("Tattoos"), 
("Architecture"), ("Candle Making"), ("Crochet"), ("Film Making"), ("Gardening"), 
("Jewellery Making"), ("Painting"), ("Drawing"), ("Paper-Mache"), ("Quilting"), 
("Sculpting"), ("Soap Making"), ("Woodworking"), ("Balloons"), ("Slime"), 
("Arcade Games"), ("Pool / Billiards"), ("Bridge"), ("Card Tricks"), ("Dominoes"), 
("Geocaching"), ("Kites"), ("Mahjong"), ("Table Tennis"), ("Ball and Jacks"), 
("Board Games"), ("Card Games"), ("Chess"), ("Foosball"), ("Puzzles"), 
("Letterboxing"), ("Pinball"), ("Rubik's Cubes"), ("Video Games"), ("Web Design"), 
("Model Kits"), ("Railroading"), ("Miniatures"), ("Automobile Restoration"), ("HAM Radio"), 
("RC Vehicles"), ("Robotics"), ("Dance"), ("Acrobatics"), ("Yoga"), 
("Archery"), ("Badminton"), ("Bodybuilding"), ("Bowling"), ("Boxing"), 
("Cardio"), ("Croquet"), ("Cycling"), ("Diving"), ("Fencing"), 
("Golf"), ("Gymnastics"), ("Horse Riding"), ("Ice Skating"), ("Inline Skating"), 
("Pilates"), ("Running"), ("Shooting"), ("Squash"), ("Swimming"), 
("Tai Chi"), ("Tennis"), ("Triathlons"), ("Backpacking"), ("Birdwatching"), 
("Camping"), ("Fishing"), ("Hiking"), ("Hunting"), ("Kayaks and Canoes"), 
("Mountaineering"), ("Paintball"), ("Parkour"), ("Rock Climbing"), ("RV Travel"), 
("Sailing"), ("Water Skiing"), ("Wakeboarding"), ("Auto Racing"), ("Windsurfing"), 
("Martial Arts"), ("Airplanes"), ("BASE Jumping"), ("Hang Gliding"), ("Sandboarding"), 
("Skateboarding"), ("Snowboarding"), ("Surfing"), ("Motocross"), ("Off-Roading"), 
("AFL / NRL"), ("Soccer"), ("Ballet"), ("Breakdancing"), ("Dancing"), 
("Acting"), ("Live Action Roleplaying"), ("Juggling"), ("Magic"), ("Puppets"), 
("Comedy"), ("Music Composing"), ("DJing"), ("Singing"), ("Rapping"), 
("Music Bands"), ("Musical Instruments"), ("Musicals"), ("Opera"), ("Astronomy"), 
("Genealogy"), ("Languages"), ("Reading"), ("Writing"), ("Poetry"), 
("Astrology"), ("Meditation"), ("Psychic"), ("Cooking"), ("Bartending"), 
("Brewing"), ("Breeding"), ("Pet Mammals"), ("Insects"), ("Reptiles and Snakes"), 
("Fish");


INSERT INTO HobbyGrouping (hobbyID, hobbyCategoryID) VALUES
(1,1), (2,1), (3,1), (4,1), (5,1), (5,2), (6,1), (7,2), (8,2), (9,2), 
(10,2), (11,2), (12,2), (13,2), (14,2), (15,2), (16,2), (17,2), (18,2), (19,2), 
(20,2), (21,2), (22,2), (23,2), (23,6), (24,2), (25,2), (26,2), (27,2), (28,2), 
(29,2), (30,2), (31,2), (32,2), (33,2), (34,2), (35,3), (36,3), (37,3), (38,3), 
(39,3), (40,1), (40,3), (41,2), (41,3), (42,3), (43,3), (44,3), (45,3), (46,3), 
(47,3), (47,8), (48,3), (49,2), (49,3), (50,1), (50,3), (51,3), (52,3), (52,8), 
(53,3), (54,4), (55,4), (56,4), (57,4), (58,4), (59,4), (60,4), (61,4), (62,5), 
(63,5), (64,5), (64,8), (65,5), (66,3), (66,5), (67,5), (68,3), (68,5), (69,5), 
(70,5), (71,3), (71,5), (72,5), (73,5), (74,5), (75,3), (75,5), (76,5), (77,5), 
(78,5), (79,5), (80,5), (81,5), (82,5), (83,3), (83,5), (84,5), (85,5), (85,8), 
(86,3), (86,5), (87,5), (88,5), (89,1), (89,5), (90,5), (91,5), (92,5), (93,5), 
(94,5), (95,5), (96,3), (96,5), (97,5), (98,5), (99,5), (100,5), (101,5), (102,5), 
(103,5), (104,5), (105,5), (106,5), (107,5), (108,5), (109,5), (110,5), (111,5), (112,5), 
(113,5), (114,5), (115,3), (115,5), (116,3), (116,5), (117,6), (118,6), (119,6), (120,6), 
(121,6), (122,6), (123,6), (124,6), (125,6), (126,7), (127,6), (127,7), (128,6), (128,7), 
(129,6), (129,7), (130,6), (130,7), (131,7), (132,6), (132,7), (133,6), (133,7), (134,8), 
(135,8), (136,8), (137,8), (138,8), (139,6), (139,8), (140,8), (141,8), (142,8), (143,9), 
(144,9), (145,2), (145,9), (146,10), (147,10), (148,10), (149,10), (150,1), (150,10);