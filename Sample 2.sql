/* 

I have written the code in MySQL (using PopSQL IDE).

You can also run it in the following browser by simply
selecting MySQL and copy-pasting my code.
https://www.mycompiler.io/

*/

DROP TABLE IF EXISTS Sponsor, Video_sponsor_bridge,
Video, Users, Creators, Consumers, Channel, Keyword, Viewers,
Informational, Entertainment, Comment, Video_statistics, Subscription,
Video_Keyword_bridge;

CREATE TABLE Sponsor (
	sponsor_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	phone VARCHAR(15)
);

CREATE TABLE Users (
	user_id INT PRIMARY KEY,
	name VARCHAR(30),
	country VARCHAR(7),
	age INT,
	user_type VARCHAR(10),
	email VARCHAR(30)
);

CREATE TABLE Channel (
	channel_id INT PRIMARY KEY,
	user_id INT,
	channel_name VARCHAR(50),
	subscriber_count INT,
	date_created DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE);

INSERT INTO Sponsor
(first_name, last_name, phone)
VALUES
('Bruce', 'Wayne', '849-155-1863'),
('Katie', 'Anderson', '946-873-7839'),
('Mike', 'Tyson', '712-723-9369'),
('Peter', 'Parker', '716-568-3476'),
('Jon', 'Snow', '695-913-0996');

