/*
Navicat MySQL Data Transfer

Source Server         : mysql80
Source Server Version : 80003
Source Host           : localhost:3306
Source Database       : mybookshop

Target Server Type    : MYSQL
Target Server Version : 80003
File Encoding         : 65001

Date: 2020-08-14 11:15:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `book_img` varchar(255) DEFAULT NULL,
  `book_price` double(10,2) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `book_sell` int(11) DEFAULT '0',
  `book_left` int(11) DEFAULT '0',
  `id` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'http://books.toscrape.com/../media/cache/5d/72/5d72709c6a7a9584a4d1cf07648bfce1.jpg', '14.50', 'In Her Wake', '51', '300', '1001');
INSERT INTO `book` VALUES ('2', 'http://books.toscrape.com/../media/cache/5c/c8/5cc8e107246cb478960d4f0aba1e1c8e.jpg', '37.32', 'How Music Works', '0', '970', '1002');
INSERT INTO `book` VALUES ('3', 'http://books.toscrape.com/../media/cache/9f/59/9f59f01fa916a7bb8f0b28a4012179a4.jpg', '30.52', 'Foolproof Preserving: A Guide to Small Batch Jams, Jellies, Pickles, Condiments, and More: A Foolproof Guide to Making Small Batch Jams, Jellies, Pickles, Condiments, and More', '0', '384', '1003');
INSERT INTO `book` VALUES ('4', 'http://books.toscrape.com/../media/cache/9c/2e/9c2e0eb8866b8e3f3b768994fd3d1c1a.jpg', '15.50', 'Chase Me (Paris Nights #2)', '38', '302', '1004');
INSERT INTO `book` VALUES ('5', 'http://books.toscrape.com/../media/cache/44/cc/44ccc99c8f82c33d4f9d2afa4ef25787.jpg', '34.53', 'Black Dust', '3', '601', '1005');
INSERT INTO `book` VALUES ('6', 'http://books.toscrape.com/../media/cache/af/6e/af6e796160fe63e0cf19d44395c7ddf2.jpg', '54.64', 'Birdsong: A Story in Pictures', '0', '92', '1006');
INSERT INTO `book` VALUES ('7', 'http://books.toscrape.com/../media/cache/ef/0b/ef0bed08de4e083dba5e20fdb98d9c36.jpg', '22.50', 'America\'s Cradle of Quarterbacks: Western Pennsylvania\'s Football Factory from Johnny Unitas to Joe Montana', '15', '570', '1007');
INSERT INTO `book` VALUES ('8', 'http://books.toscrape.com/../media/cache/d6/da/d6da0371958068bbaf39ea9c174275cd.jpg', '53.13', 'Aladdin and His Wonderful Lamp', '0', '682', '1008');
INSERT INTO `book` VALUES ('9', 'http://books.toscrape.com/../media/cache/2e/98/2e98c332bf8563b584784971541c4445.jpg', '40.30', 'Worlds Elsewhere: Journeys Around Shakespeare’s Globe', '0', '813', '1009');
INSERT INTO `book` VALUES ('10', 'http://books.toscrape.com/../media/cache/a5/41/a5416b9646aaa7287baa287ec2590270.jpg', '15.20', 'Wall and Piece', '16', '100', '1010');
INSERT INTO `book` VALUES ('11', 'http://books.toscrape.com/../media/cache/0f/7e/0f7ee69495c0df1d35723f012624a9f8.jpg', '17.66', 'The Four Agreements: A Practical Guide to Personal Freedom', '2', '559', '1011');
INSERT INTO `book` VALUES ('12', 'http://books.toscrape.com/../media/cache/38/c5/38c56fba316c07305643a8065269594e.jpg', '31.05', 'The Five Love Languages: How to Express Heartfelt Commitment to Your Mate', '0', '329', '1012');
INSERT INTO `book` VALUES ('13', 'http://books.toscrape.com/../media/cache/5d/7e/5d7ecde8e81513eba8a64c9fe000744b.jpg', '23.82', 'The Elephant Tree', '0', '359', '1013');
INSERT INTO `book` VALUES ('14', 'http://books.toscrape.com/../media/cache/cf/bb/cfbb5e62715c6d888fd07794c9bab5d6.jpg', '36.89', 'The Bear and the Piano', '0', '747', '1014');
INSERT INTO `book` VALUES ('15', 'http://books.toscrape.com/../media/cache/65/71/6571919836ec51ed54f0050c31d8a0cd.jpg', '15.94', 'Sophie\'s World', '0', '857', '1015');
INSERT INTO `book` VALUES ('16', 'http://books.toscrape.com/../media/cache/12/53/1253c21c5ef3c6d075c5fa3f5fecee6a.jpg', '33.29', 'Penny Maybe', '0', '528', '1016');
INSERT INTO `book` VALUES ('17', 'http://books.toscrape.com/../media/cache/f5/88/f5889d038f5d8e949b494d147c2dcf54.jpg', '18.02', 'Maude (1883-1993):She Grew Up with the country', '0', '163', '1017');
INSERT INTO `book` VALUES ('18', 'http://books.toscrape.com/../media/cache/23/85/238570a1c284e730dbc737a7e631ae2b.jpg', '19.63', 'In a Dark, Dark Wood', '0', '942', '1018');
INSERT INTO `book` VALUES ('19', 'http://books.toscrape.com/../media/cache/e1/5c/e15c289ba58cea38519e1281e859f0c1.jpg', '52.22', 'Behind Closed Doors', '0', '303', '1019');
INSERT INTO `book` VALUES ('20', 'http://books.toscrape.com/../media/cache/e9/20/e9203b733126c4a0832a1c7885dc27cf.jpg', '33.63', 'You can\'t bury them all: Poems', '0', '86', '1020');
INSERT INTO `book` VALUES ('21', 'http://books.toscrape.com/../media/cache/72/41/72417db983862010ef0c1a25de98c7d7.jpg', '57.31', 'Slow States of Collapse: Poems', '0', '145', '1021');
INSERT INTO `book` VALUES ('22', 'http://books.toscrape.com/../media/cache/cb/bd/cbbdb0222ee8a0f6ab61657412a15794.jpg', '26.41', 'Reasons to Stay Alive', '0', '825', '1022');
INSERT INTO `book` VALUES ('23', 'http://books.toscrape.com/../media/cache/9d/05/9d0533bae1578846d728a82913b95c26.jpg', '47.61', 'Private Paris (Private #10)', '3', '734', '1023');
INSERT INTO `book` VALUES ('24', 'http://books.toscrape.com/../media/cache/9c/46/9c463c7631c82401160fd3b554b8f0e1.jpg', '23.11', '#HigherSelfie: Wake Up Your Life. Free Your Soul. Find Your Tribe.', '0', '154', '1024');
INSERT INTO `book` VALUES ('25', 'http://books.toscrape.com/../media/cache/24/e2/24e2f5c9d325c4004d8190c054da86dd.jpg', '45.07', 'Without Borders (Wanderlove #1)', '0', '974', '1025');
INSERT INTO `book` VALUES ('26', 'http://books.toscrape.com/../media/cache/08/04/08044269fc197645268a6197c57e6173.jpg', '31.77', 'When We Collided', '0', '308', '1026');
INSERT INTO `book` VALUES ('27', 'http://books.toscrape.com/../media/cache/5f/15/5f152afdbc42356ecba02f61058a7e5b.jpg', '50.27', 'We Love You, Charlie Freeman', '0', '339', '1027');
INSERT INTO `book` VALUES ('28', 'http://books.toscrape.com/../media/cache/f9/3b/f93b4a650f03a5d21f2436d7813f42c2.jpg', '14.27', 'Untitled Collection: Sabbath Poems 2014', '0', '316', '1028');
INSERT INTO `book` VALUES ('29', 'http://books.toscrape.com/../media/cache/41/a2/41a20f35adf0caea24f208dc01ad7681.jpg', '44.18', 'Unseen City: The Majesty of Pigeons, the Discreet Charm of Snails & Other Wonders of the Urban Wilderness', '0', '829', '1029');
INSERT INTO `book` VALUES ('30', 'http://books.toscrape.com/../media/cache/76/8e/768ea5924ac1ef6297c2be9959c796c2.jpg', '18.78', 'Unicorn Tracks', '0', '452', '1030');
INSERT INTO `book` VALUES ('31', 'http://books.toscrape.com/../media/cache/4a/3b/4a3b055f9e378a95fedbef55e7bab7ce.jpg', '25.52', 'Unbound: How Eight Technologies Made Us Human, Transformed Society, and Brought Our World to the Brink', '0', '869', '1031');
INSERT INTO `book` VALUES ('32', 'http://books.toscrape.com/../media/cache/36/df/36df4caaf1420b1183a8235355d39e69.jpg', '16.28', 'Tsubasa: WoRLD CHRoNiCLE 2 (Tsubasa WoRLD CHRoNiCLE #2)', '0', '331', '1032');
INSERT INTO `book` VALUES ('33', 'http://books.toscrape.com/../media/cache/03/86/038650c9e7517b4baf2a423cd8eed38f.jpg', '31.12', 'Throwing Rocks at the Google Bus: How Growth Became the Enemy of Prosperity', '0', '812', '1033');
INSERT INTO `book` VALUES ('34', 'http://books.toscrape.com/../media/cache/c4/dd/c4ddd9ced89966b0602ec85e00cd5b61.jpg', '19.49', 'This One Summer', '0', '234', '1034');
INSERT INTO `book` VALUES ('35', 'http://books.toscrape.com/../media/cache/c4/0a/c40a64f59e7487b1a80a049f6ceb2ba5.jpg', '17.27', 'Thirst', '0', '370', '1035');
INSERT INTO `book` VALUES ('36', 'http://books.toscrape.com/../media/cache/33/e5/33e507172541628acfd421503196b578.jpg', '19.09', 'The Torch Is Passed: A Harding Family Story', '0', '347', '1036');
INSERT INTO `book` VALUES ('37', 'http://books.toscrape.com/../media/cache/c4/a2/c4a2a1a026c67bcceb5a411c724d7d0c.jpg', '56.13', 'The Secret of Dreadwillow Carse', '0', '948', '1037');
INSERT INTO `book` VALUES ('38', 'http://books.toscrape.com/../media/cache/b7/f4/b7f4843dbe062d44be1ffcfa16b2faa4.jpg', '56.41', 'The Pioneer Woman Cooks: Dinnertime: Comfort Classics, Freezer Food, 16-Minute Meals, and Other Delicious Ways to Solve Supper!', '0', '36', '1038');
INSERT INTO `book` VALUES ('39', 'http://books.toscrape.com/../media/cache/89/b8/89b850edb01851a91f64ba114b96acb6.jpg', '56.50', 'The Past Never Ends', '0', '22', '1039');
INSERT INTO `book` VALUES ('40', 'http://books.toscrape.com/../media/cache/5d/7f/5d7f496cdf5e5962a73ecdcc1505c1d5.jpg', '45.22', 'The Natural History of Us (The Fine Art of Pretending #2)', '0', '270', '1040');
INSERT INTO `book` VALUES ('41', 'http://books.toscrape.com/../media/cache/2c/da/2cdad67c44b002e7ead0cc35693c0e8b.jpg', '51.77', 'A Light in the Attic', '0', '275', '1041');
INSERT INTO `book` VALUES ('42', 'http://books.toscrape.com/../media/cache/26/0c/260c6ae16bce31c8f8c95daddd9f4a1c.jpg', '53.74', 'Tipping the Velvet', '0', '909', '1042');
INSERT INTO `book` VALUES ('43', 'http://books.toscrape.com/../media/cache/3e/ef/3eef99c9d9adef34639f510662022830.jpg', '50.10', 'Soumission', '0', '945', '1043');
INSERT INTO `book` VALUES ('44', 'http://books.toscrape.com/../media/cache/32/51/3251cf3a3412f53f339e42cac2134093.jpg', '47.82', 'Sharp Objects', '0', '964', '1044');
INSERT INTO `book` VALUES ('45', 'http://books.toscrape.com/../media/cache/be/a5/bea5697f2534a2f86a3ef27b5a8c12a6.jpg', '54.23', 'Sapiens: A Brief History of Humankind', '0', '710', '1045');
INSERT INTO `book` VALUES ('46', 'http://books.toscrape.com/../media/cache/68/33/68339b4c9bc034267e1da611ab3b34f8.jpg', '22.65', 'The Requiem Red', '0', '79', '1046');
INSERT INTO `book` VALUES ('47', 'http://books.toscrape.com/../media/cache/92/27/92274a95b7c251fea59a2b8a78275ab4.jpg', '33.34', 'The Dirty Little Secrets of Getting Your Dream Job', '0', '33', '1047');
INSERT INTO `book` VALUES ('48', 'http://books.toscrape.com/../media/cache/3d/54/3d54940e57e662c4dd1f3ff00c78cc64.jpg', '17.93', 'The Coming Woman: A Novel Based on the Life of the Infamous Feminist, Victoria Woodhull', '0', '84', '1048');
INSERT INTO `book` VALUES ('49', 'http://books.toscrape.com/../media/cache/66/88/66883b91f6804b2323c8369331cb7dd1.jpg', '22.60', 'The Boys in the Boat: Nine Americans and Their Epic Quest for Gold at the 1936 Berlin Olympics', '0', '887', '1049');
INSERT INTO `book` VALUES ('50', 'http://books.toscrape.com/../media/cache/58/46/5846057e28022268153beff6d352b06c.jpg', '52.15', 'The Black Maria', '0', '293', '1050');
INSERT INTO `book` VALUES ('51', 'http://books.toscrape.com/../media/cache/be/f4/bef44da28c98f905a3ebec0b87be8530.jpg', '13.99', 'Starving Hearts (Triangular Trade Trilogy, #1)', '0', '253', '1051');
INSERT INTO `book` VALUES ('52', 'http://books.toscrape.com/../media/cache/10/48/1048f63d3b5061cd2f424d20b3f9b666.jpg', '20.66', 'Shakespeare\'s Sonnets', '0', '821', '1052');
INSERT INTO `book` VALUES ('53', 'http://books.toscrape.com/../media/cache/5b/88/5b88c52633f53cacf162c15f4f823153.jpg', '17.46', 'Set Me Free', '0', '796', '1053');
INSERT INTO `book` VALUES ('54', 'http://books.toscrape.com/../media/cache/94/b1/94b1b8b244bce9677c2f29ccc890d4d2.jpg', '52.29', 'Scott Pilgrim\'s Precious Little Life (Scott Pilgrim #1)', '1', '249', '1054');
INSERT INTO `book` VALUES ('55', 'http://books.toscrape.com/../media/cache/81/c4/81c4a973364e17d01f217e1188253d5e.jpg', '35.02', 'Rip it Up and Start Again', '0', '963', '1055');
INSERT INTO `book` VALUES ('56', 'http://books.toscrape.com/../media/cache/54/60/54607fe8945897cdcced0044103b10b6.jpg', '57.25', 'Our Band Could Be Your Life: Scenes from the American Indie Underground, 1981-1991', '0', '67', '1056');
INSERT INTO `book` VALUES ('57', 'http://books.toscrape.com/../media/cache/55/33/553310a7162dfbc2c6d19a84da0df9e1.jpg', '23.88', 'Olio', '0', '108', '1057');
INSERT INTO `book` VALUES ('58', 'http://books.toscrape.com/../media/cache/09/a3/09a3aef48557576e1a85ba7efea8ecb7.jpg', '37.59', 'Mesaerion: The Best Science Fiction Stories 1800-1849', '1', '706', '1058');
INSERT INTO `book` VALUES ('59', 'http://books.toscrape.com/../media/cache/0b/bc/0bbcd0a6f4bcd81ccb1049a52736406e.jpg', '51.33', 'Libertarianism for Beginners', '0', '447', '1059');
INSERT INTO `book` VALUES ('60', 'http://books.toscrape.com/../media/cache/27/a5/27a53d0bb95bdd88288eaf66c9230d7e.jpg', '45.17', 'It\'s Only the Himalayas', '0', '429', '1060');
INSERT INTO `book` VALUES ('61', 'http://books.toscrape.com/../media/cache/f4/79/f479de5f305c2ac0512702cf7155bb74.jpg', '38.16', 'The Nameless City (The Nameless City #1)', '0', '419', '1061');
INSERT INTO `book` VALUES ('62', 'http://books.toscrape.com/../media/cache/dc/44/dc44f8e2aebac48ca8553814d9b021a8.jpg', '54.11', 'The Murder That Never Was (Forensic Instincts #5)', '0', '551', '1062');
INSERT INTO `book` VALUES ('63', 'http://books.toscrape.com/../media/cache/d4/8d/d48d5122a15347e9fe2b15ad354d69bf.jpg', '42.96', 'The Most Perfect Thing: Inside (and Outside) a Bird\'s Egg', '0', '713', '1063');
INSERT INTO `book` VALUES ('64', 'http://books.toscrape.com/../media/cache/f8/6d/f86d08178e3788563ac17be5aefd29f0.jpg', '23.89', 'The Mindfulness and Acceptance Workbook for Anxiety: A Guide to Breaking Free from Anxiety, Phobias, and Worry Using Acceptance and Commitment Therapy', '0', '454', '1064');
INSERT INTO `book` VALUES ('65', 'http://books.toscrape.com/../media/cache/95/64/95647d6a526bf54120b9445e124794e1.jpg', '16.77', 'The Life-Changing Magic of Tidying Up: The Japanese Art of Decluttering and Organizing', '0', '898', '1065');
INSERT INTO `book` VALUES ('66', 'http://books.toscrape.com/../media/cache/75/dc/75dce2f5949b407161f37f0af249b018.jpg', '20.59', 'The Inefficiency Assassin: Time Management Tactics for Working Smarter, Not Longer', '0', '946', '1066');
INSERT INTO `book` VALUES ('67', 'http://books.toscrape.com/../media/cache/64/15/641570cd7e7aded53c7d33d78a9629f1.jpg', '37.13', 'The Gutsy Girl: Escapades for Your Life of Epic Adventure', '0', '156', '1067');
INSERT INTO `book` VALUES ('68', 'http://books.toscrape.com/../media/cache/2e/23/2e236e23ad52aa74505f224f6552eda8.jpg', '56.06', 'The Electric Pencil: Drawings from Inside State Hospital No. 3', '0', '969', '1068');
INSERT INTO `book` VALUES ('69', 'http://books.toscrape.com/../media/cache/71/df/71df730cf38c232ee58a2e407135f055.jpg', '58.11', 'The Death of Humanity: and the Case for Life', '0', '451', '1069');
INSERT INTO `book` VALUES ('70', 'http://books.toscrape.com/../media/cache/ee/3e/ee3e219d23e73ba71c79b700f183aaed.jpg', '49.05', 'The Bulletproof Diet: Lose up to a Pound a Day, Reclaim Energy and Focus, Upgrade Your Life', '0', '910', '1070');
INSERT INTO `book` VALUES ('71', 'http://books.toscrape.com/../media/cache/70/fa/70fa6c0437d9c97dbeada6bd32bf9d2c.jpg', '40.76', 'The Art Forger', '0', '648', '1071');
INSERT INTO `book` VALUES ('72', 'http://books.toscrape.com/../media/cache/2d/4e/2d4e358712e6c9f1d3bdd78d1a16e5a8.jpg', '19.73', 'The Age of Genius: The Seventeenth Century and the Birth of the Modern Mind', '0', '72', '1072');
INSERT INTO `book` VALUES ('73', 'http://books.toscrape.com/../media/cache/96/db/96db61bb53930c560fb4c1c62b583816.jpg', '32.24', 'The Activist\'s Tao Te Ching: Ancient Advice for a Modern Revolution', '0', '143', '1073');
INSERT INTO `book` VALUES ('74', 'http://books.toscrape.com/../media/cache/f3/4f/f34ffb24cc21c9f9f52dad4fd8f3ac21.jpg', '41.83', 'Spark Joy: An Illustrated Master Class on the Art of Organizing and Tidying Up', '0', '457', '1074');
INSERT INTO `book` VALUES ('75', 'http://books.toscrape.com/../media/cache/69/85/69852567cf97264a1442cbc882c84903.jpg', '39.58', 'Soul Reader', '0', '116', '1075');
INSERT INTO `book` VALUES ('76', 'http://books.toscrape.com/../media/cache/da/df/dadfac66a89774b46b10225362724c83.jpg', '39.25', 'Security', '0', '650', '1076');
INSERT INTO `book` VALUES ('77', 'http://books.toscrape.com/../media/cache/43/ae/43aee83ebb31e2122a7215e413770e5c.jpg', '25.02', 'Saga, Volume 6 (Saga (Collected Editions) #6)', '0', '333', '1077');
INSERT INTO `book` VALUES ('78', 'http://books.toscrape.com/../media/cache/e1/ea/e1ea6cb36e62ae6dc7b805f68ab9a700.jpg', '51.04', 'Saga, Volume 5 (Saga (Collected Editions) #5)', '0', '830', '1078');
INSERT INTO `book` VALUES ('79', 'http://books.toscrape.com/../media/cache/97/f8/97f8debeeaaece9603267653076e760f.jpg', '19.83', 'Reskilling America: Learning to Labor in the Twenty-First Century', '0', '200', '1079');
INSERT INTO `book` VALUES ('80', 'http://books.toscrape.com/../media/cache/f3/ef/f3efd43ae0fa85d9b325d5e8783e7af5.jpg', '50.40', 'Rat Queens, Vol. 3: Demons (Rat Queens (Collected Editions) #11-15)', '0', '321', '1080');
INSERT INTO `book` VALUES ('81', 'http://books.toscrape.com/../media/cache/78/0b/780b2c28122750c2c383846155815bf7.jpg', '13.61', 'Princess Jellyfish 2-in-1 Omnibus, Vol. 01 (Princess Jellyfish 2-in-1 Omnibus #1)', '0', '851', '1081');
INSERT INTO `book` VALUES ('82', 'http://books.toscrape.com/../media/cache/b7/e8/b7e84b78be3d9bb79b71156a5e5d4e42.jpg', '13.34', 'Princess Between Worlds (Wide-Awake Princess #5)', '0', '259', '1082');
INSERT INTO `book` VALUES ('83', 'http://books.toscrape.com/../media/cache/c8/2f/c82f629a31b3f47bdb17ac14aa51076d.jpg', '18.97', 'Pop Gun War, Volume 1: Gift', '0', '888', '1083');
INSERT INTO `book` VALUES ('84', 'http://books.toscrape.com/../media/cache/64/44/6444dacdcb9edaadbbd691524622aeb8.jpg', '36.28', 'Political Suicide: Missteps, Peccadilloes, Bad Calls, Backroom Hijinx, Sordid Pasts, Rotten Breaks, and Just Plain Dumb Mistakes in the Annals of American Politics', '0', '991', '1084');
INSERT INTO `book` VALUES ('85', 'http://books.toscrape.com/../media/cache/01/72/01726c619a05114dca75bd840095016d.jpg', '10.16', 'Patience', '0', '392', '1085');
INSERT INTO `book` VALUES ('86', 'http://books.toscrape.com/../media/cache/cb/00/cb004189f548d75ad430d3ed19e6daa9.jpg', '15.44', 'Outcast, Vol. 1: A Darkness Surrounds Him (Outcast #1)', '0', '505', '1086');
INSERT INTO `book` VALUES ('87', 'http://books.toscrape.com/../media/cache/03/88/03886a8502ca54dbce0d91c2568ab69d.jpg', '48.41', 'orange: The Complete Collection 1 (orange: The Complete Collection #1)', '0', '813', '1087');
INSERT INTO `book` VALUES ('88', 'http://books.toscrape.com/../media/cache/ea/9b/ea9b2cb8abbb317402e618445bade1e1.jpg', '46.35', 'Online Marketing for Busy Authors: A Step-By-Step Guide', '0', '900', '1088');
INSERT INTO `book` VALUES ('89', 'http://books.toscrape.com/../media/cache/a1/14/a114d70e7babf110ba42a389078e9a45.jpg', '14.07', 'On a Midnight Clear', '0', '726', '1089');
INSERT INTO `book` VALUES ('90', 'http://books.toscrape.com/../media/cache/fc/72/fc72f158554b4b4164701e1dfa1153c7.jpg', '14.86', 'Obsidian (Lux #1)', '0', '319', '1090');
INSERT INTO `book` VALUES ('91', 'http://books.toscrape.com/../media/cache/f5/65/f565af3d9dd20a1ad72a1e7c4157387d.jpg', '33.37', 'My Paris Kitchen: Recipes and Stories', '0', '762', '1091');
INSERT INTO `book` VALUES ('92', 'http://books.toscrape.com/../media/cache/ff/e8/ffe81bf98f8386ef29e193abfb6f9c1e.jpg', '56.40', 'Masks and Shadows', '0', '875', '1092');
INSERT INTO `book` VALUES ('93', 'http://books.toscrape.com/../media/cache/10/c6/10c61093002db1fec4089d8076678624.jpg', '14.02', 'Mama Tried: Traditional Italian Cooking for the Screwed, Crude, Vegan, and Tattooed', '0', '169', '1093');
INSERT INTO `book` VALUES ('94', 'http://books.toscrape.com/../media/cache/d3/15/d3158e8d3546fb90cced3c1d44a92a34.jpg', '46.91', 'Lumberjanes, Vol. 2: Friendship to the Max (Lumberjanes #5-8)', '0', '301', '1094');
INSERT INTO `book` VALUES ('95', 'http://books.toscrape.com/../media/cache/7e/a0/7ea062007ef00107e3c16d336b41fab2.jpg', '45.61', 'Lumberjanes, Vol. 1: Beware the Kitten Holy (Lumberjanes #1-4)', '0', '418', '1095');
INSERT INTO `book` VALUES ('96', 'http://books.toscrape.com/../media/cache/5f/b1/5fb1bf88dcfda795606745ce35be5975.jpg', '19.92', 'Lumberjanes Vol. 3: A Terrible Plan (Lumberjanes #9-12)', '0', '645', '1096');
INSERT INTO `book` VALUES ('97', 'http://books.toscrape.com/../media/cache/98/d1/98d1c979c4bac9e147a6718946578b0f.jpg', '40.11', 'Layered: Baking, Building, and Styling Spectacular Cakes', '0', '384', '1097');
INSERT INTO `book` VALUES ('98', 'http://books.toscrape.com/../media/cache/5f/52/5f52b1bc6d45daab2e330c744feb0359.jpg', '53.90', 'Judo: Seven Steps to Black Belt (an Introductory Guide for Beginners)', '0', '898', '1098');
INSERT INTO `book` VALUES ('99', 'http://books.toscrape.com/../media/cache/93/63/9363f0065fbad5689f44fcf6e203eef3.jpg', '35.67', 'Join', '0', '172', '1099');
INSERT INTO `book` VALUES ('100', 'http://books.toscrape.com/../media/cache/fe/ea/feeafd2ad7b3077f8e74cbb1da9e3c7d.jpg', '22.00', 'In the Country We Love: My Family Divided', '0', '779', '1100');
INSERT INTO `book` VALUES ('101', 'http://books.toscrape.com/../media/cache/26/1c/261c4eaf957ae4aacf2229b482e76dbe.jpg', '57.36', 'Immunity: How Elie Metchnikoff Changed the Course of Modern Medicine', '0', '960', '1101');
INSERT INTO `book` VALUES ('102', 'http://books.toscrape.com/../media/cache/aa/74/aa74004807e97a79aa084b5db329a99b.jpg', '29.17', 'I Hate Fairyland, Vol. 1: Madly Ever After (I Hate Fairyland (Compilations) #1-5)', '0', '219', '1102');
INSERT INTO `book` VALUES ('103', 'http://books.toscrape.com/../media/cache/16/d4/16d443437126bf6d536a89312c1995a5.jpg', '54.63', 'I am a Hero Omnibus Volume 1', '0', '575', '1103');
INSERT INTO `book` VALUES ('104', 'http://books.toscrape.com/../media/cache/da/8b/da8bc9b824dd3f446ef63e438ddbfc85.jpg', '46.03', 'How to Be Miserable: 40 Strategies You Already Use', '0', '251', '1104');
INSERT INTO `book` VALUES ('105', 'http://books.toscrape.com/../media/cache/1e/bb/1ebbbc3e2d3249b111033cfc40763b0b.jpg', '33.97', 'Her Backup Boyfriend (The Sorensen Family #1)', '0', '378', '1105');
INSERT INTO `book` VALUES ('106', 'http://books.toscrape.com/../media/cache/90/6f/906f0168b0e155a7077625499b1737b5.jpg', '22.11', 'Giant Days, Vol. 2 (Giant Days #5-8)', '0', '456', '1106');
INSERT INTO `book` VALUES ('107', 'http://books.toscrape.com/../media/cache/d6/58/d658a1485b130ff26ca5fb0d5975ed2e.jpg', '29.69', 'Forever and Forever: The Courtship of Henry Longfellow and Fanny Appleton', '0', '175', '1107');
INSERT INTO `book` VALUES ('108', 'http://books.toscrape.com/../media/cache/c4/d1/c4d1517cc9370e292366b6132ca9ca36.jpg', '15.97', 'First and First (Five Boroughs #3)', '0', '205', '1108');
INSERT INTO `book` VALUES ('109', 'http://books.toscrape.com/../media/cache/cc/bd/ccbdae9e29b3594301528fa2c876ec29.jpg', '21.96', 'Fifty Shades Darker (Fifty Shades #2)', '0', '436', '1109');
INSERT INTO `book` VALUES ('110', 'http://books.toscrape.com/../media/cache/64/94/6494bf61176ca73b61255909230030be.jpg', '54.35', 'Everydata: The Misinformation Hidden in the Little Data You Consume Every Day', '0', '180', '1110');
INSERT INTO `book` VALUES ('111', 'http://books.toscrape.com/../media/cache/95/30/953013d044aa313cc162dec414f3969a.jpg', '37.97', 'Don\'t Be a Jerk: And Other Practical Advice from Dogen, Japan\'s Greatest Zen Master', '0', '702', '1111');
INSERT INTO `book` VALUES ('112', 'http://books.toscrape.com/../media/cache/78/97/7897eea91c4a85aca58d925861d4afec.jpg', '51.99', 'Danganronpa Volume 1', '0', '506', '1112');
INSERT INTO `book` VALUES ('113', 'http://books.toscrape.com/../media/cache/66/25/6625e3bbb050de3e42a0c302c0d69f1f.jpg', '43.29', 'Crown of Midnight (Throne of Glass #2)', '0', '350', '1113');
INSERT INTO `book` VALUES ('114', 'http://books.toscrape.com/../media/cache/f6/88/f688a9d6a89fdf38e4e88439ee9eda69.jpg', '36.72', 'Codename Baboushka, Volume 1: The Conclave of Death', '0', '453', '1114');
INSERT INTO `book` VALUES ('115', 'http://books.toscrape.com/../media/cache/dd/c9/ddc95df6754df8e71bf969c088056188.jpg', '17.08', 'Camp Midnight', '0', '940', '1115');
INSERT INTO `book` VALUES ('116', 'http://books.toscrape.com/../media/cache/88/9e/889e0bac4c7c0e7178f0165b8d3b4617.jpg', '29.14', 'Call the Nurse: True Stories of a Country Nurse on a Scottish Isle', '0', '934', '1116');
INSERT INTO `book` VALUES ('117', 'http://books.toscrape.com/../media/cache/26/95/269507c7bb35d2cec9b61a03d1c28e67.jpg', '28.81', 'Burning', '0', '304', '1117');
INSERT INTO `book` VALUES ('118', 'http://books.toscrape.com/../media/cache/27/d2/27d20361745ec2f7be668b18a4da29da.jpg', '49.46', 'Bossypants', '0', '799', '1118');
INSERT INTO `book` VALUES ('119', 'http://books.toscrape.com/../media/cache/e4/1d/e41d34204a1fffbf825d8beb3dbf4cbc.jpg', '37.92', 'Bitch Planet, Vol. 1: Extraordinary Machine (Bitch Planet (Collected Editions))', '0', '57', '1119');
INSERT INTO `book` VALUES ('120', 'http://books.toscrape.com/../media/cache/06/18/061811c5845d0e13bc04b2a755f0830f.jpg', '28.09', 'Avatar: The Last Airbender: Smoke and Shadow, Part 3 (Smoke and Shadow #3)', '0', '150', '1120');
INSERT INTO `book` VALUES ('121', 'http://books.toscrape.com/../media/cache/23/b4/23b42e094c02d52b14b11a960d49610e.jpg', '30.81', 'Algorithms to Live By: The Computer Science of Human Decisions', '0', '544', '1121');
INSERT INTO `book` VALUES ('122', 'http://books.toscrape.com/../media/cache/78/2e/782e315667ec50759b8603527ee33dec.jpg', '42.95', 'A World of Flavor: Your Gluten Free Passport', '0', '606', '1122');
INSERT INTO `book` VALUES ('123', 'http://books.toscrape.com/../media/cache/08/89/088995e862aac86c88c608d763f6390e.jpg', '56.76', 'A Piece of Sky, a Grain of Rice: A Memoir in Four Meditations', '0', '519', '1123');
INSERT INTO `book` VALUES ('124', 'http://books.toscrape.com/../media/cache/11/aa/11aaad48b5f15e262456ca65294084da.jpg', '16.64', 'A Murder in Time', '0', '666', '1124');
INSERT INTO `book` VALUES ('125', 'http://books.toscrape.com/../media/cache/82/96/8296f92b70fb1dafefecda92c1d51941.jpg', '55.53', 'A Flight of Arrows (The Pathfinders #2)', '0', '469', '1125');
INSERT INTO `book` VALUES ('126', 'http://books.toscrape.com/../media/cache/12/f1/12f1963957f27fa83d51f76b183ef490.jpg', '28.13', 'A Fierce and Subtle Poison', '0', '596', '1126');
INSERT INTO `book` VALUES ('127', 'http://books.toscrape.com/../media/cache/c0/88/c08816960890396213a423941af65b8f.jpg', '52.37', 'A Court of Thorns and Roses (A Court of Thorns and Roses #1)', '0', '900', '1127');
INSERT INTO `book` VALUES ('128', 'http://books.toscrape.com/../media/cache/cd/db/cddb3eb483ef11a088d519205b7098fb.jpg', '54.00', '(Un)Qualified: How God Uses Broken People to Do Big Things', '0', '156', '1128');
INSERT INTO `book` VALUES ('129', 'http://books.toscrape.com/../media/cache/6b/70/6b70f2cdb17d9ab7551240a88b9211fe.jpg', '21.87', 'You Are What You Love: The Spiritual Power of Habit', '0', '685', '1129');
INSERT INTO `book` VALUES ('130', 'http://books.toscrape.com/../media/cache/02/37/0237b445efc18c5562355a5a2c40889c.jpg', '43.30', 'William Shakespeare\'s Star Wars: Verily, A New Hope (William Shakespeare\'s Star Wars #4)', '0', '471', '1130');
INSERT INTO `book` VALUES ('131', 'http://books.toscrape.com/../media/cache/6b/da/6bdae061cb92c32b0b83cda8dd10275d.jpg', '21.04', 'Tuesday Nights in 1980', '0', '861', '1131');
INSERT INTO `book` VALUES ('132', 'http://books.toscrape.com/../media/cache/06/a6/06a6cfcf89afd1601cbba1a16cda57fb.jpg', '41.60', 'Tracing Numbers on a Train', '0', '641', '1132');
INSERT INTO `book` VALUES ('133', 'http://books.toscrape.com/../media/cache/32/d6/32d6aa560e8ddf2a4da1526b95d4c7ab.jpg', '35.07', 'Throne of Glass (Throne of Glass #1)', '0', '683', '1133');
INSERT INTO `book` VALUES ('134', 'http://books.toscrape.com/../media/cache/97/47/974709d437b08e74649b5744471bf472.jpg', '59.64', 'Thomas Jefferson and the Tripoli Pirates: The Forgotten War That Changed American History', '0', '703', '1134');
INSERT INTO `book` VALUES ('135', 'http://books.toscrape.com/../media/cache/8a/83/8a83b6ce350f01bab21f85e6ba539316.jpg', '52.72', 'Thirteen Reasons Why', '0', '730', '1135');
INSERT INTO `book` VALUES ('136', 'http://books.toscrape.com/../media/cache/26/32/2632a1e12f2c085fabbe022ae4cd6933.jpg', '58.08', 'The White Cat and the Monk: A Retelling of the Poem “Pangur Bán”', '0', '141', '1136');
INSERT INTO `book` VALUES ('137', 'http://books.toscrape.com/../media/cache/28/99/28992d89f4abf54fba183fc8d074adf3.jpg', '24.12', 'The Wedding Dress', '0', '437', '1137');
INSERT INTO `book` VALUES ('138', 'http://books.toscrape.com/../media/cache/37/25/372578cc073efae80cf284b56040a488.jpg', '42.15', 'The Vacationers', '0', '522', '1138');
INSERT INTO `book` VALUES ('139', 'http://books.toscrape.com/../media/cache/d0/77/d077a30042df6b916bfc8d257345c69e.jpg', '12.61', 'The Third Wave: An Entrepreneur’s Vision of the Future', '0', '208', '1139');
INSERT INTO `book` VALUES ('140', 'http://books.toscrape.com/../media/cache/ea/04/ea0476a6f4c318ceccf5e2f2b39f2b15.jpg', '17.44', 'The Stranger', '0', '53', '1140');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_privilege` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lzz', '123@qq.com', '111', 'user');
INSERT INTO `user` VALUES ('2', 'lzq', '12345@qq.com', '123', 'user');
INSERT INTO `user` VALUES ('3', '芜湖韩金龙', 'kksk@qq.com', '000', 'user');
INSERT INTO `user` VALUES ('5', '小明', 'asd@qq.com', '000', 'admin');
