DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk; 
USE vk;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    firstname VARCHAR(100),
    lastname VARCHAR(100) COMMENT 'Фамилия', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(100) UNIQUE,
    password_hash varchar(100),
    phone BIGINT,
    is_deleted bit default 0,
    -- INDEX users_phone_idx(phone), -- помним: как выбирать индексы
    INDEX users_firstname_lastname_idx(firstname, lastname)
);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Bobbie', 'Morar', 'hintz.manley@example.net', 'cb7fdebddbcbe47c08ad40ba223d33b8e492f91e', '9464161728', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Ayla', 'Langosh', 'tamia.davis@example.org', 'd1d79078a3accb4f7a31e63e5031fa87669dc515', '9875088770', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Enrique', 'Glover', 'vhodkiewicz@example.net', '0f3f3a8db54774a612457bb10f30613d61cac58e', '9325122236', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Pansy', 'Price', 'deshaun.dooley@example.org', '615ecd6dcf822e0255a26f5a43e2b3869fdb0c88', '9703032830', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Daron', 'Spinka', 'payton67@example.net', '50d30510faf5de3159bcc13035e21cb776fa1b95', '9613716106', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Arthur', 'Vandervort', 'ihamill@example.com', '6186559b60759b5a1639e60c76c4b5046110982f', '9187701029', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Jaeden', 'Schultz', 'zcruickshank@example.org', '8200563848951138abb6d0677d12821f3f41c73e', '9392367400', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Gilbert', 'Jacobson', 'alex.stehr@example.org', '0662445d8632723aaa6c316044656e9291a2676a', '9921409351', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Melyna', 'Schinner', 'ari.schiller@example.net', '8f7c1e0715edab151fda1616f1fe0fc4c5d41332', '9914191348', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Tyree', 'Hodkiewicz', 'ejacobi@example.com', 'e6203f88d7650af04f8b6c3f30d553bf3eae3180', '9752757003', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Ima', 'Nader', 'dlueilwitz@example.org', '8eeffc91181705c0bca5b0fb6ce2f5be8aa30b2d', '9437545456', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Lou', 'Wintheiser', 'ptoy@example.net', '2cf5ff9cb3ed9acc0b3bd89a6629dc5f79a29ab2', '9578747092', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Muriel', 'Zulauf', 'royal30@example.net', 'dc501c7cb14b007ef8589c17d13a5ce58f2ebebe', '9607896347', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Juwan', 'Dickinson', 'antwon.abernathy@example.net', '935781440956d848805a39701ff47389032a1630', '9896132810', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Fredrick', 'Hilpert', 'ihand@example.net', '00ffd727d80bfe13e333d58953781faca6e9989b', '9881337645', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Kaley', 'Balistreri', 'sjohnston@example.org', 'f30b358287080c2fa4688e96338f42837cf58bc3', '9541443487', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Aurelio', 'Hermiston', 'zupton@example.org', 'a26ab6bf0a99ea9bf64783ce54904245bd085318', '9489120077', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Riley', 'Lakin', 'ubogan@example.net', '5a05753be44b4d08267dd77dd0f58362f15ecdd5', '9281922233', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Maci', 'Cartwright', 'kuhic.verda@example.com', 'a99af82aa64360a7f9f0f7a032ee14be83bda018', '9427588480', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Maddison', 'Shanahan', 'hunter.wuckert@example.org', '5b9d7b929c81e75ef0c4b8e1259d28bbb6d09cfc', '9789502429', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Faye', 'Cruickshank', 'reyna.gottlieb@example.com', 'ad2263302bd0de3074b27528dc971d727b54eb67', '9807057413', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Nina', 'Bode', 'gonzalo.block@example.com', '1ee1949c1a987c07e9b49e955de54ba51ef65416', '9643799413', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Sienna', 'Cassin', 'kiera87@example.com', 'ca1235ca196c42adc4f1ec495cce0a8c8aac1620', '9566981103', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Lambert', 'Langosh', 'heidenreich.allen@example.com', '36a3807e0e9c72c0150ff3fae5957f804976dea3', '9830137440', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Mable', 'Rutherford', 'djerde@example.net', '807d178f5db0c5d7cf06318aee4f630c243cbbe3', '9107284245', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Eloy', 'Bode', 'cartwright.malika@example.com', '19b9189c5b66a31a8358e064e92f93185d1d2c5e', '9363327666', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Jordyn', 'Walker', 'tony.hauck@example.net', '0eca5c63091633b84438191119418ad32b3e9801', '9139959961', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Dandre', 'Nader', 'emmet.schneider@example.com', '39046348ed39c765ad5cbb3c1320543364d1510b', '9003565464', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Jazmyne', 'Daniel', 'kenya19@example.com', '73077f4df8ca862359c9c483d6b13ba0cadc5d38', '9202994801', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Reuben', 'Paucek', 'kutch.eryn@example.com', '51937ab2a2004a2647b3840039d138d0e61d692a', '9971164007', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Dandre', 'Rippin', 'blanca94@example.com', '189ab04630deccaffef1e0fa0e166a172f9e52b6', '9887142355', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Amiya', 'Braun', 'eda87@example.org', 'd9cdcb609d4212d6e228e6f87a2455a7907d0129', '9441905106', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Andrew', 'Hartmann', 'medhurst.marilou@example.com', 'e45721c8afbeb9941fd0007906df80328041441e', '9118025244', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Dewayne', 'Shields', 'loy.o\'reilly@example.net', 'c2539fbc44ed51fa5975a04ff6d617e9bf25c0f7', '9667296074', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Rozella', 'Kuhic', 'nwaelchi@example.net', 'a5d926382b99a5e64b2cb5e03bc2b04f6d7a5d61', '9678543386', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Margarett', 'Homenick', 'kay.lang@example.org', 'b70e4bcce1eafa1a9a24b38988d1cff58f2928ab', '9307453335', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Elton', 'Kilback', 'jkoelpin@example.net', '34561ffaf8dbb9f39c1fa9f33c8294e480bb0d33', '9589640196', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Jeanie', 'Carroll', 'esmeralda62@example.net', '756e4de848260383c955df219c20506ee73afb89', '9158534467', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Allie', 'Ruecker', 'erussel@example.org', '46158d0bd6084b46ee59bf3c85f5a959bd13c850', '9096131311', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Lavina', 'Gutmann', 'cremin.jaquan@example.net', 'd267bc84c54b09a7709ed7c6e12cd1ffd8fb4e7a', '9164222069', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Camren', 'Heathcote', 'carmel.cormier@example.com', 'b56eceb1a31bbb33ef82cb48af52bdaaa704d094', '9129695143', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Nasir', 'Bartell', 'madonna74@example.org', '0cc8e52a638f6a54d820ee564f88d045ffc84257', '9101752575', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Grace', 'Moen', 'fadel.ron@example.com', '75ba4cd527ada3e7849804601f34f442255f2a2f', '9828178161', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Murl', 'Crooks', 'gabshire@example.net', '544bf82379d78f029f0d4da193a4c1a31e351a61', '9023291331', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Albertha', 'Gottlieb', 'reynold88@example.org', 'a6cbc42f8f225ec89c07f9bc99270b6f94adba5d', '9976895195', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Rene', 'Jacobi', 'gryan@example.com', '3c30f206bdc0dc5c67dd34c34f9e52db40149a94', '9904638269', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Janie', 'Pouros', 'isobel48@example.com', '184525ce5e421410fbcf393878b8db2e1e153100', '9009466619', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Mallie', 'Muller', 'fturcotte@example.net', '29e6ed0c113fb05de26c139f37112489c60c3269', '9041442131', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Cristal', 'Rogahn', 'bartell.novella@example.net', '7193abaf6a967c682bbbf9662c973ad99106e112', '9952355620', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Lera', 'Lockman', 'eunice.stokes@example.org', '16633ac67811fb71671a9d0fa71d5a1243c5cf66', '9531251147', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Carolyn', 'Blick', 'connelly.ashly@example.org', 'ae64840c7174e82b3dc02648bcfed56308aca6b2', '9997641213', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Delta', 'Gorczany', 'tremblay.davin@example.org', 'e06c3f62e640595e2504a02acb6e0b56b23d59a9', '9373879750', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Kiana', 'Daniel', 'malika53@example.org', 'f5863335dd6d2de29cb131ac57a7c42b5b6d6e87', '9904754110', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Cleora', 'Schiller', 'labadie.alexane@example.net', '7965d80507e0b53626c4b3f5bc538ba691de7999', '9084867455', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Clarissa', 'Kuhic', 'ledner.eric@example.com', 'e5e66903881ad736b008532d24992e2d5df5355f', '9666336303', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Kiera', 'Schuppe', 'steuber.brianne@example.org', '43937b629852ed3f4dab48fded24ed17721b44f0', '9729175000', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Romaine', 'Orn', 'vrempel@example.org', '3ce1c06dbab6c40e79e756d3b2cbb0fd2c00845d', '9078343311', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Rossie', 'Padberg', 'xkulas@example.org', 'd17b79aa68ce4924916853ee84650e08fb387df8', '9943600015', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Novella', 'Cassin', 'hterry@example.org', '4ae7dc4c116c7d615defead6e8c0cb8f2a5dcca4', '9920285135', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Amiya', 'Rippin', 'kuhlman.ignacio@example.net', 'b7ad090e7c3ec08f8c2bb2dbfc9e2cbbe2c28225', '9777597141', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Keshaun', 'Hodkiewicz', 'wolson@example.net', '30165e02585daab6d9a40da3b9a8af1e5d3d9396', '9509962736', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Roscoe', 'Mueller', 'rosie.weimann@example.net', '62b285d91b3c4a89fdc16e040bd38cb378104dff', '9288705289', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Demarcus', 'McClure', 'wunsch.paolo@example.net', '6169e9f01344f863029cbcf3c6540e0b949a2723', '9929305685', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Mack', 'Pollich', 'waelchi.christy@example.com', '412398a6382a98f916ee331f62b091104383700d', '9237294006', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Icie', 'Morissette', 'wilmer06@example.net', '2b837e6d04adb69de9c4f7da04915e785a97e542', '9997589131', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Keely', 'Hickle', 'nklein@example.com', '112ca309d4d868970d3995d12b2eeab8362da665', '9617152663', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Moriah', 'Cole', 'woodrow88@example.com', '387840612a47c14c6104c4435f1950a8d98bbe3b', '9539563755', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Gideon', 'Klein', 'cole.dena@example.org', 'b06b0212bf1f1d7f5cec1f9503604016b0691abd', '9268148780', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Lou', 'Bogan', 'rasheed.armstrong@example.net', 'a310c5e8e3d97fc3e3cb519359dffca2bc87243a', '9259474549', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Christa', 'Harvey', 'collins.devin@example.net', 'bbf4f0741a11fe9c26567be9fda8f2417c07e759', '9018831465', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Gabriella', 'Rau', 'hgreenfelder@example.net', '8256b34fd276476f0f9b708d6cb26c6d88153fe4', '9418974298', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Robyn', 'Nitzsche', 'eliane27@example.net', '51cb17791af74ffb3bef2cb94a66d86e3562ac08', '9629334745', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Amelia', 'Connelly', 'monahan.karlee@example.com', 'e88935ea041b5d2c54e380ec46b453cfbb4e0e64', '9254661905', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Jimmie', 'Hickle', 'kasandra.ruecker@example.net', '42530ae302c62a8bfa327e01a3a1de2ee76a0c85', '9116016803', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Piper', 'Bode', 'franz.fahey@example.org', '4a91c4357af90d3d930c48af3e860127cd74ecc1', '9004412714', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Adelle', 'Lynch', 'toy.jazmyne@example.com', '50df37386d308b4a1a9ac1c6f62ec4e1ea43d3e1', '9185887767', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Arne', 'Brekke', 'xparker@example.net', '1afddbc240ab6b59d5a8fafeb531f460700b77d0', '9497114780', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Kiley', 'Spinka', 'zackary99@example.net', '416d18957a2d8092b09a4027606ba7f2703e083b', '9766059908', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Eden', 'Lindgren', 'claude90@example.org', '21e53de735ea2ab9050e9bbf7c1fffe72b3a5af2', '9983733868', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Toney', 'Abshire', 'smith.brandy@example.org', '710bcb69a2afef8fc35d8bb3c35f6f9f3539c638', '9943286573', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Dorcas', 'Lehner', 'nheller@example.org', '8d77f0e78571d4d75bce9ad579781bc4dfe590d5', '9235829666', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Marietta', 'Stroman', 'ykris@example.com', '63e774535802498f309dfc75210f953124c63f0a', '9126519067', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Yasmine', 'Botsford', 'wyatt62@example.org', '2d54350b34cb1ac67332602acf3ca480aa0dcb0f', '9516828994', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Jules', 'Rohan', 'hackett.kamren@example.com', 'df454bd85d0f6bb87b3113ce003c50afe635e8b7', '9609782040', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Trey', 'Kuvalis', 'rernser@example.org', 'b83bdba21df6beafe905911fcfc2f9db9239b6f6', '9861654337', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Alena', 'Kerluke', 'layla54@example.com', '2bf22269f7d6c8b1f6a8e69cfafc864544dca926', '9435699508', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Abraham', 'Romaguera', 'bryana75@example.net', '5f86049c6ab6a6896b8e1575d27f053f926f5c92', '9790102771', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Rashad', 'Kuphal', 'rmurray@example.net', '8bb1665206116aab18ca640a51c5b3482e61cf49', '9644195677', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Bella', 'Effertz', 'sschmidt@example.com', '655f136ac98a4db3321ea03a853fe5a2f9765e83', '9466857818', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Florence', 'Treutel', 'aufderhar.cielo@example.com', 'eb5f715119d93d4ee7e0a313005b8e732fde9b65', '9237400238', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Savion', 'Dickinson', 'hand.josh@example.org', '3be020b453d7534708d12739bd7361ea1a71f0da', '9405273018', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Laney', 'Lemke', 'qkoss@example.net', '35d2640db04d63c9ec77f35932075b51761c6a97', '9778119405', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Meta', 'Gleason', 'zbeer@example.net', '20e6e2bb4fd69f7de7b35a5cea609153822bbc5f', '9792983084', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Vernice', 'Homenick', 'pcrist@example.net', '3fe9628ff7b5a5f847d10d9ad66fca014758c5c6', '9867646023', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Jacques', 'Dare', 'nader.lon@example.com', '5c49e86aab46be8a0fc64e24d39f3597851bdbb5', '9657363138', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Zane', 'Ankunding', 'harber.alisa@example.org', 'a8f2256c06894e9dc14d65d11483067266a1967a', '9177713895', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Ludie', 'Rohan', 'xzavier84@example.com', 'fb3fc1e28f6af2bfc1cd9e46dc2ffda753546f1a', '9866679630', 0);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Arlene', 'Ledner', 'cali.hand@example.com', '59c6bb1d975f13540a66efb6cae4264b97f61b42', '9168815448', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Mac', 'VonRueden', 'tanner.lesch@example.net', '792c6d81d92e080f899ecc9e6f037bba8a68f092', '9048878903', 1);
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Pauline', 'Kuhic', 'ericka.bednar@example.com', '49b9c287107c3593c08c2267e59d8b2f4746e7c0', '9241688272', 1);


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	user_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
	photo_id BIGINT UNSIGNED NULL,
    created_at DATETIME DEFAULT NOW(),
    hometown VARCHAR(100)
    -- , FOREIGN KEY (photo_id) REFERENCES media(id) -- пока рано, т.к. таблицы media еще нет
);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES (1, 0, '1989-12-16', 1, '1988-10-13 10:14:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 0, '1991-08-07', '2', '2007-12-25 05:16:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 0, '2006-11-15', '3', '1997-05-29 10:14:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 0, '1973-12-13', '4', '2014-05-09 22:10:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 1, '2011-03-18', '5', '1988-12-18 15:36:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 0, '1985-02-10', '6', '2005-07-06 19:48:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 1, '1987-08-14', '7', '1996-09-07 11:27:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 1, '1996-01-12', '8', '1983-08-30 02:48:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 1, '1983-05-03', '9', '2011-08-07 20:50:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 1, '1983-03-27', '10', '2003-07-25 21:33:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 0, '1991-05-13', '11', '2019-08-26 10:25:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 0, '2004-03-08', '12', '2000-12-19 01:12:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 1, '1992-08-27', '13', '1985-02-04 12:10:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 1, '1999-07-13', '14', '2020-03-19 14:34:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 0, '2018-06-12', '15', '1992-09-27 07:19:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 0, '1983-04-29', '16', '2018-10-25 02:49:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 1, '1979-10-24', '17', '1974-01-09 16:45:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 0, '1994-07-26', '18', '1971-04-12 23:43:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 1, '2000-03-16', '19', '1970-06-05 10:16:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 1, '1983-03-01', '20', '1972-11-15 07:59:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 0, '1974-07-10', '21', '1971-03-10 12:59:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 1, '2004-03-31', '22', '2004-12-20 00:11:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 0, '1993-02-10', '23', '1980-05-17 09:50:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 1, '2007-01-22', '24', '2000-06-04 21:44:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 0, '1981-01-27', '25', '1971-09-09 06:23:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 1, '2001-08-05', '26', '1973-05-27 22:04:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 1, '1999-10-30', '27', '1989-11-02 08:26:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 1, '2011-03-22', '28', '2012-04-23 22:25:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 1, '1998-04-20', '29', '2013-05-05 23:44:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 0, '2011-08-01', '30', '1972-12-13 21:54:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 1, '1976-03-08', '31', '2004-02-15 08:07:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 1, '2012-01-16', '32', '2005-03-28 08:13:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 1, '1978-08-24', '33', '1993-06-10 01:38:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 0, '1972-05-31', '34', '2016-12-29 03:53:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 1, '1978-01-09', '35', '2012-06-09 21:49:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 0, '2015-02-28', '36', '2021-04-27 21:47:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 0, '2014-02-14', '37', '1987-06-24 06:29:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 0, '1983-12-28', '38', '1973-11-21 01:01:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 0, '2010-11-18', '39', '2019-01-09 14:25:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 0, '1981-05-15', '40', '2019-01-17 08:44:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 1, '2021-05-11', '41', '1979-06-14 16:04:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 0, '1971-10-07', '42', '2017-01-23 10:58:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 1, '2020-07-03', '43', '2012-11-29 12:29:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 1, '2018-12-22', '44', '1972-06-14 06:22:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 0, '2003-08-22', '45', '2009-03-22 09:01:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 1, '1987-10-11', '46', '2017-07-17 03:09:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 1, '1988-03-13', '47', '1983-08-11 08:19:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 0, '1972-06-26', '48', '2015-09-16 05:28:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 0, '2020-07-23', '49', '2016-03-20 01:04:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 0, '1998-10-11', '50', '1985-04-14 01:27:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 0, '2014-10-31', '51', '2012-04-12 21:32:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 0, '2006-05-28', '52', '2001-06-18 02:53:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 1, '2018-11-06', '53', '1992-11-24 23:15:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 0, '2012-01-20', '54', '1991-01-29 00:32:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 0, '2000-10-27', '55', '1988-11-05 03:36:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 1, '1984-01-19', '56', '2009-09-17 05:48:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 0, '1978-10-23', '57', '2017-07-02 23:05:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 0, '1982-01-02', '58', '1975-03-29 11:23:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 1, '2021-04-07', '59', '2021-04-13 21:43:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 1, '2004-08-24', '60', '1997-11-13 19:23:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 0, '2008-04-27', '61', '2001-09-20 08:51:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 1, '1997-11-27', '62', '2001-08-01 10:58:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 0, '2018-10-19', '63', '1978-08-20 10:29:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 1, '1979-05-17', '64', '1998-10-18 08:31:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 1, '2015-05-26', '65', '1996-02-01 06:46:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 1, '1988-10-18', '66', '1971-10-13 05:29:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 1, '1971-12-17', '67', '1982-01-08 04:53:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 0, '1995-03-07', '68', '2019-03-24 09:19:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 0, '1984-04-12', '69', '1975-01-28 01:36:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 0, '1986-11-13', '70', '2010-02-21 22:47:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 0, '1986-11-11', '71', '2003-10-03 13:47:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 1, '1993-12-09', '72', '2019-06-06 00:34:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 0, '1987-09-18', '73', '1993-10-10 03:35:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 1, '2003-04-28', '74', '1978-03-07 10:21:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 0, '1990-07-07', '75', '2009-06-29 12:04:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 1, '1997-07-19', '76', '2007-01-06 08:32:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 0, '1978-08-04', '77', '2012-09-03 16:46:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 1, '2006-02-16', '78', '1988-01-14 11:54:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 1, '2005-10-22', '79', '1993-05-14 20:51:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 0, '2000-04-16', '80', '1977-10-22 16:42:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 1, '2012-04-15', '81', '1978-01-18 21:52:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 1, '1998-03-02', '82', '1991-11-19 21:16:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 1, '1973-04-17', '83', '1986-01-06 20:09:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 0, '2007-12-07', '84', '1973-12-24 22:06:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 0, '1986-03-21', '85', '1980-03-22 21:25:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 0, '1981-12-23', '86', '1980-04-20 13:40:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 1, '1992-09-29', '87', '1978-12-21 17:13:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 0, '2006-09-24', '88', '1992-11-21 23:51:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 1, '2005-07-14', '89', '1983-06-04 08:40:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 0, '1999-04-09', '90', '1997-09-23 10:13:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 0, '2015-01-09', '91', '1988-03-07 19:41:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 0, '2010-11-06', '92', '2009-06-13 03:37:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 1, '2003-08-16', '93', '1999-08-31 00:10:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 1, '1976-12-02', '94', '2015-06-13 15:30:50', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 0, '1997-02-01', '95', '1996-04-24 20:20:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 0, '2008-09-06', '96', '2013-12-27 04:48:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 0, '1997-01-01', '97', '1989-03-06 13:57:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 1, '1974-06-07', '98', '1993-09-05 11:54:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 0, '2001-05-02', '99', '1977-03-25 23:39:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 0, '1974-08-16', '100', '2008-01-14 15:51:15', NULL);