INSERT INTO Users
(user_id, name, country, age, user_type, email)
VALUES
(1, 'Marvel Entertainment', 'USA', NULL, 'Creator', 'marvelINCUSA@marvel.com'),
(4, 'Taylor Swift', 'USA', 28, 'Creator', 'tswift@tsfans.com'),
(50, 'Joshia Cressor', 'UK', 38, 'Both', 'jcressorc@dropbox.com'),
(100, 'Salman Khan', 'USA', 42, 'Creator', 'salkhan@khanacademy.com'),
(147, 'Fedora Bennet', 'UK', 38, 'Consumer', 'fbennet0@samsung.com'),
(2, 'Collette Kundt', 'UK', 51, 'Consumer', 'ckundt1@prweb.com'),
(3, 'Clementina Pennicott', 'USA', 55, 'Consumer', 'cpennicott2@wisc.edu'),
(148, 'Tomaso Plesing', 'Germany', 34, 'Consumer', 'tplesing3@indiegogo.com'),
(5, 'Correy Hourihan', 'Germany', 20, 'Consumer', 'chourihan4@ibm.com'),
(6, 'Maddie McGrane', 'UK', 44, 'Consumer', 'mmcgrane5@themeforest.net'),
(7, 'Margarete Sapauton', 'Germany', 34, 'Consumer', 'msapauton6@apache.org'),
(8, 'Vince Bown', 'UK', 46, 'Consumer', 'vbown7@alexa.com'),
(9, 'Anselm Ferminger', 'Germany', 42, 'Consumer', 'aferminger8@auda.org.au'),
(10, 'Dunn Clemmensen', 'UK', 26, 'Consumer', 'dclemmensen9@telegraph.co.uk'),
(11, 'Amargo Milliere', 'USA', 49, 'Consumer', 'amillierea@ted.com'),
(12, 'Lem Tremblay', 'UK', 33, 'Consumer', 'ltremblayb@stumbleupon.com'),
(13, 'Joshia Cressor', 'USA', 18, 'Consumer', 'jcressorc@dropbox.com'),
(14, 'Sebastien Le Cornu', 'Germany', 19, 'Consumer', 'sled@hubpages.com'),
(15, 'Giorgio Braunds', 'Germany', 73, 'Consumer', 'gbraundse@about.me'),
(16, 'Willabella Burk', 'USA', 73, 'Consumer', 'wburkf@deliciousdays.com'),
(17, 'Laraine Juanes', 'UK', 38, 'Consumer', 'ljuanesg@rediff.com'),
(18, 'Flori Wyeld', 'UK', 78, 'Consumer', 'fwyeldh@discuz.net'),
(19, 'Pepito Narramore', 'Germany', 41, 'Consumer', 'pnarramorei@japanpost.jp'),
(20, 'Dani Haith', 'USA', 50, 'Consumer', 'dhaithj@nps.gov'),
(21, 'Rickard Dammarell', 'USA', 53, 'Consumer', 'rdammarellk@ocn.ne.jp'),
(22, 'Eduardo Dibb', 'USA', 36, 'Consumer', 'edibbl@pcworld.com'),
(23, 'Orelee Jenk', 'Germany', 53, 'Consumer', 'ojenkm@networkadvertising.org'),
(24, 'Noel Twell', 'USA', 43, 'Consumer', 'ntwelln@hexun.com'),
(25, 'Modesta Abels', 'USA', 79, 'Consumer', 'mabelso@geocities.com'),
(26, 'Jenine Hannond', 'Germany', 46, 'Consumer', 'jhannondp@toplist.cz'),
(27, 'Muhammad Jay', 'UK', 63, 'Consumer', 'mjayq@delicious.com'),
(28, 'Corella Beaconsall', 'Germany', 38, 'Consumer', 'cbeaconsallr@shutterfly.com'),
(29, 'Aldis Lodwick', 'Germany', 64, 'Consumer', 'alodwicks@spotify.com'),
(30, 'Bevan Gheorghe', 'Germany', 61, 'Consumer', 'bgheorghet@sohu.com'),
(31, 'Jammal Skpsey', 'USA', 48, 'Consumer', 'jskpseyu@umn.edu'),
(32, 'Mariska Duham', 'Germany', 35, 'Consumer', 'mduhamv@yandex.ru'),
(33, 'Gwenette Danne', 'Germany', 74, 'Consumer', 'gdannew@vkontakte.ru'),
(34, 'Elizabet Casey', 'Germany', 72, 'Consumer', 'ecaseyx@tripadvisor.com'),
(35, 'Tedda Ladell', 'USA', 34, 'Consumer', 'tladelly@marketwatch.com'),
(36, 'Meris Persich', 'Germany', 51, 'Consumer', 'mpersichz@bigcartel.com'),
(37, 'Erie Sweetnam', 'UK', 40, 'Consumer', 'esweetnam10@ifeng.com'),
(38, 'Jeremiah Barff', 'USA', 77, 'Consumer', 'jbarff11@mlb.com'),
(39, 'Minnie Roocroft', 'USA', 37, 'Consumer', 'mroocroft12@gizmodo.com'),
(40, 'Farr Coronas', 'UK', 22, 'Consumer', 'fcoronas13@lulu.com'),
(41, 'Morgan Petric', 'USA', 60, 'Consumer', 'mpetric14@cocolog-nifty.com'),
(42, 'Iris Brice', 'USA', 62, 'Consumer', 'ibrice15@smugmug.com'),
(43, 'Adoree Dwight', 'Germany', 33, 'Consumer', 'adwight16@addthis.com'),
(44, 'Xenia Conibeer', 'Germany', 22, 'Consumer', 'xconibeer17@vk.com'),
(45, 'Sharline Scourge', 'UK', 55, 'Consumer', 'sscourge18@google.com.au'),
(46, 'Ethan Rosterne', 'USA', 63, 'Consumer', 'erosterne19@bloglines.com'),
(47, 'Ynes Giottini', 'UK', 34, 'Consumer', 'ygiottini1a@guardian.co.uk'),
(48, 'Kelly Luckwell', 'Germany', 46, 'Consumer', 'kluckwell1b@woothemes.com'),
(49, 'Cissy Clemonts', 'Germany', 20, 'Consumer', 'cclemonts1c@drupal.org'),
(149, 'Gorden Quigg', 'Germany', 72, 'Consumer', 'gquigg1d@friendfeed.com'),
(51, 'Josh Pillington', 'Germany', 23, 'Consumer', 'jpillington1e@drupal.org'),
(52, 'Saundra Crimpe', 'Germany', 30, 'Consumer', 'scrimpe1f@opensource.org'),
(53, 'Marlena Chapling', 'USA', 51, 'Consumer', 'mchapling1g@sohu.com'),
(54, 'Halsey Gumley', 'UK', 28, 'Consumer', 'hgumley1h@chronoengine.com'),
(55, 'Marline Chenery', 'Germany', 33, 'Consumer', 'mchenery1i@forbes.com'),
(56, 'Berkie Holton', 'USA', 49, 'Consumer', 'bholton1j@ucoz.com'),
(57, 'Emlyn MacTrustie', 'USA', 26, 'Consumer', 'emactrustie1k@fema.gov'),
(58, 'Davine Durbyn', 'USA', 36, 'Consumer', 'ddurbyn1l@quantcast.com'),
(59, 'Jacquenetta Biddwell', 'USA', 34, 'Consumer', 'jbiddwell1m@sfgate.com'),
(60, 'Budd Davis', 'USA', 32, 'Consumer', 'bdavis1n@twitpic.com'),
(61, 'Marion Tickel', 'Germany', 79, 'Consumer', 'mtickel1o@cbc.ca'),
(62, 'Moss Gately', 'Germany', 38, 'Consumer', 'mgately1p@vkontakte.ru'),
(63, 'Albie Dadd', 'Germany', 50, 'Consumer', 'adadd1q@cargocollective.com'),
(64, 'Urson Batie', 'Germany', 34, 'Consumer', 'ubatie1r@ucoz.com'),
(65, 'Gerhardt Ravillas', 'UK', 72, 'Consumer', 'gravillas1s@engadget.com'),
(66, 'Jorrie Ethersey', 'USA', 63, 'Consumer', 'jethersey1t@ted.com'),
(67, 'Malinde Kleehuhler', 'USA', 71, 'Consumer', 'mkleehuhler1u@umich.edu'),
(68, 'Bradan Grinov', 'USA', 63, 'Consumer', 'bgrinov1v@ustream.tv'),
(69, 'Othilia Seson', 'UK', 73, 'Consumer', 'oseson1w@1688.com'),
(70, 'Bee Broadway', 'Germany', 44, 'Consumer', 'bbroadway1x@slashdot.org'),
(71, 'Trudi Cordeau', 'USA', 78, 'Consumer', 'tcordeau1y@vistaprint.com'),
(72, 'Dorrie Neaves', 'UK', 71, 'Consumer', 'dneaves1z@thetimes.co.uk'),
(73, 'Etta Lardier', 'Germany', 43, 'Consumer', 'elardier20@github.com'),
(74, 'Antons Danton', 'UK', 25, 'Consumer', 'adanton21@bbb.org'),
(75, 'Rozanne Bouskill', 'Germany', 28, 'Consumer', 'rbouskill22@spiegel.de'),
(76, 'Willard Pashe', 'Germany', 57, 'Consumer', 'wpashe23@newsvine.com'),
(77, 'Jamil Aitchison', 'Germany', 46, 'Consumer', 'jaitchison24@answers.com'),
(78, 'Cullin Kegg', 'Germany', 58, 'Consumer', 'ckegg25@state.tx.us'),
(79, 'Phylis Abdon', 'USA', 35, 'Consumer', 'pabdon26@1688.com'),
(80, 'Iolande Wandrey', 'UK', 68, 'Consumer', 'iwandrey27@usgs.gov'),
(81, 'Stephie Bene', 'Germany', 78, 'Consumer', 'sbene28@answers.com'),
(82, 'Alwyn MacGregor', 'USA', 61, 'Consumer', 'amacgregor29@jiathis.com'),
(83, 'Lorrin Clarson', 'Germany', 55, 'Consumer', 'lclarson2a@ebay.com'),
(84, 'Florie Martijn', 'USA', 54, 'Consumer', 'fmartijn2b@nydailynews.com'),
(85, 'Mitchel Walding', 'UK', 33, 'Consumer', 'mwalding2c@ovh.net'),
(86, 'Noland Baser', 'USA', 29, 'Consumer', 'nbaser2d@xrea.com'),
(87, 'Jeffrey Wrankmore', 'Germany', 21, 'Consumer', 'jwrankmore2e@cafepress.com'),
(88, 'Willard Reaper', 'Germany', 40, 'Consumer', 'wreaper2f@ucoz.ru'),
(89, 'Glyn McKenzie', 'Germany', 39, 'Consumer', 'gmckenzie2g@e-recht24.de'),
(90, 'Ewart Dougher', 'USA', 52, 'Consumer', 'edougher2h@comsenz.com'),
(91, 'Maurine Beavan', 'Germany', 47, 'Consumer', 'mbeavan2i@economist.com'),
(92, 'Reagan Connal', 'USA', 79, 'Consumer', 'rconnal2j@delicious.com'),
(93, 'Harmony Hasell', 'USA', 72, 'Consumer', 'hhasell2k@yahoo.com'),
(94, 'Kimbra Pridding', 'USA', 56, 'Consumer', 'kpridding2l@booking.com'),
(95, 'Curr Spillane', 'Germany', 65, 'Consumer', 'cspillane2m@typepad.com'),
(96, 'Allison Sign', 'USA', 77, 'Consumer', 'asign2n@ning.com'),
(97, 'Ambrose Skey', 'Germany', 52, 'Consumer', 'askey2o@facebook.com'),
(98, 'Neil Tombs', 'USA', 47, 'Consumer', 'ntombs2p@ucsd.edu'),
(99, 'Pinchas Crankshaw', 'Germany', 50, 'Consumer', 'pcrankshaw2q@businesswire.com'),
(150, 'Deb Pepler', 'UK', 71, 'Consumer', 'dpepler2r@usa.gov'),
(101, 'Sanson Chatelet', 'Germany', 29, 'Consumer', 'schatelet2s@friendfeed.com'),
(102, 'Brittni Ottawell', 'Germany', 54, 'Consumer', 'bottawell2t@reverbnation.com'),
(103, 'Stearne Kyrkeman', 'UK', 41, 'Consumer', 'skyrkeman2u@yolasite.com'),
(104, 'Ophelie Messenbird', 'Germany', 68, 'Consumer', 'omessenbird2v@fastcomany.com'),
(105, 'Wyatan Martina', 'UK', 22, 'Consumer', 'wmartina2w@deliciousdays.com'),
(106, 'Jakie Leddie', 'UK', 48, 'Consumer', 'jleddie2x@xinhuanet.com'),
(107, 'Darcy Dytham', 'USA', 54, 'Consumer', 'ddytham2y@angelfire.com'),
(108, 'Manny Beminster', 'USA', 62, 'Consumer', 'mbeminster2z@privacy.gov.au'),
(109, 'Ashton Barbosa', 'USA', 30, 'Consumer', 'abarbosa30@artisteer.com'),
(110, 'Willa Kulis', 'UK', 77, 'Consumer', 'wkulis31@skype.com'),
(111, 'Patsy Fawthrop', 'USA', 60, 'Consumer', 'pfawthrop32@patch.com'),
(112, 'John Sawbridge', 'USA', 32, 'Consumer', 'jsawbridge33@mtv.com'),
(113, 'Electra Byer', 'USA', 20, 'Consumer', 'ebyer34@mit.edu'),
(114, 'Sarina Pudan', 'USA', 23, 'Consumer', 'spudan35@liveinternet.ru'),
(115, 'Andres Renouf', 'Germany', 52, 'Consumer', 'arenouf36@mit.edu'),
(116, 'Tedra Lille', 'Germany', 24, 'Consumer', 'tlille37@vk.com'),
(117, 'Nannette Devaney', 'USA', 31, 'Consumer', 'ndevaney38@nytimes.com'),
(118, 'Horst Eglin', 'USA', 28, 'Consumer', 'heglin39@howstuffworks.com'),
(119, 'Shanan Pylkynyton', 'UK', 37, 'Consumer', 'spylkynyton3a@ted.com'),
(120, 'Cass Hazeldene', 'USA', 74, 'Consumer', 'chazeldene3b@fema.gov'),
(121, 'Shara Riatt', 'UK', 34, 'Consumer', 'sriatt3c@whitehouse.gov'),
(122, 'Arin Stammer', 'USA', 52, 'Consumer', 'astammer3d@bloglines.com'),
(123, 'Lombard Cuesta', 'UK', 80, 'Consumer', 'lcuesta3e@dedecms.com'),
(124, 'Elsey Bromidge', 'Germany', 32, 'Consumer', 'ebromidge3f@booking.com'),
(125, 'Raoul Fake', 'USA', 51, 'Consumer', 'rfake3g@squarespace.com'),
(126, 'Ulric McGowan', 'USA', 78, 'Consumer', 'umcgowan3h@addtoany.com'),
(127, 'Cammie Scoines', 'Germany', 79, 'Consumer', 'cscoines3i@mapquest.com'),
(128, 'Derward Ausher', 'Germany', 50, 'Consumer', 'dausher3j@jugem.jp'),
(129, 'Iggy Casebourne', 'UK', 26, 'Consumer', 'icasebourne3k@kickstarter.com'),
(130, 'Danya Elix', 'Germany', 42, 'Consumer', 'delix3l@dropbox.com'),
(131, 'Madelle Ambroz', 'USA', 68, 'Consumer', 'mambroz3m@answers.com'),
(132, 'Levy Poltun', 'Germany', 25, 'Consumer', 'lpoltun3n@squidoo.com'),
(133, 'Alex Purse', 'UK', 68, 'Consumer', 'apurse3o@earthlink.net'),
(134, 'Gavra Tuminelli', 'USA', 78, 'Consumer', 'gtuminelli3p@bloomberg.com'),
(135, 'Schuyler Abelov', 'UK', 25, 'Consumer', 'sabelov3q@accuweather.com'),
(136, 'Prent Kenwood', 'UK', 33, 'Consumer', 'pkenwood3r@google.ru'),
(137, 'Neely Dundin', 'Germany', 59, 'Consumer', 'ndundin3s@walmart.com'),
(138, 'Fitz Portman', 'Germany', 55, 'Consumer', 'fportman3t@creativecommons.org'),
(139, 'Wren Dillestone', 'Germany', 62, 'Consumer', 'wdillestone3u@nymag.com'),
(140, 'Samuele Dampier', 'Germany', 61, 'Consumer', 'sdampier3v@walmart.com'),
(141, 'Ike Clipston', 'UK', 54, 'Consumer', 'iclipston3w@abc.net.au'),
(142, 'Skelly Yon', 'Germany', 76, 'Consumer', 'syon3x@blog.com'),
(143, 'Fayth Nutter', 'UK', 58, 'Consumer', 'fnutter3y@icio.us'),
(144, 'Glen Tumbridge', 'Germany', 18, 'Consumer', 'gtumbridge3z@a8.net'),
(145, 'Sheelah Applegate', 'Germany', 45, 'Consumer', 'sapplegate40@nasa.gov'),
(146, 'Arda Aikenhead', 'USA', 66, 'Consumer', 'aaikenhead41@admin.ch');

INSERT INTO Channel
(channel_id, user_id, channel_name, subscriber_count, date_created)
VALUES 
(1, 4, 'Taylor Swift Official', 35, '2023/01/01'),
(2, 1, 'Avengers', 105, '2023/01/01'),
(3, 100, 'Khan Academy', 27, '2023/01/28'),
(4, 1, 'Dr. Strange', 25, '2023/01/01'),
(5, 50, 'Mr Blue', 15, '2023/02/13');


CREATE TABLE Creators AS 
SELECT * FROM Users 
WHERE user_type = 'Creator' OR user_type = 'Both';

ALTER TABLE Creators
ADD PRIMARY KEY (user_id);

ALTER TABLE Creators
ADD FOREIGN KEY (user_id)
REFERENCES Users (user_id);

CREATE TABLE Consumers AS 
SELECT * FROM Users 
WHERE user_type = 'Consumer';

ALTER TABLE Consumers
ADD PRIMARY KEY (user_id);

ALTER TABLE Consumers
ADD FOREIGN KEY (user_id)
REFERENCES Users (user_id);

CREATE TABLE Subscription (
	subscription_id INT PRIMARY KEY AUTO_INCREMENT,
	channel_id INT,
	consumer_id INT,
	subscription_type VARCHAR(4),
    FOREIGN KEY(channel_id) REFERENCES Channel(channel_id) ON DELETE CASCADE,
    FOREIGN KEY(consumer_id) REFERENCES Consumers(user_id) ON DELETE CASCADE
);
CREATE TABLE Video (
	video_id INT PRIMARY KEY AUTO_INCREMENT,
	channel_id INT,
    creator_id INT,
	video_title VARCHAR(20),
	upload_date DATE,
	video_type VARCHAR(13),
    FOREIGN KEY(channel_id) REFERENCES Channel(channel_id) ON DELETE CASCADE,
    FOREIGN KEY(creator_id) REFERENCES Creators(user_id) ON DELETE CASCADE);