-- NO ACTION
-- CASCADE 
-- RESTRICT
-- SET NULL
-- SET DEFAULT


ALTER TABLE `profiles` ADD CONSTRAINT fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON UPDATE CASCADE ON DELETE CASCADE;

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL PRIMARY KEY,
	from_user_id BIGINT UNSIGNED NOT NULL,
    to_user_id BIGINT UNSIGNED NOT NULL,
    body TEXT,
    created_at DATETIME DEFAULT NOW(), -- можно будет даже не упоминать это поле при вставке

    FOREIGN KEY (from_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (to_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '84', '66', 'Perferendis blanditiis id temporibus similique inventore qui ducimus. Vero commodi quisquam earum excepturi numquam esse aperiam nihil. Minus doloremque mollitia eos voluptas. Ut earum molestiae magnam illo et.', '2222-02-23 17:52:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '39', '2', 'Itaque a consequatur porro nulla. Est voluptatem iusto corrupti mollitia.', '1999-02-26 23:48:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '64', '80', 'Non suscipit consequatur temporibus facere odit eos est. Voluptas sint quo est voluptas placeat nihil. Iusto ut est ut ea. Necessitatibus inventore est voluptatem harum nam ut.', '2222-12-19 04:15:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '18', '7', 'Incidunt consequuntur impedit quo unde rem ullam. Suscipit qui eius iusto sequi reprehenderit perspiciatis. Id sit est nulla magni et.', '3333-09-07 13:43:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '88', '56', 'Dolorem dolor ut quia quas enim. Nostrum saepe repellat non veniam. Error qui ab delectus quasi dolor nemo.', '1989-07-01 17:43:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '68', '12', 'Ut quasi voluptas quia pariatur eaque non laborum. Non dolorem recusandae aut. Perferendis vel a cum aspernatur. Minima quaerat praesentium quidem velit quis.', '2009-11-10 14:01:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '66', '62', 'Eaque necessitatibus facilis ea impedit ut saepe. Et qui culpa voluptate quia maxime odio expedita. Fugit nobis consequatur dignissimos consequatur consequatur.', '2007-10-27 10:02:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '62', '25', 'Aut voluptate aperiam sint veniam aut et quia. Aliquid et laboriosam aut quos blanditiis aut consequatur.', '1977-10-21 12:36:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '14', '31', 'Dolores eveniet qui aspernatur magnam. Eum excepturi molestias vero qui ea neque. Suscipit quos voluptatem cum voluptatem accusamus recusandae. Earum explicabo officiis quia quis.', '2004-03-23 06:02:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '18', '91', 'Magnam distinctio optio labore voluptatibus quia ratione. Quae voluptate et illum harum voluptas. Adipisci provident corrupti sint velit iusto et et.', '2001-08-07 08:46:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '62', '44', 'Quaerat architecto sint libero consectetur autem voluptates. Incidunt a alias omnis impedit doloribus est. Esse magni nam ullam esse. Et quo dolorum enim assumenda eos.', '1977-11-29 17:26:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '51', '17', 'Aliquid magnam ea quibusdam et. Quia eum aperiam et ut reprehenderit optio. Quis qui culpa quidem beatae nulla velit corrupti.', '1981-11-10 02:06:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '1', '65', 'Culpa explicabo dolores ipsa sunt quis pariatur. Quia et quod totam fuga dolore.', '2001-04-14 16:13:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '73', '68', 'Quasi eos rem doloremque dolores nam harum. Earum ut labore repudiandae magnam. Officia qui asperiores deserunt deleniti vero sed. Corporis tenetur ea excepturi est omnis totam et omnis. Nobis dolor et molestias et non natus.', '1988-04-03 14:56:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '20', '34', 'Provident animi perferendis hic. Ipsum dolores id nobis consequatur non. Fugiat distinctio iure aut dicta voluptatum est aut provident. Voluptas voluptates sequi provident omnis quia.', '2008-01-15 03:47:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '24', '44', 'A iure cumque hic corporis dolorum error. Necessitatibus dolorem ab occaecati. Deleniti omnis in ex dolorem sint.', '2015-06-24 23:51:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '76', '36', 'Occaecati totam voluptas at et sit ut quaerat. Qui expedita molestias quod id doloremque est ipsam. Quod est sed architecto qui autem. Cupiditate omnis voluptas labore voluptatum enim eaque quia.', '2014-10-26 17:18:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '37', '42', 'Aut consequuntur qui cupiditate dolorum eligendi officia qui. Saepe sunt quas commodi et. Ut quis repellendus ut dignissimos minima aut vel.', '1994-03-29 12:44:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '19', '34', 'Aut cum ea autem impedit ut eveniet ex. Asperiores blanditiis voluptatem soluta qui aut praesentium voluptatibus. Quibusdam laborum saepe saepe delectus tenetur enim.', '1986-08-29 11:10:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '33', '78', 'Iste corporis quibusdam in quaerat totam cupiditate id. Magnam aut eius qui dolor omnis delectus. Aut quis adipisci voluptatibus adipisci. Ut iste qui consequatur qui facilis.', '2020-05-05 03:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '84', '39', 'Ex ratione sit reprehenderit cupiditate autem tenetur. Consequuntur nesciunt cupiditate assumenda.', '2000-07-13 03:57:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '76', '1', 'Porro fugiat molestiae et corrupti harum voluptatem. Impedit ut occaecati molestias sapiente assumenda. Porro rerum laborum optio qui. Quam velit eos repellendus ipsum qui libero.', '2008-06-15 15:12:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '88', '8', 'Fugit pariatur iste dolor quidem non alias. Sit fugiat laborum sunt ut nobis. Sit quia omnis soluta quia magni quaerat excepturi.', '1989-12-31 07:30:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '6', '56', 'Repudiandae ut minima sint impedit non ducimus. Deserunt et atque explicabo omnis et dolorem. Debitis sint ducimus nam omnis ut consequatur.', '1990-11-15 18:42:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '96', '83', 'Assumenda optio ut et facilis magnam qui quo. Labore qui voluptates sequi rem sed a. Eveniet voluptatum hic ut dolor.', '1971-12-10 01:36:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '96', '76', 'Quia quaerat consectetur cum eum. A alias in vitae maiores et dolorem. Adipisci ut unde officia unde corrupti.', '2001-08-24 10:50:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '30', '89', 'Sint modi illum eum quisquam illum excepturi. Cum amet omnis est id tenetur cumque exercitationem quas. Possimus ex sit reprehenderit consequatur ut. Alias harum aut nihil expedita quis quo.', '1983-02-14 00:21:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '18', '95', 'Placeat et quia eos sequi. Voluptatem minima nesciunt ut culpa est ut quasi. Tenetur omnis in et vitae optio illo tempore. Velit et quas saepe aut laudantium similique facilis. Natus autem totam nemo rem ut nam.', '1987-09-25 10:01:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '69', '88', 'Non amet praesentium nisi minima explicabo non ex. Dolor et laudantium saepe consequatur et incidunt ipsum. Sapiente unde minima doloribus vel iure quidem. Accusamus similique tenetur illum a possimus reprehenderit eligendi.', '2004-03-30 16:05:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '52', '49', 'Temporibus facere sit voluptas ipsa. Ipsum quisquam veniam cum minus. Provident voluptate vero id et atque nulla suscipit occaecati.', '1994-09-26 10:32:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '86', '86', 'Optio dolor ut nulla placeat repellendus facilis fugiat. Sint sapiente soluta quaerat cum asperiores. Sint et laudantium aut quis ipsam.', '1979-06-30 01:44:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '84', '39', 'Sint omnis eos eaque quod animi aut qui cupiditate. Laudantium impedit libero ducimus. Officiis cumque ut sint quas eius eos nobis voluptas. Eum inventore nihil a aut perspiciatis non et.', '1986-12-10 04:36:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '72', '71', 'Quibusdam tempora reiciendis ipsam. Illum qui aut illo vel et incidunt et est. Optio id exercitationem optio placeat. Praesentium quis dicta et culpa.', '2000-07-29 07:51:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '71', '23', 'Dicta nisi laudantium quas distinctio at rerum provident. Velit autem sint provident velit aspernatur. Qui recusandae fuga explicabo rem consectetur autem nesciunt quo. Iure aut omnis voluptates earum deleniti quod hic.', '2014-06-04 07:20:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '8', '88', 'Quos soluta nam dolor consequatur et mollitia fuga aut. At corporis nulla non eaque. Qui in et mollitia et.', '1985-01-01 03:45:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '22', '96', 'Laborum libero aut atque qui esse illo. Vitae facilis commodi reiciendis. Nihil quia aut deleniti omnis sunt voluptatem dolorem quia.', '2021-02-02 02:45:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '53', '67', 'Excepturi explicabo quia necessitatibus ut. Omnis provident aut officiis vitae. Et et ut porro sed. Voluptas odio perspiciatis iste ut voluptas qui provident.', '1988-07-27 18:44:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '96', '59', 'Voluptates est ut vel est quisquam. Illo ipsam debitis voluptas excepturi quos. Enim omnis occaecati rerum laudantium. Ut incidunt architecto odio nostrum sed ducimus quia quia.', '1973-03-24 17:21:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '89', '44', 'Assumenda molestiae soluta corrupti cupiditate consequatur. Eveniet placeat voluptas provident occaecati et ut dicta. Commodi eos odio ad sint placeat nobis quia possimus. Sunt nostrum itaque voluptatem tenetur possimus ut neque.', '1987-10-31 16:05:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '1', '81', 'Maxime saepe aut voluptates consequatur. Sed itaque quaerat voluptas qui totam consequuntur. Quo molestiae rerum sed quae. Aliquid recusandae et asperiores ipsum.', '1995-11-03 06:30:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '57', '61', 'In ut dolor autem molestiae aperiam mollitia sit. Mollitia exercitationem voluptatem veritatis ab mollitia. Qui delectus quae cupiditate aut temporibus voluptatem.', '1998-01-06 10:47:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '100', '32', 'Qui excepturi distinctio non voluptatem provident deleniti voluptas. Omnis in veritatis dolores architecto ratione alias. Atque natus aperiam minus tempore deserunt consequatur voluptas. Reiciendis labore repellat consequatur quidem alias velit assumenda.', '2011-08-05 07:01:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '63', '19', 'Libero molestiae consequatur veniam ad. Quia fugiat vel qui ullam. Aliquam et quae quis voluptatum aut et molestiae.', '1970-08-14 23:56:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '100', '87', 'Rem quo consectetur omnis consequatur quia earum. Vel beatae fugiat quos magni ipsa. Saepe voluptatem totam maxime labore nihil tempore quaerat. Aut et dolores libero quae possimus maiores soluta.', '1989-06-18 22:33:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '88', '73', 'Quaerat eligendi quia dolorem qui. Voluptate voluptas odit architecto nihil quo. Sit sapiente accusantium animi dolorem enim in.', '1970-06-13 18:58:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '52', '10', 'Sit quia quos accusantium perferendis recusandae. Voluptas incidunt eaque optio veritatis et sapiente. Commodi et totam omnis aliquid qui perspiciatis. Officiis tempora in excepturi ad.', '1988-05-01 08:38:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '47', '38', 'Qui quibusdam velit hic iure et aperiam ea. Illo odit totam totam animi sint rerum dolorem. Modi iure tempora minus voluptatem pariatur. Voluptatem ullam maxime asperiores est cum quae asperiores.', '2017-06-23 21:00:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '65', '35', 'Eum hic nemo eius voluptatem sapiente. Minima soluta numquam quos velit. Similique sit sed cupiditate. Quod ut veniam voluptates exercitationem earum odio sint.', '1981-11-24 11:13:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '27', '53', 'Ea sunt rem illum ex sunt et odio sunt. Voluptas rerum doloribus voluptatem minima maiores placeat. Est eius maxime et voluptatem optio. Id et eligendi nemo rerum accusantium.', '1998-04-11 07:05:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '98', '58', 'Nemo molestiae reiciendis ut ad et nisi fuga est. Vel ex et autem non expedita blanditiis mollitia ut. Nihil occaecati sapiente sit odio magnam et nesciunt.', '2003-04-28 10:59:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '6', '23', 'Accusamus et earum commodi eius quia exercitationem. Enim modi modi dolorem dignissimos placeat enim. Ut voluptatem nihil nam qui quasi laudantium. Ad repellat minus dolor.', '2010-12-15 12:44:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '30', '85', 'Tempora eius est minus omnis est. Deleniti qui nemo atque voluptate. Deleniti est adipisci libero. Assumenda temporibus saepe velit quibusdam expedita.', '1976-10-03 01:04:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '11', '81', 'Quo aut non architecto suscipit culpa. Sequi excepturi voluptates corporis autem. Aut dicta aperiam autem aut at rerum illo. Illum debitis iure alias consequatur aut adipisci architecto laborum.', '1971-05-30 13:02:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '23', '97', 'Quibusdam eum blanditiis possimus laboriosam accusamus occaecati et. Nisi et ratione dolores assumenda qui eos sed accusantium. Ratione distinctio fugit cum veritatis velit.', '1995-05-17 15:36:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '83', '92', 'Deserunt quaerat repellat ea qui aut. Possimus et veniam provident aut cumque sapiente dolores et. Aut alias distinctio molestiae et nihil fugit velit id. Odio aut animi quasi et perspiciatis ipsam eaque. Deserunt voluptatibus vitae eaque dolorum.', '1977-07-27 09:23:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '21', '54', 'Et totam fugiat molestiae cumque. Voluptatem tenetur et et quae et similique omnis. Qui eaque odit perspiciatis quis.', '1991-12-19 22:57:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '69', '28', 'In ad id aut quos. Quasi impedit odit corporis qui aut cumque. Officia vero id eius omnis. Et omnis blanditiis voluptatem.', '2018-10-31 06:01:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '87', '16', 'Ipsum dolor soluta officia temporibus nisi qui nemo. Facere soluta qui facilis qui. Eaque mollitia ut eos sed accusantium a blanditiis. Mollitia dolores dolores id dolorem.', '2003-11-18 16:24:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '34', '34', 'Sunt reiciendis qui rerum ut tenetur molestias qui. Excepturi et qui perferendis rem ipsam. Qui libero numquam ut et est quo consequuntur.', '2018-02-06 23:02:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '81', '29', 'Distinctio quisquam soluta repellendus aut dolorem. Dignissimos voluptas voluptas voluptatem quaerat dignissimos sunt autem. Et quia ut nisi ad fugiat. Reprehenderit sint reiciendis quis eum.', '1988-10-01 08:39:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '36', '39', 'Molestiae consequuntur dolorem repellendus dolorum vitae eos veritatis magnam. Ipsam consectetur eum consequuntur et est suscipit ut. Repellat dolor beatae sed tenetur quaerat non.', '1994-12-28 08:58:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '72', '48', 'Saepe harum eos autem asperiores repellendus. Est nulla alias qui est. Itaque blanditiis quam exercitationem sed aut ea veritatis deserunt. Molestiae inventore ipsa voluptatum. Vero deserunt tenetur quasi et et.', '2007-09-28 11:12:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '59', '89', 'Adipisci quasi at eius dolores in vel maiores iste. Totam voluptas ratione sint. Aut totam aspernatur libero consequuntur sequi nobis.', '2002-07-06 06:56:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '76', '35', 'Aut quia adipisci voluptas. Maiores deserunt maxime cum rerum qui aut suscipit. Neque excepturi accusamus unde mollitia incidunt nulla dolorum. Autem et et enim dolores.', '2008-12-12 06:36:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '29', '2', 'Sit molestias deserunt fugit qui doloremque placeat voluptatibus excepturi. Laborum nobis sed debitis. Officiis voluptas aspernatur a excepturi eveniet.', '2012-09-25 17:45:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '68', '24', 'Sit ullam reprehenderit aliquid rem odio ipsa. Deleniti at accusamus dolores beatae neque facilis. Fuga quis non ut soluta. Ex consequatur ab occaecati qui sed nihil accusantium. Sed eius tempora nihil dolores autem nihil alias quaerat.', '2005-11-05 17:15:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '50', '27', 'Enim sed nisi et pariatur voluptates nemo. Quidem quis saepe vel recusandae perferendis. Error omnis incidunt quae doloribus dolore.', '1975-01-27 00:55:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '91', '50', 'Voluptatibus quidem consequatur quaerat labore sint fugiat. Vel distinctio tempora repellendus natus possimus rerum. Est aliquid quidem accusantium error pariatur. Dolores aut officia fugiat quis.', '1988-01-01 02:47:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '65', '65', 'Ab officia omnis quia cumque. Autem incidunt facere eius porro explicabo debitis. Cumque rerum rem velit impedit porro odio perspiciatis.', '1999-07-10 21:39:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '83', '63', 'Qui ex ad voluptates ducimus cumque itaque quibusdam. Modi quia voluptatem et velit nostrum aut provident. Beatae minima consequatur ipsa aut dolorem.', '1983-07-16 21:40:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '52', '25', 'Autem nam dolores et rerum aperiam. Quaerat dolor occaecati laborum.', '1985-07-20 19:24:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '72', '59', 'Saepe dolorem ad voluptatem voluptatum aliquam commodi doloremque. A fuga velit ea nemo voluptas voluptas accusamus. Soluta fugit quia exercitationem ut sunt. Impedit fugit nihil ullam molestiae est dolore.', '1975-09-09 06:59:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '18', '86', 'Et ullam est autem. Odit enim illum unde quis quia qui eveniet. In voluptate voluptatem maxime qui. Blanditiis possimus id assumenda non vitae explicabo id.', '2020-12-21 22:38:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '76', '33', 'Ut consequatur eaque voluptatem perspiciatis et. Et vel voluptatibus aut sit deserunt laborum. Voluptatem odio accusamus repellendus velit. Molestiae quas fugiat ratione quis.', '2007-04-12 13:53:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '62', '44', 'Et nobis itaque sit quis. Facilis qui velit nisi accusantium odio rerum nulla. Tempore et est incidunt unde.', '1995-02-27 03:40:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '57', '15', 'Est culpa ut et inventore. Qui inventore molestiae eius praesentium. Reiciendis mollitia quam libero architecto tenetur. Cupiditate ullam perferendis atque cum corrupti.', '2010-02-25 12:40:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '80', '55', 'Distinctio omnis laboriosam sed inventore consequatur temporibus soluta. Accusantium ea dignissimos quasi autem assumenda quam fuga. Molestiae aut illo nisi perspiciatis ipsam. Voluptate sequi quibusdam eum sequi pariatur aut quibusdam. Ipsa perspiciatis et vel commodi.', '2010-01-12 08:04:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '47', '51', 'Quidem est nihil et amet dicta quibusdam ut. Et sunt necessitatibus est qui. Voluptatem temporibus adipisci natus porro unde.', '1970-10-19 18:02:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '89', '46', 'Aliquam asperiores et exercitationem rerum dolores accusantium qui. Ut qui consequatur qui fuga et asperiores est. Sed perferendis nesciunt quibusdam ipsa ab excepturi nulla. Odio officia ratione quia facere.', '1989-07-22 07:02:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '33', '33', 'Est voluptatem est sit sequi. Laborum et distinctio voluptates odit ut.', '1979-10-02 05:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '100', '3', 'Vero iste tenetur voluptate magni id sit architecto. Consequatur eaque sunt molestiae illum cum nulla. Repellendus laudantium autem dolorem consectetur nostrum dolores. Vel aut repudiandae sed est sunt voluptas.', '1970-11-20 08:53:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '76', '46', 'Dolorem voluptatum vel blanditiis aut aut reprehenderit accusamus fugit. Facere modi ad molestiae et autem tenetur ipsam. Et consequatur esse repudiandae architecto. Sequi atque est impedit accusantium et quo neque.', '2008-11-28 15:31:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '69', '68', 'Officiis magni ipsum sed esse est minima at. Natus omnis ut occaecati non quas. Dolorem vel sit quibusdam beatae consectetur optio aperiam.', '1971-03-05 14:01:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '36', '7', 'Non voluptatum culpa est tempore non. Sint in quia laboriosam et harum voluptatem. Nihil nihil voluptatem autem delectus blanditiis fugiat consequatur. Commodi minus ut est ipsum sint sequi.', '2011-04-15 02:31:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '58', '31', 'Nulla eaque sequi quisquam. Blanditiis eius similique placeat id aut. Quo temporibus rerum at et nihil molestiae. Consequatur illo architecto voluptate ratione debitis.', '1986-11-10 12:09:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '87', '72', 'Voluptas quasi doloremque sint odit est. Aspernatur veniam ad blanditiis debitis necessitatibus praesentium. Minus dignissimos voluptatem ducimus qui.', '1998-10-08 11:21:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '20', '70', 'Amet harum dolorem ut nobis magni maiores. Asperiores totam facilis nostrum et et nemo. Doloremque et tempora ducimus. Laudantium vel aut necessitatibus molestiae rerum est.', '2006-07-25 00:07:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '52', '38', 'Sit perferendis autem qui. Et quis consequuntur quia sapiente vel quia quis. Debitis expedita at voluptatum mollitia et rerum. Ab voluptatem voluptatum reiciendis sequi cumque pariatur reiciendis.', '2011-02-28 20:36:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '76', '84', 'Dolorem sapiente esse ratione enim molestiae error. Corrupti quas neque culpa qui dolores. Et voluptas excepturi est laboriosam ipsum asperiores.', '2015-11-06 16:46:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '15', '78', 'Est voluptates ullam similique fugit ratione aut et. Est cum fuga odit alias saepe aut ipsam occaecati. Eum corrupti voluptas nobis a et velit. Aut sequi in ut tempora dolores at vero.', '1977-07-21 03:09:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '24', '64', 'Cupiditate dicta quibusdam iusto quia. Ipsum non quis a assumenda nihil non ipsam. Adipisci qui dicta dolores dignissimos eveniet voluptatum expedita non. Qui molestiae laudantium rerum quos.', '1980-02-22 16:18:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '6', '5', 'Cupiditate quia et rerum vel enim. Ratione sint laboriosam a minus esse. Modi voluptas quo blanditiis natus quaerat rerum.', '1976-09-11 13:07:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '1', '72', 'Voluptatem qui vel reiciendis occaecati ut totam. Est possimus repellat quae ut et laboriosam. Beatae et porro sint porro nemo.', '1985-03-12 00:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '52', '73', 'Expedita ducimus quisquam ea. Neque iste quia commodi libero sed. Nihil illum consequatur impedit non.', '2020-04-06 11:12:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '87', '12', 'Totam nostrum ipsum atque veritatis incidunt sit illum. Aut natus ullam omnis laboriosam. Ratione iste molestiae maiores cumque ipsa ipsum dolorem provident.', '1991-10-25 02:40:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '86', '2', 'Perspiciatis delectus voluptas esse eum non excepturi quisquam. Facilis soluta rem culpa et. Fugit ut similique est ducimus dolore doloremque ad.', '1990-05-23 10:06:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '91', '90', 'Quaerat ut illo et non tempora quia. Quia omnis qui aliquid rerum. Labore aspernatur aliquid nihil laboriosam sed aliquid totam. Qui pariatur quis quam cumque id sed. Ut velit dolor non exercitationem velit sequi eos illo.', '1995-08-30 05:50:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '7', '27', 'Doloremque sed nostrum sapiente eum numquam rerum maiores. Necessitatibus quasi et in accusantium sint dolorem. Dolores voluptatem in eum reprehenderit. Impedit harum consequatur officiis ratione deleniti vel.', '2007-09-10 22:34:59');

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '53', '63', 'Nemo quia itaque earum voluptas consequuntur. Et aut ad aperiam et.', '2020-12-21 11:50:50');


DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests (
	-- id SERIAL PRIMARY KEY, -- изменили на составной ключ (initiator_user_id, target_user_id)
	initiator_user_id BIGINT UNSIGNED NOT NULL,
    target_user_id BIGINT UNSIGNED NOT NULL,
    -- `status` TINYINT UNSIGNED,
    `status` ENUM('requested', 'approved', 'declined', 'unfriended'),
    -- `status` TINYINT UNSIGNED, -- в этом случае в коде хранили бы цифирный enum (0, 1, 2, 3...)
	requested_at DATETIME DEFAULT NOW(),
	updated_at DATETIME on update now(),
	
    PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (target_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1', '1', 'declined', '2011-11-12 15:49:32', '1988-05-03 21:07:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('2', '2', 'requested', '1978-04-21 21:23:15', '1986-01-26 16:07:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('3', '3', 'approved', '1999-11-01 14:16:49', '1992-01-15 12:40:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('4', '4', 'declined', '2010-03-27 09:28:08', '1998-11-23 15:44:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('5', '5', 'unfriended', '1979-01-06 22:24:33', '1983-10-05 09:03:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('6', '6', 'requested', '1996-04-08 13:16:36', '2014-06-10 03:32:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('7', '7', 'approved', '1990-03-14 08:49:58', '2003-07-25 16:59:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('8', '8', 'declined', '2018-04-16 19:44:00', '2020-09-14 09:07:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('9', '9', 'requested', '2009-03-29 17:31:23', '2001-04-15 15:26:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('10', '10', 'requested', '1980-11-16 09:08:50', '1995-03-04 19:11:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('11', '11', 'unfriended', '1996-10-13 00:16:01', '1970-10-20 07:15:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '12', 'requested', '2017-07-05 10:29:12', '1996-03-04 14:28:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('13', '13', 'approved', '1977-08-04 15:07:19', '2013-07-24 21:29:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '14', 'declined', '1985-11-24 08:10:11', '1982-08-24 03:03:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('15', '15', 'requested', '1997-09-02 04:43:19', '1982-07-31 16:10:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('16', '16', 'requested', '1998-05-12 05:53:54', '1994-04-26 10:06:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('17', '17', 'declined', '1979-11-17 08:07:36', '1978-07-07 12:23:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('18', '18', 'requested', '2018-08-29 03:22:36', '2003-08-26 03:51:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('19', '19', 'unfriended', '1971-02-08 10:57:12', '1979-11-16 14:47:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('20', '20', 'declined', '1971-06-23 06:27:25', '2002-10-26 11:01:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('21', '21', 'declined', '1973-06-04 09:42:21', '1974-08-11 15:05:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('22', '22', 'approved', '1996-03-01 07:22:05', '1991-02-26 05:55:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('23', '23', 'declined', '1988-10-09 19:34:08', '2016-07-02 20:17:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('24', '24', 'approved', '1993-07-04 12:43:22', '1984-07-29 03:31:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('25', '25', 'requested', '2006-10-31 12:30:43', '1973-06-10 21:38:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('26', '26', 'declined', '2017-03-10 05:15:12', '1986-02-23 14:09:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('27', '27', 'requested', '1978-07-26 06:42:50', '2020-07-25 19:05:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('28', '28', 'unfriended', '2001-08-28 06:57:12', '2011-09-11 11:24:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('29', '29', 'requested', '1973-05-13 07:00:28', '1983-08-28 15:58:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('30', '30', 'declined', '2006-01-25 23:46:04', '2000-03-26 20:46:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('31', '31', 'unfriended', '2008-07-30 16:44:43', '1991-05-12 22:48:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('32', '32', 'declined', '2002-09-19 05:53:12', '1994-06-18 10:38:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('33', '33', 'approved', '2005-04-17 12:20:31', '2006-08-28 05:13:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('34', '34', 'unfriended', '2012-03-31 01:15:06', '1987-10-26 03:04:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('35', '35', 'requested', '2013-12-08 05:11:43', '1978-05-22 11:54:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('36', '36', 'unfriended', '2015-04-16 06:47:50', '1993-03-27 20:09:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('37', '37', 'declined', '2017-10-06 13:41:31', '1980-02-28 23:58:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('38', '38', 'approved', '2004-08-05 09:24:36', '2014-12-26 18:18:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('39', '39', 'approved', '1994-11-17 00:29:04', '2004-09-02 16:34:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('40', '40', 'requested', '2020-04-01 14:15:36', '1981-06-10 14:48:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('41', '41', 'declined', '1983-11-09 04:29:37', '1974-02-24 04:13:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('42', '42', 'requested', '1992-05-01 18:18:56', '1983-03-02 23:43:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('43', '43', 'unfriended', '1974-07-26 05:04:12', '1999-12-26 23:05:14');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('44', '44', 'approved', '1980-04-18 08:13:30', '2009-07-26 18:05:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('45', '45', 'approved', '2000-03-27 22:01:33', '1994-10-14 20:09:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('46', '46', 'approved', '1988-02-04 11:40:38', '1980-10-12 02:48:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('47', '47', 'unfriended', '1985-08-09 18:51:34', '1985-08-24 21:12:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('48', '48', 'requested', '1986-11-07 18:18:31', '1984-07-27 01:40:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('49', '49', 'unfriended', '2011-03-01 06:55:26', '1973-01-11 04:36:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('50', '50', 'requested', '1973-06-13 09:42:42', '1979-07-27 20:56:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('51', '51', 'approved', '1979-08-02 22:49:25', '1990-10-27 18:18:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('52', '52', 'declined', '1994-05-20 13:38:50', '2001-11-11 18:13:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('53', '53', 'declined', '2020-01-20 12:39:02', '1974-07-25 13:07:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('54', '54', 'unfriended', '1981-12-29 03:29:22', '1982-05-20 06:04:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('55', '55', 'requested', '1973-11-02 23:23:05', '1976-05-03 08:55:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('56', '56', 'approved', '2000-11-28 10:00:27', '1996-07-07 14:02:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('57', '57', 'approved', '1973-06-05 14:18:10', '2003-06-19 04:14:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('58', '58', 'declined', '1978-05-05 15:35:14', '2017-11-18 21:41:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('59', '59', 'approved', '1972-02-08 20:43:00', '2014-05-29 17:43:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('60', '60', 'requested', '2013-06-02 09:33:31', '1990-01-01 16:17:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('61', '61', 'approved', '2007-01-01 02:47:29', '2020-11-20 18:51:10');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('62', '62', 'declined', '2012-06-24 11:16:57', '2017-09-14 07:16:39');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('63', '63', 'requested', '1990-03-20 21:45:00', '1992-02-13 16:45:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('64', '64', 'unfriended', '2002-02-08 20:50:43', '1987-01-25 16:31:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('65', '65', 'unfriended', '1994-11-01 03:41:45', '1997-11-23 02:28:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('66', '66', 'requested', '1989-01-08 09:26:01', '1985-10-24 07:51:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('67', '67', 'declined', '2018-08-18 16:08:04', '1988-02-26 00:30:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('68', '68', 'approved', '1992-03-21 08:47:59', '2002-03-02 13:10:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('69', '69', 'approved', '2015-04-06 09:40:28', '2020-03-03 12:08:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('70', '70', 'approved', '1992-04-27 07:47:15', '1970-11-27 01:07:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('71', '71', 'requested', '2012-08-16 05:02:28', '2006-09-07 14:20:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('72', '72', 'declined', '2008-01-15 20:02:29', '1990-08-24 17:08:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('73', '73', 'unfriended', '1980-05-13 04:19:11', '2016-03-10 02:04:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('74', '74', 'unfriended', '2016-01-04 22:36:46', '1986-10-03 18:04:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('75', '75', 'approved', '1979-10-27 03:23:35', '1998-08-25 21:50:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('76', '76', 'declined', '1979-03-29 16:04:58', '1995-09-08 14:56:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('77', '77', 'declined', '1983-07-31 21:38:12', '2020-02-22 20:06:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('78', '78', 'requested', '2002-09-05 15:53:28', '1978-10-03 14:47:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('79', '79', 'declined', '2005-10-31 14:43:21', '1979-05-21 05:47:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('80', '80', 'declined', '1998-01-06 14:24:56', '1988-02-15 10:49:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('81', '81', 'unfriended', '2004-04-29 22:39:49', '1987-07-06 13:06:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('82', '82', 'requested', '2000-06-30 04:04:14', '1995-09-14 00:48:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('83', '83', 'requested', '2004-03-09 00:20:24', '1984-11-02 18:06:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('84', '84', 'declined', '2012-11-13 07:24:58', '1972-12-31 10:32:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('85', '85', 'approved', '1981-07-14 22:10:41', '2000-08-24 11:25:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('86', '86', 'declined', '1971-08-15 20:08:23', '1979-03-13 12:28:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('87', '87', 'unfriended', '2014-03-05 13:59:28', '1997-08-08 17:53:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('88', '88', 'approved', '2008-07-27 23:25:21', '1979-03-10 23:41:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('89', '89', 'approved', '2016-09-29 06:19:31', '1980-04-04 23:12:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('90', '90', 'declined', '2008-03-02 11:56:58', '1975-04-13 02:11:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('91', '91', 'unfriended', '1996-01-11 11:26:35', '1979-06-26 18:40:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('92', '92', 'unfriended', '1970-04-04 13:41:03', '2002-11-07 05:05:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('93', '93', 'declined', '1983-01-31 01:26:10', '2002-10-14 08:36:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('94', '94', 'requested', '1986-01-21 07:57:45', '1995-06-07 13:13:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('95', '95', 'unfriended', '1983-07-07 22:58:02', '1978-05-18 00:42:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('96', '96', 'unfriended', '1992-12-24 20:33:42', '2013-02-28 14:54:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('97', '97', 'declined', '1973-01-17 23:11:12', '1986-10-16 05:03:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('98', '98', 'declined', '1972-03-01 17:49:30', '1989-06-05 00:33:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('99', '99', 'approved', '1997-02-07 13:08:53', '2005-11-17 20:06:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('100', '100', 'requested', '1975-08-29 09:13:01', '1991-08-13 01:55:17');


DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	admin_user_id BIGINT UNSIGNED,

	INDEX communities_name_idx(name),
	FOREIGN KEY (admin_user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('1', 'provident', '1');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('2', 'eum', '2');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('3', 'laboriosam', '3');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('4', 'autem', '4');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('5', 'et', '5');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('6', 'assumenda', '6');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('7', 'earum', '7');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('8', 'veritatis', '8');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('9', 'cupiditate', '9');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('10', 'consequatur', '10');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('11', 'est', '11');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('12', 'repudiandae', '12');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('13', 'qui', '13');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('14', 'laborum', '14');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('15', 'a', '15');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('16', 'sed', '16');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('17', 'voluptate', '17');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('18', 'aut', '18');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('19', 'quaerat', '19');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('20', 'cumque', '20');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('21', 'aspernatur', '21');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('22', 'tempora', '22');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('23', 'laborum', '23');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('24', 'odit', '24');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('25', 'minima', '25');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('26', 'illum', '26');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('27', 'est', '27');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('28', 'nemo', '28');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('29', 'deserunt', '29');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('30', 'veritatis', '30');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('31', 'delectus', '31');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('32', 'in', '32');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('33', 'facilis', '33');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('34', 'eum', '34');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('35', 'et', '35');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('36', 'ex', '36');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('37', 'nesciunt', '37');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('38', 'ut', '38');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('39', 'officia', '39');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('40', 'eveniet', '40');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('41', 'necessitatibus', '41');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('42', 'culpa', '42');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('43', 'dolorum', '43');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('44', 'a', '44');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('45', 'velit', '45');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('46', 'ab', '46');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('47', 'magni', '47');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('48', 'fugiat', '48');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('49', 'sapiente', '49');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('50', 'blanditiis', '50');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('51', 'in', '51');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('52', 'natus', '52');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('53', 'recusandae', '53');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('54', 'nihil', '54');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('55', 'debitis', '55');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('56', 'officiis', '56');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('57', 'a', '57');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('58', 'quia', '58');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('59', 'aperiam', '59');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('60', 'asperiores', '60');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('61', 'consequatur', '61');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('62', 'non', '62');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('63', 'atque', '63');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('64', 'deleniti', '64');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('65', 'aliquam', '65');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('66', 'commodi', '66');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('67', 'in', '67');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('68', 'modi', '68');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('69', 'doloremque', '69');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('70', 'eius', '70');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('71', 'magni', '71');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('72', 'doloribus', '72');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('73', 'sunt', '73');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('74', 'atque', '74');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('75', 'ullam', '75');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('76', 'consequuntur', '76');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('77', 'facere', '77');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('78', 'ab', '78');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('79', 'blanditiis', '79');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('80', 'expedita', '80');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('81', 'voluptas', '81');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('82', 'deserunt', '82');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('83', 'earum', '83');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('84', 'corrupti', '84');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('85', 'neque', '85');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('86', 'eligendi', '86');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('87', 'laudantium', '87');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('88', 'quia', '88');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('89', 'magnam', '89');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('90', 'soluta', '90');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('91', 'non', '91');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('92', 'velit', '92');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('93', 'non', '93');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('94', 'consequatur', '94');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('95', 'repellat', '95');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('96', 'ullam', '96');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('97', 'nam', '97');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('98', 'animi', '98');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('99', 'ab', '99');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('100', 'qui', '100');


DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
  
	PRIMARY KEY (user_id, community_id), -- чтобы не было 2 записей о пользователе и сообществе
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (community_id) REFERENCES communities(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('23', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('23', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('32', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('35', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('44', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('48', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('50', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('51', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('57', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('62', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('65', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('66', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('67', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('69', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('80', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('84', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('86', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('89', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('99', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('100', '9');


DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

    -- записей мало, поэтому индекс будет лишним (замедлит работу)!
);

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', ' doc', '1988-12-08 19:09:31', '1979-06-22 06:06:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'video', '2020-02-22 09:35:05', '2008-02-28 16:52:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', ' doc', '2008-02-04 06:48:13', '1971-11-14 20:03:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', ' gif', '1981-09-22 07:00:42', '1988-12-02 05:17:55');


DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED,
    user_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    `size` INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_type_id) REFERENCES media_types(id) ON UPDATE CASCADE ON DELETE SET NULL
);

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '51', 'Quidem nemo quis hic. Laborum animi illo ea explicabo a. Aut maxime doloribus voluptatem enim rem ullam sit.', 'veritatis', 130250, NULL, '2006-10-13 16:24:57', '2020-10-25 09:51:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '9', 'Est voluptatibus et quo similique. Voluptas enim ut nisi nemo magnam doloremque. Occaecati et nihil aut eos iure alias exercitationem. Sequi laboriosam est debitis a atque magnam natus.', 'et', 2910664, NULL, '1982-02-13 13:24:38', '1975-01-06 19:40:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '95', 'Quod odio sint nam iste debitis aut amet. Nemo aut et mollitia repellat hic. Explicabo similique mollitia incidunt in. Ad quos aliquam et reiciendis deleniti alias sunt est.', 'quis', 898265608, NULL, '1992-10-06 13:26:33', '1972-11-02 20:02:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '12', 'Eos saepe alias sit modi recusandae tenetur magni alias. Vitae at error culpa saepe. Assumenda beatae quos provident sequi qui rerum. Tempora ratione eaque velit porro reiciendis.', 'autem', 20, NULL, '2020-03-14 02:06:28', '2004-03-30 10:32:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '1', '74', 'Iste rem eos minus quis autem voluptate. Dolorem praesentium ea dolore. Numquam voluptas debitis repellendus tempora numquam dolor.', 'sint', 804, NULL, '1974-03-10 01:07:19', '1986-08-07 09:31:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '2', '87', 'Et odit minima et eaque numquam. Ex quod itaque et numquam quod ipsa. Rerum id qui quis nulla voluptas facilis tempore. Reiciendis rerum vero odit sed.', 'nihil', 82401, NULL, '1995-12-09 07:13:19', '2020-01-19 15:50:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '3', '67', 'In dolorem voluptatem cupiditate cum. In optio velit qui debitis corporis. Nihil rerum omnis voluptas sit.', 'quae', 6, NULL, '2020-05-31 07:23:22', '2016-09-25 18:17:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '4', '1', 'Eum consequatur sunt dolorem saepe est nostrum dolores. Dignissimos aliquid non nihil alias nisi. Saepe et est nesciunt eum consectetur possimus nam sint.', 'ex', 0, NULL, '1985-12-17 19:31:40', '1974-04-25 14:36:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '1', '26', 'Beatae qui possimus amet est dolorem. Ut dolor voluptatum illum ullam eius voluptatum. Culpa quisquam ipsum possimus maiores omnis. Molestiae aut nostrum mollitia reiciendis. Nam quae sapiente eius dicta.', 'sed', 8, NULL, '1973-06-24 08:43:21', '1977-12-15 23:50:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '2', '18', 'Reiciendis nesciunt voluptatem accusantium necessitatibus cumque enim. Vel ipsa natus id odio quia aut. Possimus consectetur consequatur provident quo amet ex voluptas. Voluptatum harum quis quod excepturi consectetur voluptatem.', 'voluptas', 29005, NULL, '1988-07-14 10:26:31', '2012-04-24 12:46:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '3', '26', 'Non quod aut exercitationem consequatur occaecati. Consectetur odio sunt impedit error non voluptates labore. Vero reiciendis dignissimos maiores fugiat est et quia nihil. Quae natus cumque rerum quas a consequatur voluptatem aut.', 'nulla', 62835448, NULL, '1999-09-24 14:57:16', '1999-03-02 06:38:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '4', '92', 'Et rerum est et eligendi et illo. Quia eum esse a alias fugiat et cumque. Reprehenderit necessitatibus distinctio eos et.', 'consectetur', 754, NULL, '1997-10-26 17:11:46', '1970-01-03 06:47:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '1', '75', 'Eligendi quis non iure in. Aperiam dignissimos quia reprehenderit animi et. Necessitatibus dignissimos omnis sed quidem necessitatibus excepturi dolore voluptate.', 'non', 1, NULL, '2010-06-18 16:03:04', '2009-12-16 20:20:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '2', '92', 'Natus et aut porro illo. Porro sit molestiae accusamus ut.', 'est', 50753576, NULL, '2015-01-10 23:26:57', '1989-07-06 04:07:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '3', '28', 'Voluptatem enim ut nulla delectus totam quo. Quia consectetur esse nostrum voluptas sunt architecto non nesciunt. Sunt mollitia quia est qui. Occaecati sed sapiente repudiandae ut corrupti eum.', 'enim', 76788440, NULL, '2008-06-22 05:23:08', '2011-03-02 12:32:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '4', '53', 'Aut consequatur eaque temporibus. Est tempora at aut fugiat labore nam. At ea quos ut labore.', 'delectus', 15077, NULL, '2011-10-22 11:15:37', '1989-09-05 12:09:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '1', '46', 'Necessitatibus dolor rerum corrupti corrupti. Repellat quae maiores odit ex dolorum voluptas. Eius est distinctio in. Rerum quia est facere cum quo fugiat rerum.', 'quod', 717314097, NULL, '1981-09-08 01:50:22', '1996-07-21 21:31:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '2', '31', 'Recusandae optio non impedit sed aliquam nulla commodi. Doloribus et vitae commodi aspernatur modi. Placeat dolorem nulla incidunt quo enim aliquid aperiam ut. Porro sint occaecati consequatur occaecati sed ab at. Blanditiis repellendus itaque velit qui.', 'nisi', 0, NULL, '2016-06-13 16:01:58', '2007-04-26 22:33:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '3', '11', 'Fugit consectetur non quod eum veniam sint modi. Aliquid repellendus eaque magnam nihil neque aut omnis. Dignissimos magnam laudantium perspiciatis unde quas modi odit. Provident fuga eos facere a ea est.', 'voluptas', 100263, NULL, '2008-08-06 23:26:51', '1974-10-16 22:42:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '4', '83', 'Vitae officiis eos id occaecati sit impedit. Dolores eum ullam quidem adipisci. Sapiente perferendis corporis ut architecto veritatis earum. Ea eos sunt repellat dolorum ea.', 'harum', 44051, NULL, '1996-11-13 01:32:31', '1987-11-28 16:53:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '1', '45', 'Quo est illo et occaecati. Quia laudantium consequatur culpa dicta odit mollitia esse. Enim consequatur repudiandae aliquid natus rerum ut molestiae quo.', 'rem', 1, NULL, '1982-12-09 20:26:11', '1976-07-04 00:11:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '2', '3', 'In voluptates doloremque corporis facere qui nostrum eveniet. Maiores temporibus sit sed ut non repellat ea ut. Optio itaque quia quis optio suscipit voluptates. Natus ut eaque similique ea autem nihil.', 'id', 989, NULL, '2015-01-28 21:45:11', '1980-10-12 02:04:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '58', 'Et earum voluptate dolor. Quo fuga voluptatem nesciunt est. Est dolorum ipsum esse quae et incidunt esse doloremque. Occaecati aliquam voluptatem et et. Fuga officiis laudantium fugiat est omnis ut.', 'iste', 0, NULL, '2018-01-02 02:29:16', '1979-10-19 14:07:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '4', '3', 'Similique ut enim sit consequatur voluptate fugiat facilis. Fugit rerum aperiam dolorem quia quae soluta culpa. Provident animi voluptatem aspernatur necessitatibus hic sed corporis dolor.', 'alias', 1560, NULL, '1985-12-07 03:48:57', '1977-12-15 07:29:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '1', '14', 'Id sit rerum tempora nesciunt id. Hic neque perspiciatis sunt ut distinctio harum. Possimus optio ab sint praesentium consequatur. Sint omnis culpa explicabo at eius temporibus temporibus et.', 'itaque', 78, NULL, '2012-03-29 09:08:29', '2003-04-17 17:54:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '2', '28', 'Consequatur ea velit amet deserunt ipsa. Labore voluptatem adipisci itaque. Esse harum quam quae dolorem autem. Voluptas qui adipisci quia velit voluptatem esse soluta ut.', 'ducimus', 31534, NULL, '1976-12-04 03:35:46', '2014-10-14 05:12:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '3', '76', 'Aperiam aspernatur voluptas quia. Sed blanditiis accusantium corporis voluptatem id totam. Est sit rerum omnis et. Sed quae molestiae quo sint perspiciatis.', 'maiores', 2, NULL, '1971-08-14 01:01:51', '2005-09-06 22:54:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '77', 'Est voluptatem nisi quia suscipit est placeat. Et doloremque earum est eum ex iste quae.', 'minus', 4477, NULL, '1998-01-16 16:43:07', '1977-05-24 20:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '1', '40', 'Debitis qui omnis deserunt qui inventore ea. Totam eum assumenda quis. Rerum pariatur non dolores. Voluptatem accusamus facilis quia velit.', 'ea', 75212294, NULL, '2019-05-29 17:10:55', '1974-03-29 02:57:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '2', '23', 'Culpa amet sit ut ad iusto adipisci hic. Perferendis molestiae reiciendis eligendi facere. Ut ab magnam et est.', 'porro', 785871515, NULL, '2011-03-25 14:48:41', '1970-03-14 00:47:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '3', '79', 'Cum quis enim dolore quibusdam impedit. Totam molestias consequatur corporis corrupti. Dolore maxime sed laborum quia cum repellat.', 'labore', 83111, NULL, '1995-05-10 10:28:24', '2020-05-31 04:44:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '4', '27', 'Dolor aut cum modi repellat dolorem dolorem. Aspernatur numquam sed repudiandae sint. Beatae est quis unde iure eligendi enim.', 'itaque', 44503, NULL, '2009-11-26 16:32:47', '2018-02-02 12:12:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '1', '79', 'Id nihil accusamus consequatur asperiores dolorem est inventore. Porro magni minima itaque provident aut. Odit nobis nobis amet.', 'sunt', 41695, NULL, '2019-12-10 09:50:26', '2008-10-11 21:58:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '2', '55', 'Ut in aut quia delectus. Fuga cum et pariatur consequuntur nihil.', 'tenetur', 45, NULL, '2001-02-07 18:20:33', '1971-03-30 19:19:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '3', '75', 'Doloremque aut autem est et reiciendis et molestiae dolores. Explicabo commodi consequatur temporibus facilis omnis error nesciunt. Rem saepe id cupiditate et rem et sapiente.', 'et', 55370887, NULL, '2000-01-27 16:08:58', '1987-04-15 07:27:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '4', '74', 'Ut architecto neque earum qui. Ut sit exercitationem similique sed consectetur quod. Necessitatibus exercitationem commodi eos aut.', 'nobis', 56, NULL, '1990-11-17 22:14:21', '1974-03-04 02:25:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '1', '28', 'Alias occaecati voluptatem iure voluptas minus voluptas error eum. Sit ipsum non ipsa incidunt. Adipisci voluptatem aliquam maiores necessitatibus.', 'consequuntur', 304, NULL, '1979-12-22 09:23:50', '2006-09-16 20:19:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '2', '40', 'Doloremque temporibus esse unde nisi nam ut dolorum. Blanditiis magni ratione perferendis officia quo nulla. Voluptas explicabo est dolor voluptatem rerum amet.', 'accusamus', 0, NULL, '2004-11-25 17:18:55', '1994-12-01 21:52:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '3', '46', 'Quis cupiditate repudiandae itaque et odit. Occaecati sequi omnis qui assumenda labore dignissimos ipsa. Natus assumenda molestiae ea in et.', 'qui', 129239, NULL, '2002-11-29 20:09:05', '2009-02-28 06:17:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '4', '65', 'Quod quia enim quia ducimus. Tenetur voluptas fugit nihil corporis harum. Earum non a dolorem et dolorem corporis sed.', 'consequuntur', 80967, NULL, '2002-10-07 14:37:47', '2013-08-29 15:14:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '1', '39', 'Iste ab reprehenderit consequatur doloremque debitis velit. Unde nemo sed natus quas. Quidem corporis et aut ut aut quisquam.', 'laudantium', 9, NULL, '1983-10-31 15:37:43', '2019-10-21 20:26:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '2', '38', 'Repudiandae id aspernatur incidunt perspiciatis vitae ut enim. Voluptatibus quia quas est est. Et voluptatum qui occaecati quo.', 'dolor', 908, NULL, '2002-10-18 12:47:06', '2016-04-18 21:33:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '22', 'Dicta assumenda fugiat earum omnis quidem qui. Sit optio minima officiis vel qui aperiam. Repellat excepturi iste qui deserunt ab. Sit nihil alias ipsum repellendus voluptas.', 'maxime', 53782, NULL, '1974-05-26 04:23:42', '1982-11-14 18:38:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '27', 'Hic ipsam sit culpa. Ut velit unde est ad omnis. Dolore quis veniam ut vero placeat quia illum.', 'unde', 8, NULL, '2000-10-02 09:11:13', '1991-02-23 08:58:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '1', '24', 'Sapiente voluptates sed voluptatem quasi in. Porro omnis ut voluptatem repellendus officiis laboriosam.', 'aliquam', 753527, NULL, '1998-11-27 23:49:12', '1990-07-01 21:32:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '2', '72', 'Officia et placeat sed voluptates. Nulla et assumenda pariatur vitae qui ut. Minima facere repudiandae repudiandae repellat reiciendis. Qui alias et deleniti eius autem.', 'placeat', 5342, NULL, '1998-07-16 20:18:54', '2006-12-21 07:37:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '62', 'Impedit soluta harum minus eligendi. Et aut soluta dolorum impedit quam. Tenetur blanditiis et aliquid repellendus quia maiores. Corrupti perspiciatis sed vitae vel fugiat accusamus ea. Cumque quae non et corporis voluptates similique.', 'non', 632544926, NULL, '1987-03-22 13:15:49', '2012-11-24 23:48:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '4', '47', 'Id veritatis nulla error itaque. Voluptas dolorem sint in fuga aut consequatur dolorum. Quos ut doloribus minus quis.', 'et', 6333171, NULL, '1974-09-05 08:55:49', '2009-03-01 14:44:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '1', '8', 'Voluptatem rerum ea deleniti accusantium facere nihil. Iste nam aperiam ut voluptas ut molestiae labore expedita. Rerum omnis in nobis ut aut eveniet. Asperiores sint eos perferendis aut nihil dolorem.', 'et', 26390122, NULL, '1977-05-23 13:55:10', '1975-01-07 03:56:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '2', '83', 'Cumque eius illum ut dicta iusto incidunt. Accusantium cumque neque maiores alias inventore ipsam est earum. Ratione aliquam corporis dicta impedit voluptatum perferendis illum quibusdam. Autem nesciunt explicabo corporis aperiam perspiciatis odit neque.', 'dolor', 513, NULL, '1992-09-07 16:56:41', '1989-08-16 01:32:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '3', '82', 'Voluptas sequi atque dicta libero eaque cupiditate. Quidem nisi dolore ipsa quos. Nemo veritatis delectus vero tempore corporis illo. Pariatur ea deleniti ex aliquid aut sint.', 'illo', 6541924, NULL, '2010-04-06 13:45:59', '1983-01-05 12:56:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '4', '89', 'Aut qui aut ratione omnis fuga id. Magni dolores ut qui expedita velit at. Enim amet eos qui quaerat. In quod laboriosam et dolor nulla doloremque. Earum voluptatem voluptate corrupti ea nihil.', 'consequuntur', 589778033, NULL, '1998-01-21 14:10:09', '1991-11-07 09:32:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '20', 'Voluptate expedita velit sit neque. Mollitia fugit tempora reiciendis occaecati libero quae est hic. Corporis pariatur quod adipisci ratione illo eos est.', 'aut', 330, NULL, '2003-03-10 18:20:19', '1975-04-25 06:17:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '67', 'Velit natus excepturi sunt. Fugit iure quaerat minus quod tempore inventore soluta. Incidunt saepe distinctio molestiae eum omnis. Veritatis quidem incidunt qui ullam.', 'cumque', 66620, NULL, '1982-05-08 07:06:43', '2019-02-11 00:45:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '3', '57', 'Hic dolores vel perspiciatis exercitationem aut. Eos sequi voluptate in eius. Hic mollitia qui non. Similique facere rerum iste voluptatem ut veritatis.', 'voluptate', 2298, NULL, '2010-06-21 05:00:54', '1993-04-06 23:14:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '4', '37', 'Possimus nobis similique dolorum similique. Sunt veritatis ullam incidunt incidunt quia.', 'labore', 21, NULL, '1985-08-10 18:48:05', '2003-03-23 04:45:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '1', '9', 'Et ipsam porro dolorem minus. At delectus sunt maiores alias saepe sit doloremque. Molestias non molestias voluptas veniam dolore qui debitis.', 'fugiat', 20574496, NULL, '1980-03-16 09:00:34', '1977-10-28 19:05:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '2', '35', 'Voluptates tenetur quibusdam deleniti eligendi eaque mollitia. Vel quas qui molestiae quia molestiae. Et aut quam itaque asperiores est labore fuga expedita.', 'est', 9533, NULL, '1999-06-03 04:44:15', '1988-11-14 14:44:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '3', '19', 'Sed at ad at vel tempore aliquid. Vel voluptatem non officia.', 'facilis', 395, NULL, '2013-06-09 21:02:36', '1983-03-26 06:36:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '4', '57', 'Minima deserunt magni autem quidem. Nostrum doloremque architecto et debitis.', 'nisi', 0, NULL, '1970-07-18 15:03:46', '1979-03-29 14:46:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '1', '27', 'Reprehenderit voluptates omnis mollitia maiores omnis. Repellat voluptas minima molestias quod expedita. Praesentium qui illum sapiente nesciunt mollitia quo iste quo.', 'commodi', 623270286, NULL, '1975-10-19 08:18:13', '1993-05-25 03:46:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '2', '12', 'Aut non animi dolores. Alias quaerat rerum minus est dolor.', 'quia', 802208141, NULL, '2020-09-24 17:37:03', '1980-05-17 08:05:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '3', '28', 'Laborum ipsa quis sequi rerum voluptas. Aut deleniti quidem dolorum provident autem. Ullam ut illo nam vitae. Iste dignissimos dicta iste commodi vel.', 'ipsum', 0, NULL, '1999-03-20 01:16:28', '2011-11-13 02:44:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '4', '80', 'Voluptas ut tempore eveniet perspiciatis sed nisi. Alias iure voluptatem recusandae reprehenderit excepturi corrupti neque ab. Earum non nihil aut ex nobis eum. Similique ut illum eveniet ab ab nulla.', 'nihil', 4297, NULL, '2009-03-17 09:22:09', '1991-01-26 07:55:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '1', '13', 'Illum illo occaecati sequi deserunt. Quisquam excepturi sed nulla vel. Aut impedit quaerat error nostrum incidunt modi. Itaque est praesentium enim culpa animi quo.', 'ducimus', 864548, NULL, '2013-01-01 17:33:11', '1990-10-20 08:55:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '2', '75', 'Molestiae unde sunt voluptatem dolores tenetur blanditiis nihil iste. Dolor vitae omnis consectetur perspiciatis. Aspernatur voluptas nulla est repellendus. Cum et impedit quia quo architecto.', 'et', 9, NULL, '1987-10-27 02:20:19', '1973-10-24 13:16:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '3', '72', 'Fuga qui eligendi porro esse quisquam. Est qui voluptatem error blanditiis. Voluptatem ut beatae et est iusto quia.', 'neque', 90225, NULL, '2013-09-19 03:02:48', '1980-09-07 08:09:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '4', '17', 'Sint eos ex earum consectetur labore nisi qui. Consequuntur natus consequuntur dolor nisi est vel. Molestias aut sed laborum nihil cumque accusamus cupiditate. Repellat aut magni reiciendis aut eum.', 'autem', 2581, NULL, '1986-09-04 04:03:48', '1994-03-25 05:10:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '1', '88', 'Veniam maxime optio voluptatem laborum sapiente corporis. Et enim fugiat in qui. Et dolorem enim eaque. Sit qui occaecati error fuga.', 'consequatur', 7223, NULL, '1972-04-26 16:15:51', '2012-09-19 11:29:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '2', '78', 'Et rerum sit debitis enim explicabo aut est. Tempore qui facere fugit exercitationem facere. Laborum molestias odio debitis esse maxime dolor.', 'nulla', 40207254, NULL, '2016-06-08 08:56:45', '2004-07-22 19:05:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '3', '4', 'Qui voluptate earum dolore architecto voluptate. Ea velit sed ut quaerat qui reiciendis. Voluptatum quis assumenda numquam quia.', 'sed', 21, NULL, '1978-10-23 15:18:59', '1993-06-29 16:47:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '4', '51', 'Consectetur veniam commodi deserunt ratione. Culpa voluptas odit consectetur delectus autem veritatis. Est repudiandae sunt nulla sit dolor quisquam eveniet minima.', 'mollitia', 4457, NULL, '1988-10-16 00:49:52', '1975-05-26 05:15:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '76', 'Ipsum eos aspernatur odio suscipit. Odio harum minima dolores perferendis rerum sed commodi corrupti. Aspernatur dignissimos illum nesciunt sit.', 'nisi', 666, NULL, '1998-02-10 17:58:59', '1982-08-11 07:15:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '2', '63', 'Rerum ipsum temporibus vel quasi aut. A ut qui neque esse. Et asperiores repellat fuga omnis quod. Nisi nulla ab dolor excepturi cum vitae.', 'voluptates', 7, NULL, '2000-07-09 21:30:21', '1983-10-18 23:15:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '3', '6', 'Occaecati aut harum amet repudiandae facere impedit deserunt. Qui sed nulla quas facilis. Enim eum tempora quisquam illo laborum. Quo et excepturi provident quod.', 'amet', 2, NULL, '1970-02-10 11:59:09', '1979-11-29 22:58:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '4', '39', 'Corporis sit consectetur exercitationem aspernatur. Quod repellat quia delectus esse dolores enim nihil. Rerum qui voluptatem ducimus qui.', 'doloribus', 585786055, NULL, '1972-05-06 01:42:12', '1978-04-30 02:58:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '23', 'Eos aperiam a repudiandae accusamus. Est delectus eos culpa voluptas exercitationem.', 'expedita', 201, NULL, '1974-04-19 11:17:46', '1987-04-08 15:25:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '13', 'Voluptatem atque accusamus vel suscipit vitae numquam assumenda autem. Harum esse voluptas cupiditate totam eum. Sint libero eveniet soluta repudiandae et debitis. Repudiandae in nobis nobis cupiditate quisquam fuga.', 'velit', 0, NULL, '1983-10-09 05:50:48', '2015-11-21 03:04:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '3', '2', 'Eum sunt pariatur qui qui. Non cupiditate perspiciatis dicta perspiciatis natus. Aliquid necessitatibus quod illum quaerat dolor.', 'molestiae', 20294, NULL, '2015-12-01 03:04:52', '2016-08-22 18:05:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '4', '73', 'Quibusdam aliquid reiciendis laudantium quas culpa et. Eaque rem quo esse delectus voluptas molestiae. Quisquam recusandae aperiam aut nulla doloribus voluptatum ad. Quod esse sunt dolorem pariatur delectus similique.', 'maxime', 0, NULL, '1976-09-01 11:00:58', '1981-07-29 16:11:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '47', 'Minima quis vitae ex voluptas voluptate autem soluta. Quam molestias neque iste molestias. Explicabo explicabo et unde debitis. Sunt iste delectus ab est assumenda officia.', 'deserunt', 396338, NULL, '1999-09-22 09:14:36', '2010-10-13 23:14:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '24', 'Et non sapiente soluta quis. Et et modi dolores possimus et maxime qui magni. Placeat unde earum consequatur aut harum suscipit corporis.', 'non', 3, NULL, '1979-05-18 09:20:19', '2013-10-16 13:10:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '3', '24', 'Temporibus omnis molestias aut non veniam qui qui. Omnis nostrum aut tempora et architecto omnis. Nobis sunt ea quidem optio rerum. Ut rerum non sint voluptates qui quam ea.', 'eligendi', 0, NULL, '1977-09-13 19:31:08', '2015-11-14 09:11:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '4', '29', 'Officia aut quia voluptatibus officiis consequatur ea tempore aut. Harum commodi consectetur accusantium. Perspiciatis voluptate error totam modi omnis est molestias.', 'delectus', 1604, NULL, '1974-05-26 21:46:03', '2000-06-06 04:44:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '1', '1', 'Tempora officiis aut molestias dolor quasi quia. Quo repudiandae quaerat sapiente accusantium. Numquam maxime voluptatem minima adipisci dicta est est. Consectetur suscipit ut eum nobis et similique occaecati.', 'eveniet', 95599609, NULL, '2010-01-09 23:30:43', '2006-11-08 18:42:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '21', 'Dolor cumque aut nemo voluptas mollitia. Error eum sint debitis earum. Nulla cum numquam aut sint. Quia quia sint mollitia error ea.', 'praesentium', 50406, NULL, '2007-04-05 02:00:48', '1988-05-25 14:11:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '3', '92', 'Vero inventore nam in sequi non. Impedit itaque labore sed. Sit ex facilis eum eos totam voluptas.', 'consequuntur', 44572238, NULL, '2007-02-24 05:00:22', '1991-08-25 15:10:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '4', '64', 'Suscipit eveniet iste architecto quis culpa quo ipsum. Ducimus alias voluptatum ipsum architecto iusto. Modi corrupti ipsum corporis. Sint ut placeat et consequatur.', 'voluptate', 4, NULL, '1990-05-23 15:59:25', '2012-04-19 12:13:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '1', '77', 'Veritatis et laudantium eos nulla dolores. Ea aperiam incidunt ut iusto eveniet pariatur unde dolor. Dolores sed eum veniam laborum repudiandae iusto ut et.', 'sed', 510, NULL, '2003-10-27 00:37:01', '2006-04-19 08:19:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '2', '66', 'Porro sapiente officia voluptatem dolorem dicta quod cumque. Recusandae placeat voluptates beatae qui. Est et aut consectetur. Qui ratione aspernatur suscipit.', 'quas', 8, NULL, '1991-07-04 15:26:10', '2007-10-21 12:59:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '3', '32', 'Dolor accusantium iste voluptatem repellat sapiente et. Natus ex accusantium minima tempore. Voluptatem est perferendis exercitationem illum aspernatur.', 'numquam', 794628, NULL, '2010-06-26 08:42:41', '1993-07-10 09:29:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '4', '37', 'Aliquam placeat error corrupti. Quo cum perspiciatis dolorum unde. Aut praesentium ipsam aut quia.', 'qui', 364, NULL, '2007-11-09 15:42:19', '2006-10-29 16:23:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '1', '54', 'Repellendus aliquid ut nulla et reprehenderit aliquam. Dignissimos eum quo expedita aut. Velit possimus sunt harum aut voluptatem quia. Itaque eos rerum ut consectetur.', 'sunt', 384360, NULL, '1999-07-30 11:24:55', '1985-10-08 19:01:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '2', '28', 'Dolor sed quis omnis quasi. Deleniti aut esse facilis quis hic. Minima tempora asperiores sit atque. Et cupiditate nulla consequatur doloremque.', 'a', 58, NULL, '1972-03-13 22:44:56', '1971-05-23 02:34:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '3', '31', 'Quos aperiam facilis modi modi dolore et eligendi. Dolorum quasi culpa consequatur enim delectus amet reiciendis. Dolorem et harum aut alias voluptatibus.', 'quaerat', 472375, NULL, '1989-08-15 19:43:14', '2007-06-10 18:49:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '4', '5', 'Et quia quas dignissimos amet provident. Nisi enim accusantium magnam autem ipsum quod assumenda recusandae. Architecto sapiente libero quia. Doloremque aut deserunt fuga est.', 'cupiditate', 81130432, NULL, '1993-05-03 23:35:31', '2011-01-05 23:38:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '1', '7', 'Dolorum placeat alias sequi. Velit perferendis facilis ipsa tempore amet molestias. Dolore neque et non unde.', 'quam', 835, NULL, '2002-09-29 20:59:21', '1978-12-03 13:33:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '62', 'Quis quisquam et minus assumenda recusandae et. Accusantium voluptate veniam nulla repellat eos perferendis.', 'ipsum', 895085, NULL, '2000-11-01 12:32:57', '1979-09-16 13:58:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '3', '62', 'Sed in perferendis vitae a ex. Possimus sed suscipit enim autem enim sint architecto. Vero omnis qui tempore deserunt soluta est.', 'quae', 53152718, NULL, '1981-10-16 00:06:58', '1970-08-12 13:32:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '4', '80', 'Impedit vel fugit impedit autem earum in eum. Enim ut velit et sit sunt. Enim voluptatem nisi quam atque architecto perspiciatis quis. Tempore nisi error recusandae.', 'iusto', 59, NULL, '1985-03-11 07:43:08', '1993-05-24 12:30:47');


DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),

    -- PRIMARY KEY (user_id, media_id) – можно было и так вместо id в качестве PK
  	-- слишком увлекаться индексами тоже опасно, рациональнее их добавлять по мере необходимости (напр., провисают по времени какие-то запросы)  

/* намеренно забыли, чтобы позднее увидеть их отсутствие в ER-диаграмме*/
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE

);

INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '1', '1', '2011-10-01 16:00:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '2', '2', '1988-12-16 15:03:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '3', '3', '1999-07-25 23:47:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '4', '4', '1977-08-28 20:43:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '5', '5', '1972-12-26 16:16:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '6', '6', '1977-07-05 11:28:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '7', '7', '1975-05-19 19:50:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '8', '8', '2013-05-09 15:39:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '9', '9', '1983-05-02 06:09:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '10', '10', '2004-09-27 16:02:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '11', '11', '1982-02-12 23:00:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '12', '12', '1976-02-18 17:47:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '13', '13', '1991-09-08 14:40:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '14', '14', '1992-10-05 07:21:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '15', '15', '1982-04-26 05:15:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '16', '16', '1996-05-02 10:09:51');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '17', '17', '1995-10-21 22:09:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '18', '18', '1986-12-24 06:29:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '19', '19', '1983-06-27 14:01:23');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '20', '20', '1978-11-16 00:38:16');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('21', '21', '21', '2021-04-22 19:41:06');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('22', '22', '22', '2014-08-22 13:16:38');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('23', '23', '23', '1989-08-09 00:08:32');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('24', '24', '24', '1977-10-21 09:32:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('25', '25', '25', '2001-07-13 09:19:57');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('26', '26', '26', '1974-05-10 22:18:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('27', '27', '27', '1985-08-11 06:08:48');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('28', '28', '28', '2001-10-24 22:47:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('29', '29', '29', '2017-02-16 17:25:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('30', '30', '30', '1976-11-29 18:30:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('31', '31', '31', '1984-01-03 08:49:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('32', '32', '32', '1999-07-11 13:54:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('33', '33', '33', '2015-07-20 16:10:15');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('34', '34', '34', '1985-03-01 04:52:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('35', '35', '35', '2000-02-25 18:58:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('36', '36', '36', '2020-04-30 01:50:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('37', '37', '37', '1972-05-22 07:02:24');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('38', '38', '38', '1973-12-07 05:16:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('39', '39', '39', '2009-11-17 04:39:05');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('40', '40', '40', '2019-12-22 07:03:56');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('41', '41', '41', '1999-07-02 05:52:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('42', '42', '42', '1989-05-04 14:11:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('43', '43', '43', '1981-12-22 02:59:35');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('44', '44', '44', '2009-12-07 05:35:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('45', '45', '45', '2018-08-03 03:04:55');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('46', '46', '46', '2019-06-03 17:39:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('47', '47', '47', '1998-07-16 08:58:51');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('48', '48', '48', '2011-10-10 06:06:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('49', '49', '49', '1971-06-23 08:56:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('50', '50', '50', '1988-10-17 12:11:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('51', '51', '51', '2003-08-14 11:21:45');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('52', '52', '52', '1996-12-02 16:22:32');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('53', '53', '53', '2009-06-29 14:59:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('54', '54', '54', '2013-09-28 04:44:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('55', '55', '55', '2014-07-30 00:28:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('56', '56', '56', '1995-04-29 04:18:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('57', '57', '57', '2007-04-03 00:37:53');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('58', '58', '58', '2018-04-18 04:12:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('59', '59', '59', '1982-03-30 05:33:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('60', '60', '60', '2006-05-05 03:00:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('61', '61', '61', '1988-10-11 13:03:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('62', '62', '62', '1983-03-05 15:56:52');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('63', '63', '63', '2019-05-23 01:06:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('64', '64', '64', '1993-04-03 15:14:33');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('65', '65', '65', '2004-04-08 20:56:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('66', '66', '66', '1999-03-06 00:10:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('67', '67', '67', '1993-01-21 11:16:26');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('68', '68', '68', '2016-08-27 14:24:48');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('69', '69', '69', '2004-05-28 14:35:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('70', '70', '70', '1994-02-05 22:20:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('71', '71', '71', '1993-04-24 23:01:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('72', '72', '72', '1978-05-28 16:10:18');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('73', '73', '73', '1992-06-02 16:55:58');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('74', '74', '74', '1985-05-11 14:35:42');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('75', '75', '75', '1996-10-13 04:21:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('76', '76', '76', '1977-05-23 22:36:47');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('77', '77', '77', '2008-07-19 19:30:59');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('78', '78', '78', '1989-05-23 08:17:41');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('79', '79', '79', '1981-10-11 15:49:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('80', '80', '80', '1993-10-26 13:51:25');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('81', '81', '81', '2007-02-01 20:06:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('82', '82', '82', '1973-11-10 21:54:08');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('83', '83', '83', '2000-05-20 19:50:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('84', '84', '84', '1995-04-26 23:05:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('85', '85', '85', '2003-07-29 12:37:12');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('86', '86', '86', '1980-05-17 22:31:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('87', '87', '87', '2004-10-09 13:59:50');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('88', '88', '88', '1994-07-31 10:01:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('89', '89', '89', '1982-12-11 17:19:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('90', '90', '90', '1977-07-24 21:38:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('91', '91', '91', '2001-02-28 18:07:21');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('92', '92', '92', '2002-04-11 16:06:31');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('93', '93', '93', '1989-06-06 01:17:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('94', '94', '94', '2000-01-15 05:46:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('95', '95', '95', '1990-01-21 19:26:32');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('96', '96', '96', '2001-03-14 13:16:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('97', '97', '97', '1987-01-07 10:24:00');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('98', '98', '98', '1971-08-22 18:21:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('99', '99', '99', '1987-07-15 05:24:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('100', '100', '100', '1990-03-06 04:36:53');


DROP TABLE IF EXISTS `photo_albums`;
CREATE TABLE `photo_albums` (
	`id` SERIAL,
	`name` varchar(255) DEFAULT NULL,
    `user_id` BIGINT UNSIGNED DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE SET NULL,
  	PRIMARY KEY (`id`)
);

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'quia', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'voluptatem', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'beatae', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'beatae', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'pariatur', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'alias', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'nemo', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'ut', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'laborum', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'nobis', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'et', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'sequi', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'nemo', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'ratione', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'molestiae', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'vero', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'necessitatibus', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'aut', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'et', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'vero', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'quia', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'minima', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'expedita', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'quo', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'voluptas', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'a', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'quia', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'perferendis', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'et', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'itaque', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'at', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'ut', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'aspernatur', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'quibusdam', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'rem', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'sit', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'nam', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'ea', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'rem', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'qui', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'consequatur', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'velit', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'consequuntur', '43');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'et', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'fuga', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'quibusdam', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'iste', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'quo', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'atque', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'ut', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'sint', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'eos', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'earum', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'quia', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'vero', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'iusto', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'dolor', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'officiis', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'in', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'assumenda', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'et', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'est', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'cupiditate', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'praesentium', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'iste', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'nihil', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'labore', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'quia', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'deserunt', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'ut', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'sunt', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'quisquam', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'rerum', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'deserunt', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'ipsa', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'aperiam', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'nobis', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'dolorum', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'nobis', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'et', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'provident', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'nostrum', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'quia', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'voluptates', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'et', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'velit', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'doloribus', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'mollitia', '88');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'similique', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'fugit', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'odio', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'in', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'eum', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'nobis', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'iste', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'aspernatur', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'ex', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'vero', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'dignissimos', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'nihil', '100');


DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
	id SERIAL PRIMARY KEY,
	`album_id` BIGINT unsigned NOT NULL,
	`media_id` BIGINT unsigned NOT NULL,

	FOREIGN KEY (album_id) REFERENCES photo_albums(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (media_id) REFERENCES media(id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '11', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '12', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '13', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '14', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '15', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '16', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '17', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '18', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '19', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '20', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '21', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '22', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '23', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '24', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '25', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '26', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '27', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '28', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '29', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '30', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '31', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '32', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '33', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '34', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '35', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '36', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '37', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '38', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '39', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '40', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '41', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '42', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '43', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '44', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '45', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '46', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '47', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '48', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '49', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '50', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '51', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '52', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '53', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '54', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '55', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '56', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '57', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '58', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '59', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '60', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '61', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '62', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '63', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '64', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '65', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '66', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '67', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '68', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '69', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '70', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '71', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '72', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '73', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '74', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '75', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '76', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '77', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '78', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '79', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '80', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '81', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '82', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '83', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '84', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '85', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '86', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '87', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '88', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '89', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '90', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '91', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '92', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '93', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '94', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '95', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '96', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '97', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '98', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '99', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '100', '100');


ALTER TABLE `profiles` ADD CONSTRAINT fk_photo_id
    FOREIGN KEY (photo_id) REFERENCES photos(id)
    ON UPDATE CASCADE ON DELETE set NULL;