INSERT INTO Video
(channel_id, creator_id, video_title, upload_date, video_type)
VALUES 
(3,100, 'learn sql', '2023/2/20 ', 'informational'),
(1,4, 'Faded', '2023/1/21', 'entertainment'),
(1,4, 'Romance', '2023/2/22 ', 'entertainment'),
(2,1, 'Future-proofed', '2023/2/26 ', 'entertainment'),
(5,50, 'parallelism', '2023/1/17 ', 'informational'),
(5,50, 'geographical facts', '2023/2/18 ', 'informational'),
(1,4, 'Friday', '2023/1/9 ', 'entertainment'),
(5,50, 'Organic', '2023/1/21 ', 'informational'),
(4,1, 'Stranger things', '2023/1/1 ', 'entertainment'),
(4,1,'infinite framework', '2023/1/8 ', 'entertainment'),
(2,1, 'Visionary', '2023/1/15 ', 'entertainment'),
(5,50, 'functionalities', '2023/1/27 ', 'informational'),
(2,1, 'interactive', '2023/1/22 ', 'entertainment'),
(3,100, 'taylor series', '2023/1/13 ', 'informational'),
(1,4, 'Virtual love', '2023/1/1 ', 'entertainment'),
(2,1, 'empowering', '2023/1/29 ', 'entertainment'),
(4,1, 'challenge accepted', '2023/2/5 ', 'entertainment'),
(4,1, 'orchestration', '2023/2/12 ', 'entertainment'),
(2,1, 'damage maximized', '2023/2/19 ', 'entertainment'),
(4,1, 'Thanos madness', '2023/3/6', 'entertainment'),
(4,1, 'End is near', '2023/3/14', 'entertainment'),
(2,1, 'All in', '2023/3/19', 'entertainment'),
(2,1, 'flexibility', '2023/1/4', 'entertainment'),
(4,1, 'Customizable', '2023/1/11', 'entertainment'),
(2,1, 'wrong direction', '2023/1/18', 'entertainment'),
(4,1, 'forecast', '2023/1/25', 'entertainment'),
(2,1, 'Marvel madness', '2023/2/1', 'entertainment'),
(4,1, 'collaboration', '2023/2/8', 'entertainment'),
(4,1, 'Unforgiven', '2023/2/15', 'entertainment'),
(4,1, 'task-force 45', '2023/2/22', 'entertainment'),
(2,1, 'Reduced strength', '2023/3/1', 'entertainment'),
(4,1, 'Triple-buffered', '2023/3/10', 'entertainment');

CREATE TABLE Informational AS
SELECT * FROM Video
WHERE Video_type = 'informational';

ALTER TABLE Informational
ADD PRIMARY KEY (video_id);

ALTER TABLE Informational
ADD FOREIGN KEY (video_id)
REFERENCES Video (video_id);

CREATE TABLE Entertainment AS
SELECT * FROM Video
WHERE Video_type = 'entertainment';

ALTER TABLE Entertainment
ADD PRIMARY KEY (video_id);

ALTER TABLE Entertainment
ADD FOREIGN KEY (video_id)
REFERENCES Video (video_id);

CREATE TABLE Video_sponsor_bridge (
	video_id INT,
	sponsor_id INT,
	sponsed_amount DECIMAL(10,2),
	PRIMARY KEY(video_id,sponsor_id),
    FOREIGN KEY (video_id) REFERENCES Video(video_id) ON DELETE CASCADE,
    FOREIGN KEY (sponsor_id) REFERENCES Sponsor(sponsor_id) ON DELETE CASCADE
);

CREATE TABLE Comment(
	comment_id INT PRIMARY KEY AUTO_INCREMENT,
	video_id INT,
    user_id INT,
	likes INT,
	sentiment INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (video_id) REFERENCES Video(video_id) ON DELETE CASCADE);

CREATE TABLE Video_statistics(
	video_id INT PRIMARY KEY AUTO_INCREMENT,
    view_count INT,
	likes INT,
	dislikes INT,
	num_comments INT,
    FOREIGN KEY (video_id) REFERENCES Video(video_id) ON DELETE CASCADE);

INSERT INTO Video_sponsor_bridge
(video_id, sponsor_id, sponsed_amount)
VALUES
(13, 1, 1000),
(7, 1, 2000),
(20, 1, 3000),
(14, 1, 500),
(10, 2, 1200),
(9, 5, 2000),
(1, 3, 3500),
(5, 3, 1200),
(4, 4, 6600),
(14, 5, 20000),
(20, 4, 35000),
(2, 4, 2000),
(4, 2, 12000),
(18, 1, 1500),
(3, 4, 5000),
(19, 1, 10000),
(12, 5, 22000),
(12, 4, 10000),
(11, 1, 2000),
(11, 3, 4000),
(4, 1, 130500),
(3, 1, 34000),
(2, 3, 2800),
(18, 2, 1300),
(2, 2, 170000);

INSERT INTO Comment
(video_id, user_id, likes, sentiment)
VALUES
(19, 28, 35, 9),
(11, 50, 47, 9),
(4, 33, 28, 2),
(7, 65, 145, 3),
(7, 146, 69, 6),
(7, 90, 77, 6),
(15, 8, 43, 1),
(15, 101, 71, 2),
(6, 91, 139, 10),
(21, 80, 25, 3),
(16, 13, 37, 9),
(7, 43, 22, 8),
(7, 3, 141, 8),
(23, 142, 97, 8),
(2, 5, 54, 2),
(18, 18, 77, 5),
(10, 61, 120, 7),
(4, 100, 108, 3),
(23, 70, 70, 5),
(23, 76, 90, 6),
(14, 131, 92, 6),
(10, 55, 76, 8),
(16, 3, 121, 6),
(29, 65, 141, 4),
(25, 9, 60, 2),
(13, 113, 57, 5),
(20, 83, 115, 1),
(17, 79, 100, 6),
(10, 60, 36, 6),
(22, 111, 14, 5),
(32, 128, 149, 4),
(27, 115, 91, 4),
(25, 16, 94, 3),
(23, 84, 89, 9),
(31, 14, 145, 9),
(8, 149, 86, 5),
(13, 57, 73, 4),
(28, 91, 17, 8),
(10, 110, 146, 8),
(24, 81, 111, 2),
(28, 112, 107, 8),
(20, 21, 74, 7),
(3, 8, 138, 4),
(20, 10, 43, 10),
(22, 57, 20, 5),
(27, 147, 101, 9),
(11, 92, 16, 1),
(19, 53, 48, 8),
(19, 36, 67, 1),
(24, 112, 60, 7),
(13, 61, 49, 4),
(11, 101, 119, 8),
(1, 101, 63, 7),
(15, 129, 59, 8),
(15, 149, 114, 9),
(24, 61, 27, 10),
(22, 23, 94, 1),
(12, 21, 10, 9),
(24, 13, 22, 8),
(22, 73, 10, 2),
(8, 4, 83, 4),
(14, 40, 133, 8),
(11, 124, 31, 7),
(13, 123, 33, 6),
(23, 17, 31, 2),
(5, 38, 61, 8),
(11, 83, 44, 7),
(14, 89, 6, 8),
(1, 4, 29, 3),
(29, 123, 25, 6),
(22, 146, 141, 10),
(17, 23, 54, 5),
(29, 150, 49, 7),
(2, 51, 119, 7),
(24, 4, 22, 1),
(11, 128, 37, 9),
(4, 140, 150, 4),
(20, 61, 69, 9),
(1, 48, 120, 4),
(28, 118, 95, 7),
(27, 139, 148, 8),
(12, 99, 21, 3),
(28, 43, 129, 7),
(17, 142, 34, 2),
(23, 47, 73, 10),
(32, 109, 82, 5),
(4, 136, 133, 6),
(7, 140, 120, 4),
(20, 31, 101, 6),
(30, 119, 2, 10),
(11, 35, 49, 9),
(32, 90, 15, 3),
(11, 27, 134, 9),
(4, 76, 124, 10),
(32, 148, 110, 10),
(25, 148, 57, 7),
(12, 42, 49, 2),
(26, 20, 145, 2),
(13, 59, 47, 8),
(27, 54, 92, 6),
(13, 40, 59, 6),
(15, 98, 89, 5),
(9, 131, 7, 9),
(12, 127, 53, 1),
(18, 17, 137, 5),
(14, 7, 85, 1),
(4, 8, 11, 2),
(1, 107, 94, 5),
(22, 145, 8, 9),
(31, 78, 21, 4),
(32, 139, 38, 1),
(8, 82, 13, 9),
(24, 82, 118, 3),
(30, 7, 57, 2),
(17, 64, 12, 10),
(9, 4, 26, 7),
(6, 145, 114, 5),
(22, 82, 43, 8),
(12, 111, 13, 8),
(15, 132, 97, 2),
(17, 28, 38, 5),
(17, 14, 117, 1),
(28, 42, 63, 4),
(8, 10, 126, 2),
(19, 114, 66, 1),
(14, 82, 23, 5),
(8, 56, 136, 8),
(28, 52, 73, 7),
(21, 76, 66, 9),
(1, 38, 100, 5),
(14, 27, 150, 3),
(21, 40, 95, 5),
(15, 10, 7, 5),
(32, 12, 66, 7),
(16, 73, 132, 8),
(27, 12, 53, 5),
(32, 31, 58, 5),
(16, 138, 48, 8),
(18, 137, 36, 4),
(4, 6, 1, 10),
(5, 95, 126, 7),
(23, 145, 119, 5),
(12, 76, 120, 7),
(15, 102, 118, 1),
(32, 76, 114, 8),
(15, 75, 133, 7),
(1, 138, 18, 4),
(30, 117, 131, 5),
(7, 72, 62, 5),
(19, 27, 44, 5),
(29, 23, 107, 10),
(15, 115, 124, 2),
(4, 78, 26, 1),
(16, 66, 99, 1),
(5, 138, 34, 4),
(20, 34, 89, 8),
(9, 38, 148, 8),
(29, 93, 114, 10),
(5, 64, 97, 1),
(23, 89, 107, 1),
(11, 106, 38, 7),
(17, 38, 126, 10),
(24, 50, 30, 3),
(18, 10, 47, 8),
(13, 85, 53, 4),
(9, 62, 103, 4),
(3, 93, 32, 4),
(6, 10, 36, 2),
(12, 72, 45, 9),
(10, 21, 97, 5),
(2, 24, 2, 3),
(24, 111, 21, 7),
(24, 79, 122, 8),
(28, 103, 131, 8),
(24, 27, 16, 10),
(21, 78, 56, 10),
(1, 97, 40, 5),
(11, 97, 67, 5),
(32, 91, 95, 5),
(23, 53, 150, 2),
(29, 47, 4, 6),
(19, 71, 128, 5),
(29, 11, 75, 4),
(25, 135, 20, 10),
(1, 103, 99, 4),
(9, 102, 95, 8),
(12, 122, 119, 6),
(12, 1, 50, 10),
(24, 99, 85, 5),
(23, 95, 59, 6),
(2, 144, 138, 9),
(19, 111, 90, 2),
(32, 138, 136, 4),
(27, 117, 38, 1),
(29, 130, 57, 2),
(30, 43, 89, 2),
(29, 54, 45, 6),
(20, 16, 121, 7),
(10, 2, 22, 2),
(16, 16, 124, 4),
(19, 87, 49, 7),
(17, 110, 77, 3),
(12, 132, 52, 7),
(19, 87, 64, 4),
(2, 100, 10, 4),
(15, 72, 7, 9),
(18, 141, 110, 6),
(5, 129, 21, 8),
(6, 118, 54, 9),
(24, 40, 114, 4),
(32, 5, 114, 4),
(6, 73, 74, 2),
(19, 66, 84, 2),
(30, 79, 71, 3),
(1, 97, 81, 8),
(29, 135, 47, 3),
(14, 62, 11, 4),
(9, 65, 74, 7),
(27, 89, 25, 5),
(10, 75, 18, 7),
(6, 116, 37, 8),
(16, 56, 40, 2),
(32, 26, 39, 10),
(13, 131, 27, 1),
(29, 56, 22, 6),
(26, 10, 135, 10),
(3, 40, 124, 5),
(18, 64, 85, 7),
(22, 70, 74, 4),
(16, 35, 47, 8),
(13, 125, 83, 3),
(26, 68, 32, 6),
(20, 146, 42, 1),
(1, 48, 6, 5),
(7, 74, 96, 1),
(18, 92, 77, 2),
(27, 1, 23, 8),
(5, 103, 43, 2),
(19, 2, 99, 6),
(30, 16, 19, 9),
(13, 99, 16, 9),
(1, 32, 121, 10),
(4, 35, 142, 2),
(6, 20, 93, 2),
(13, 6, 88, 1),
(26, 59, 84, 8),
(16, 26, 14, 4),
(19, 46, 141, 3),
(22, 78, 130, 10),
(4, 93, 25, 4),
(24, 50, 32, 2),
(13, 89, 88, 1),
(15, 61, 92, 4),
(2, 102, 86, 2),
(2, 36, 60, 2),
(9, 99, 127, 6),
(20, 72, 150, 4),
(6, 28, 104, 2),
(23, 137, 61, 9),
(2, 118, 20, 2),
(15, 11, 125, 2),
(14, 62, 75, 5),
(10, 114, 73, 10),
(18, 11, 112, 7),
(7, 74, 96, 5),
(3, 106, 86, 9),
(26, 25, 63, 6),
(14, 11, 116, 1),
(27, 109, 24, 3),
(13, 51, 6, 2),
(9, 147, 68, 8),
(31, 27, 112, 2),
(26, 2, 23, 6),
(13, 87, 16, 5),
(12, 50, 104, 6),
(2, 125, 14, 4),
(8, 148, 142, 8),
(16, 34, 77, 4),
(32, 46, 110, 4),
(3, 6, 100, 9),
(13, 102, 80, 3),
(14, 112, 27, 3),
(7, 49, 12, 1),
(23, 45, 46, 1),
(3, 134, 4, 10),
(22, 94, 3, 7),
(19, 12, 28, 6),
(23, 17, 99, 3),
(24, 113, 77, 10),
(12, 64, 56, 8),
(31, 92, 127, 4),
(12, 99, 85, 4),
(4, 86, 59, 3),
(26, 87, 83, 4),
(17, 137, 148, 9),
(20, 87, 130, 8),
(17, 134, 70, 6),
(26, 35, 30, 4),
(20, 93, 49, 4),
(15, 106, 59, 7);

INSERT INTO Video_statistics
(view_count, likes, dislikes, num_comments)
VALUES
(135, 110, 14, 10),
(111, 103, 4, 13),
(136, 19, 40, 11),
(99, 58, 16, 17),
(35, 25, 9, 4),
(113, 57, 5, 11),
(74, 47, 12, 3),
(137, 115, 2, 1),
(86, 39, 7, 3),
(131, 81, 24, 15),
(36, 25, 6, 5),
(122, 30, 47, 5),
(53, 49, 1, 4),
(13, 11, 2, 1),
(97, 63, 2, 10),
(28, 16, 7, 20),
(82, 37, 17, 4),
(90, 56, 17, 8),
(140, 112, 13, 1),
(115, 43, 31, 12),
(33, 19, 7, 7),
(0, 0, 0, 0),
(73, 60, 1, 10),
(87, 47, 29, 17),
(150, 96, 13, 15),
(99, 66, 15, 10),
(90, 49, 35, 3),
(125, 23, 79, 5),
(125, 53, 34, 8),
(91, 42, 13, 11),
(109, 90, 5, 5),
(30, 22, 0, 10);

INSERT INTO Subscription
(channel_id, consumer_id, subscription_type)
VALUES
(2, 30, 'Paid'),
(2, 31, 'Paid'),
(2, 32, 'Paid'),
(2, 33, 'Paid'),
(2, 34, 'Paid'),
(2, 35, 'Paid'),
(2, 36, 'Paid'),
(2, 37, 'Paid'),
(2, 38, 'Paid'),
(2, 39, 'Paid'),
(2, 40, 'Paid'),
(2, 41, 'Paid'),
(2, 42, 'Paid'),
(2, 43, 'Paid'),
(2, 44, 'Paid'),
(2, 45, 'Paid'),
(2, 46, 'Paid'),
(2, 47, 'Paid'),
(2, 48, 'Paid'),
(2, 49, 'Paid'),
(2, 133, 'Paid'),
(2, 51, 'Paid'),
(2, 52, 'Paid'),
(2, 53, 'Paid'),
(2, 54, 'Paid'),
(2, 55, 'Paid'),
(2, 56, 'Paid'),
(2, 57, 'Paid'),
(2, 58, 'Paid'),
(2, 59, 'Paid'),
(2, 60, 'Paid'),
(2, 61, 'Paid'),
(2, 62, 'Paid'),
(2, 63, 'Paid'),
(2, 64, 'Paid'),
(2, 65, 'Paid'),
(2, 66, 'Paid'),
(2, 67, 'Paid'),
(2, 68, 'Paid'),
(2, 69, 'Paid'),
(2, 70, 'Paid'),
(2, 71, 'Paid'),
(2, 72, 'Paid'),
(2, 73, 'Paid'),
(2, 74, 'Paid'),
(2, 75, 'Paid'),
(2, 76, 'Paid'),
(2, 77, 'Paid'),
(2, 78, 'Paid'),
(2, 79, 'Paid'),
(2, 80, 'Paid'),
(2, 81, 'Paid'),
(2, 82, 'Paid'),
(2, 83, 'Paid'),
(2, 84, 'Paid'),
(2, 85, 'Paid'),
(2, 86, 'Paid'),
(2, 87, 'Paid'),
(2, 88, 'Paid'),
(2, 89, 'Paid'),
(2, 90, 'Paid'),
(2, 91, 'Paid'),
(2, 92, 'Paid'),
(2, 93, 'Paid'),
(2, 94, 'Paid'),
(2, 95, 'Paid'),
(2, 96, 'Paid'),
(2, 97, 'Paid'),
(2, 98, 'Paid'),
(2, 99, 'Paid'),
(2, 140, 'Paid'),
(2, 101, 'Paid'),
(2, 102, 'Paid'),
(2, 103, 'Paid'),
(2, 104, 'Paid'),
(2, 105, 'Paid'),
(2, 106, 'Paid'),
(2, 107, 'Paid'),
(2, 108, 'Paid'),
(2, 109, 'Paid'),
(2, 110, 'Paid'),
(2, 111, 'Paid'),
(2, 112, 'Paid'),
(2, 113, 'Paid'),
(2, 114, 'Paid'),
(2, 115, 'Paid'),
(2, 116, 'Paid'),
(2, 117, 'Paid'),
(2, 118, 'Paid'),
(2, 119, 'Paid'),
(2, 120, 'Paid'),
(2, 121, 'Paid'),
(2, 122, 'Paid'),
(2, 123, 'Paid'),
(2, 124, 'Paid'),
(2, 125, 'Paid'),
(2, 126, 'Paid'),
(2, 127, 'Paid'),
(2, 128, 'Paid'),
(2, 129, 'Paid'),
(2, 130, 'Paid'),
(2, 131, 'Paid'),
(2, 13, 'Free'),
(2, 23, 'Free'),
(2, 5, 'Free'),
(1, 105, 'Free'),
(1, 69, 'Free'),
(1, 56, 'Free'),
(1, 27, 'Free'),
(1, 68, 'Free'),
(1, 9, 'Paid'),
(1, 107, 'Free'),
(1, 126, 'Paid'),
(1, 35, 'Paid'),
(1, 25, 'Free'),
(1, 143, 'Paid'),
(1, 98, 'Free'),
(1, 64, 'Paid'),
(1, 102, 'Paid'),
(1, 43, 'Free'),
(1, 10, 'Paid'),
(1, 62, 'Paid'),
(1, 132, 'Free'),
(1, 149, 'Paid'),
(1, 124, 'Paid'),
(1, 73, 'Paid'),
(1, 134, 'Paid'),
(1, 94, 'Paid'),
(1, 139, 'Paid'),
(1, 30, 'Free'),
(1, 47, 'Paid'),
(1, 57, 'Paid'),
(1, 142, 'Free'),
(1, 19, 'Paid'),
(1, 26, 'Free'),
(1, 58, 'Paid'),
(1, 67, 'Free'),
(1, 46, 'Free'),
(1, 82, 'Free'),
(1, 93, 'Free'),
(3, 96, 'Free'),
(3, 85, 'Free'),
(3, 22, 'Free'),
(3, 136, 'Free'),
(3, 75, 'Free'),
(3, 97, 'Free'),
(3, 8, 'Free'),
(3, 139, 'Paid'),
(3, 73, 'Paid'),
(3, 77, 'Paid'),
(3, 19, 'Free'),
(3, 140, 'Paid'),
(3, 17, 'Free'),
(3, 91, 'Free'),
(3, 113, 'Free'),
(3, 128, 'Free'),
(3, 29, 'Free'),
(3, 35, 'Paid'),
(3, 135, 'Free'),
(3, 81, 'Paid'),
(3, 25, 'Free'),
(3, 63, 'Free'),
(3, 114, 'Free'),
(3, 112, 'Paid'),
(3, 6, 'Free'),
(3, 55, 'Free'),
(3, 111, 'Paid'),
(4, 21, 'Paid'),
(4, 20, 'Paid'),
(4, 45, 'Paid'),
(4, 32, 'Free'),
(4, 13, 'Free'),
(4, 28, 'Paid'),
(4, 63, 'Free'),
(4, 113, 'Free'),
(4, 133, 'Free'),
(4, 91, 'Free'),
(4, 79, 'Free'),
(4, 47, 'Paid'),
(4, 102, 'Paid'),
(4, 149, 'Paid'),
(4, 10, 'Free'),
(4, 69, 'Free'),
(4, 30, 'Free'),
(4, 46, 'Paid'),
(4, 42, 'Free'),
(4, 109, 'Paid'),
(4, 122, 'Paid'),
(4, 44, 'Paid'),
(4, 52, 'Paid'),
(4, 111, 'Free'),
(4, 38, 'Paid'),
(5, 17, 'Free'),
(5, 49, 'Free'),
(5, 95, 'Paid'),
(5, 65, 'Free'),
(5, 142, 'Paid'),
(5, 77, 'Free'),
(5, 92, 'Free'),
(5, 114, 'Free'),
(5, 148, 'Free'),
(5, 112, 'Paid'),
(5, 120, 'Free'),
(5, 57, 'Paid'),
(5, 23, 'Paid'),
(5, 97, 'Free'),
(5, 79, 'Free');

ALTER TABLE Consumers
ADD COLUMN num_subscription INT DEFAULT(0);

UPDATE Consumers
JOIN (
    SELECT consumer_id, COUNT(*) AS num_subscription
    FROM Subscription
    GROUP BY consumer_id
) 
AS counts 
ON Consumers.user_id = counts.consumer_id
SET Consumers.num_subscription = counts.num_subscription;

CREATE TABLE Keyword (
	keyword_id INT PRIMARY KEY AUTO_INCREMENT,
	keyword_name VARCHAR(20) UNIQUE
);

INSERT INTO Keyword
(keyword_name)
VALUES 
('CS'),('SQL'),('Math'),('Geography'),('Chemistry'),('Calculus');

CREATE TABLE Video_keyword_bridge (
	video_id INT,
	keyword_id INT,
	PRIMARY KEY(video_id, keyword_id),
    FOREIGN KEY (video_id) REFERENCES Informational(video_id) ON DELETE CASCADE,
    FOREIGN KEY (keyword_id) REFERENCES Keyword(keyword_id) ON DELETE CASCADE
);
INSERT INTO Video_keyword_bridge
(video_id, keyword_id)
VALUES 
(1,1),(1,2),(5,3),(6,4),(8,5),(12,3),(12,6),(14,3),(14,6);


/*First I create a temporary table named temp. The innermost SELECT chooses only those creators who are
in the USA and saves alias table. This alias table is then joined with channel based on common user_id.
This is then joined with Video table based on common creator id and channel id. The final result is
that we obtain a temp table that contains all the information necessary for the next step and this is
done only for the creators living in the USA
 */

DROP TABLE IF EXISTS temp;
CREATE TABLE temp AS
(SELECT alias2.user_id, alias2.name, alias2.channel_name,alias2.channel_id, alias2.subscriber_count, Video.upload_date, WEEK(Video.upload_date) as week
FROM 
(SELECT alias.user_id, alias.name, Channel.channel_name, Channel.subscriber_count, Channel.channel_id
FROM (SELECT user_id, name FROM Creators
WHERE Creators.country = 'USA') AS alias
JOIN Channel
ON Channel.user_id = alias.user_id) AS alias2
JOIN Video
ON alias2.user_id = Video.creator_id AND alias2.channel_id = Video.channel_id);


/* -------------------------IMPORTANT: PLEASE READ--------------------------------------------
I have created two versions of the query.
The previous step is common for BOTH VERSIONS./*


/*-------------------------------------------------------------------------------
-------------------------------------VERSION 1-----------------------------------
---------------------------------------------------------------------------------*/


/* This version displays ALL the channels owned by the Creator where AT LEAST ONE
channel meets the given criteria. The subscriber count is the number of subscribers
for the respective channels.

/*The innermost SELECT chooses the user_id and subscriber_count from the temp table (obtained in the previous step)
on the condition that at least one video has been uploaded by that user in each of the 4 weeks of the last month (January)
consistently across ANY of his channel(s). This creates the alias table which is then joined with Channel table based on
common user_id, giving us the alias2 table. Finally, we perform another join operation on alias2 table with Channel table 
based on user_id in order to produce the name of all the channels owned by the creator. */

SELECT alias2.name AS User_name, Channel.channel_name, Channel.subscriber_count
FROM(
SELECT Creators.name, Creators.user_id, alias.subscriber_count
FROM
(SELECT temp.user_id, temp.subscriber_count
FROM temp
WHERE temp.upload_date >= '2023/01/01' AND temp.upload_date <= '2023/01/31'
GROUP BY temp.user_id,temp.subscriber_count
HAVING COUNT(DISTINCT WEEK(temp.upload_date)) >= 4) AS alias
JOIN Creators
ON Creators.user_id = alias.user_id) AS alias2
JOIN Channel
ON alias2.user_id = Channel.user_id;



/*-------------------------------------------------------------------------------
-------------------------------------VERSION 2-----------------------------------
---------------------------------------------------------------------------------*/

/* This version displays ONLY THOSE CHANNELS owned by the Creator which meet(s) 
the given criteria. Other channels owned by the same user which do not meet the 
given criteria are not displayed. The explanation of this query is similar to
the VERSION 1 and therefore not repeated here.*/

SELECT alias.name, Channel.channel_name, Channel.subscriber_count AS Subscriber_count
FROM(SELECT temp.name, temp.user_id, temp.subscriber_count, temp.channel_id
FROM temp
WHERE temp.upload_date >= '2023/01/01' AND temp.upload_date <= '2023/01/31'
GROUP BY temp.user_id,temp.subscriber_count,temp.name, temp.channel_id
HAVING COUNT(DISTINCT WEEK(temp.upload_date)) >= 4) AS alias
JOIN Channel
ON alias.channel_id = Channel.channel_id;