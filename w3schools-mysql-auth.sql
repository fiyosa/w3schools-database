/*
 Navicat Premium Data Transfer

 Source Server         : fys-mysql
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : w3school_auth

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 27/07/2024 17:19:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auths
-- ----------------------------
DROP TABLE IF EXISTS `auths`;
CREATE TABLE `auths`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `revoke` tinyint NOT NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `auth_ibfk_1`(`user_id` ASC) USING BTREE,
  CONSTRAINT `auths_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auths
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CategoryID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000000000 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales');
INSERT INTO `categories` VALUES (2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO `categories` VALUES (3, 'Confections', 'Desserts, candies, and sweet breads');
INSERT INTO `categories` VALUES (4, 'Dairy Products', 'Cheeses');
INSERT INTO `categories` VALUES (5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal');
INSERT INTO `categories` VALUES (6, 'Meat/Poultry', 'Prepared meats');
INSERT INTO `categories` VALUES (7, 'Produce', 'Dried fruit and bean curd');
INSERT INTO `categories` VALUES (999999999, 'Seafood', 'Seaweed and fish');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `CustomerName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ContactName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `PostalCode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`) USING BTREE,
  INDEX `user_id_customers`(`user_id` ASC) USING BTREE,
  CONSTRAINT `user_id_customers` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 70, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany');
INSERT INTO `customers` VALUES (2, 18, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico');
INSERT INTO `customers` VALUES (3, 23, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');
INSERT INTO `customers` VALUES (4, 100, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK');
INSERT INTO `customers` VALUES (5, 31, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden');
INSERT INTO `customers` VALUES (6, 45, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany');
INSERT INTO `customers` VALUES (7, 41, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France');
INSERT INTO `customers` VALUES (8, 74, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain');
INSERT INTO `customers` VALUES (9, 64, 'Bon app\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France');
INSERT INTO `customers` VALUES (10, 37, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada');
INSERT INTO `customers` VALUES (11, 101, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK');
INSERT INTO `customers` VALUES (12, 85, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina');
INSERT INTO `customers` VALUES (13, 40, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico');
INSERT INTO `customers` VALUES (14, 102, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland');
INSERT INTO `customers` VALUES (15, 89, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil');
INSERT INTO `customers` VALUES (16, 36, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK');
INSERT INTO `customers` VALUES (17, 99, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany');
INSERT INTO `customers` VALUES (18, 55, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France');
INSERT INTO `customers` VALUES (19, 21, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK');
INSERT INTO `customers` VALUES (20, 96, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria');
INSERT INTO `customers` VALUES (21, 24, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil');
INSERT INTO `customers` VALUES (22, 33, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain');
INSERT INTO `customers` VALUES (23, 75, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France');
INSERT INTO `customers` VALUES (24, 71, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden');
INSERT INTO `customers` VALUES (25, 90, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany');
INSERT INTO `customers` VALUES (26, 27, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France');
INSERT INTO `customers` VALUES (27, 82, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy');
INSERT INTO `customers` VALUES (28, 65, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal');
INSERT INTO `customers` VALUES (29, 35, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain');
INSERT INTO `customers` VALUES (30, 60, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain');
INSERT INTO `customers` VALUES (31, 20, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil');
INSERT INTO `customers` VALUES (32, 51, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA');
INSERT INTO `customers` VALUES (33, 69, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela');
INSERT INTO `customers` VALUES (34, 73, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil');
INSERT INTO `customers` VALUES (35, 29, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela');
INSERT INTO `customers` VALUES (36, 103, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA');
INSERT INTO `customers` VALUES (37, 84, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland');
INSERT INTO `customers` VALUES (38, 47, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK');
INSERT INTO `customers` VALUES (39, 91, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany');
INSERT INTO `customers` VALUES (40, 32, 'La corne d\'abondance', 'Daniel Tonini', '67, avenue de l\'Europe', 'Versailles', '78000', 'France');
INSERT INTO `customers` VALUES (41, 22, 'La maison d\'Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France');
INSERT INTO `customers` VALUES (42, 104, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada');
INSERT INTO `customers` VALUES (43, 57, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA');
INSERT INTO `customers` VALUES (44, 93, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany');
INSERT INTO `customers` VALUES (45, 53, 'Let\'s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA');
INSERT INTO `customers` VALUES (46, 28, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela');
INSERT INTO `customers` VALUES (47, 38, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela');
INSERT INTO `customers` VALUES (48, 39, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA');
INSERT INTO `customers` VALUES (49, 43, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy');
INSERT INTO `customers` VALUES (50, 30, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium');
INSERT INTO `customers` VALUES (51, 56, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada');
INSERT INTO `customers` VALUES (52, 17, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany');
INSERT INTO `customers` VALUES (53, 98, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK');
INSERT INTO `customers` VALUES (54, 105, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina');
INSERT INTO `customers` VALUES (55, 94, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA');
INSERT INTO `customers` VALUES (56, 49, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany');
INSERT INTO `customers` VALUES (57, 72, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France');
INSERT INTO `customers` VALUES (58, 44, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033', 'Mexico');
INSERT INTO `customers` VALUES (59, 42, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria');
INSERT INTO `customers` VALUES (60, 52, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal');
INSERT INTO `customers` VALUES (61, 26, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil');
INSERT INTO `customers` VALUES (62, 68, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil');
INSERT INTO `customers` VALUES (63, 50, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany');
INSERT INTO `customers` VALUES (64, 97, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina');
INSERT INTO `customers` VALUES (65, 88, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA');
INSERT INTO `customers` VALUES (66, 78, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy');
INSERT INTO `customers` VALUES (67, 54, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil');
INSERT INTO `customers` VALUES (68, 79, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland');
INSERT INTO `customers` VALUES (69, 16, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain');
INSERT INTO `customers` VALUES (70, 58, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway');
INSERT INTO `customers` VALUES (71, 59, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA');
INSERT INTO `customers` VALUES (72, 46, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK');
INSERT INTO `customers` VALUES (73, 61, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark');
INSERT INTO `customers` VALUES (74, 34, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France');
INSERT INTO `customers` VALUES (75, 25, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA');
INSERT INTO `customers` VALUES (76, 83, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium');
INSERT INTO `customers` VALUES (77, 67, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA');
INSERT INTO `customers` VALUES (78, 66, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA');
INSERT INTO `customers` VALUES (79, 62, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany');
INSERT INTO `customers` VALUES (80, 80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico');
INSERT INTO `customers` VALUES (81, 19, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil');
INSERT INTO `customers` VALUES (82, 48, 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA');
INSERT INTO `customers` VALUES (83, 81, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark');
INSERT INTO `customers` VALUES (84, 76, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France');
INSERT INTO `customers` VALUES (85, 86, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l\'Abbaye', 'Reims', '51100', 'France');
INSERT INTO `customers` VALUES (86, 95, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany');
INSERT INTO `customers` VALUES (87, 92, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland');
INSERT INTO `customers` VALUES (88, 87, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil');
INSERT INTO `customers` VALUES (89, 63, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA');
INSERT INTO `customers` VALUES (90, 77, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland');
INSERT INTO `customers` VALUES (91, 106, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `LastName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `BirthDate` date NULL DEFAULT NULL,
  `Photo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Notes` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`EmployeeID`) USING BTREE,
  INDEX `user_id_employees`(`user_id` ASC) USING BTREE,
  CONSTRAINT `user_id_employees` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 8, 'Davolio', 'Nancy', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.');
INSERT INTO `employees` VALUES (2, 2, 'Fuller', 'Andrew', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');
INSERT INTO `employees` VALUES (3, 4, 'Leverling', 'Janet', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.');
INSERT INTO `employees` VALUES (4, 6, 'Peacock', 'Margaret', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.');
INSERT INTO `employees` VALUES (5, 10, 'Buchanan', 'Steven', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.');
INSERT INTO `employees` VALUES (6, 7, 'Suyama', 'Michael', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO `employees` VALUES (7, 9, 'King', 'Robert', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.');
INSERT INTO `employees` VALUES (8, 5, 'Callahan', 'Laura', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.');
INSERT INTO `employees` VALUES (9, 3, 'Dodsworth', 'Anne', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.');
INSERT INTO `employees` VALUES (10, 1, 'West', 'Adam', '1928-09-19', 'EmpID10.pic', 'An old chum.');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details`  (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NULL DEFAULT NULL,
  `ProductID` int NULL DEFAULT NULL,
  `Quantity` int NULL DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`) USING BTREE,
  INDEX `OrderID`(`OrderID` ASC) USING BTREE,
  INDEX `ProductID`(`ProductID` ASC) USING BTREE,
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 519 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES (1, 10248, 11, 12);
INSERT INTO `order_details` VALUES (2, 10248, 42, 10);
INSERT INTO `order_details` VALUES (3, 10248, 72, 5);
INSERT INTO `order_details` VALUES (4, 10249, 14, 9);
INSERT INTO `order_details` VALUES (5, 10249, 51, 40);
INSERT INTO `order_details` VALUES (6, 10250, 41, 10);
INSERT INTO `order_details` VALUES (7, 10250, 51, 35);
INSERT INTO `order_details` VALUES (8, 10250, 65, 15);
INSERT INTO `order_details` VALUES (9, 10251, 22, 6);
INSERT INTO `order_details` VALUES (10, 10251, 57, 15);
INSERT INTO `order_details` VALUES (11, 10251, 65, 20);
INSERT INTO `order_details` VALUES (12, 10252, 20, 40);
INSERT INTO `order_details` VALUES (13, 10252, 33, 25);
INSERT INTO `order_details` VALUES (14, 10252, 60, 40);
INSERT INTO `order_details` VALUES (15, 10253, 31, 20);
INSERT INTO `order_details` VALUES (16, 10253, 39, 42);
INSERT INTO `order_details` VALUES (17, 10253, 49, 40);
INSERT INTO `order_details` VALUES (18, 10254, 24, 15);
INSERT INTO `order_details` VALUES (19, 10254, 55, 21);
INSERT INTO `order_details` VALUES (20, 10254, 74, 21);
INSERT INTO `order_details` VALUES (21, 10255, 2, 20);
INSERT INTO `order_details` VALUES (22, 10255, 16, 35);
INSERT INTO `order_details` VALUES (23, 10255, 36, 25);
INSERT INTO `order_details` VALUES (24, 10255, 59, 30);
INSERT INTO `order_details` VALUES (25, 10256, 53, 15);
INSERT INTO `order_details` VALUES (26, 10256, 77, 12);
INSERT INTO `order_details` VALUES (27, 10257, 27, 25);
INSERT INTO `order_details` VALUES (28, 10257, 39, 6);
INSERT INTO `order_details` VALUES (29, 10257, 77, 15);
INSERT INTO `order_details` VALUES (30, 10258, 2, 50);
INSERT INTO `order_details` VALUES (31, 10258, 5, 65);
INSERT INTO `order_details` VALUES (32, 10258, 32, 6);
INSERT INTO `order_details` VALUES (33, 10259, 21, 10);
INSERT INTO `order_details` VALUES (34, 10259, 37, 1);
INSERT INTO `order_details` VALUES (35, 10260, 41, 16);
INSERT INTO `order_details` VALUES (36, 10260, 57, 50);
INSERT INTO `order_details` VALUES (37, 10260, 62, 15);
INSERT INTO `order_details` VALUES (38, 10260, 70, 21);
INSERT INTO `order_details` VALUES (39, 10261, 21, 20);
INSERT INTO `order_details` VALUES (40, 10261, 35, 20);
INSERT INTO `order_details` VALUES (41, 10262, 5, 12);
INSERT INTO `order_details` VALUES (42, 10262, 7, 15);
INSERT INTO `order_details` VALUES (43, 10262, 56, 2);
INSERT INTO `order_details` VALUES (44, 10263, 16, 60);
INSERT INTO `order_details` VALUES (45, 10263, 24, 28);
INSERT INTO `order_details` VALUES (46, 10263, 30, 60);
INSERT INTO `order_details` VALUES (47, 10263, 74, 36);
INSERT INTO `order_details` VALUES (48, 10264, 2, 35);
INSERT INTO `order_details` VALUES (49, 10264, 41, 25);
INSERT INTO `order_details` VALUES (50, 10265, 17, 30);
INSERT INTO `order_details` VALUES (51, 10265, 70, 20);
INSERT INTO `order_details` VALUES (52, 10266, 12, 12);
INSERT INTO `order_details` VALUES (53, 10267, 40, 50);
INSERT INTO `order_details` VALUES (54, 10267, 59, 70);
INSERT INTO `order_details` VALUES (55, 10267, 76, 15);
INSERT INTO `order_details` VALUES (56, 10268, 29, 10);
INSERT INTO `order_details` VALUES (57, 10268, 72, 4);
INSERT INTO `order_details` VALUES (58, 10269, 33, 60);
INSERT INTO `order_details` VALUES (59, 10269, 72, 20);
INSERT INTO `order_details` VALUES (60, 10270, 36, 30);
INSERT INTO `order_details` VALUES (61, 10270, 43, 25);
INSERT INTO `order_details` VALUES (62, 10271, 33, 24);
INSERT INTO `order_details` VALUES (63, 10272, 20, 6);
INSERT INTO `order_details` VALUES (64, 10272, 31, 40);
INSERT INTO `order_details` VALUES (65, 10272, 72, 24);
INSERT INTO `order_details` VALUES (66, 10273, 10, 24);
INSERT INTO `order_details` VALUES (67, 10273, 31, 15);
INSERT INTO `order_details` VALUES (68, 10273, 33, 20);
INSERT INTO `order_details` VALUES (69, 10273, 40, 60);
INSERT INTO `order_details` VALUES (70, 10273, 76, 33);
INSERT INTO `order_details` VALUES (71, 10274, 71, 20);
INSERT INTO `order_details` VALUES (72, 10274, 72, 7);
INSERT INTO `order_details` VALUES (73, 10275, 24, 12);
INSERT INTO `order_details` VALUES (74, 10275, 59, 6);
INSERT INTO `order_details` VALUES (75, 10276, 10, 15);
INSERT INTO `order_details` VALUES (76, 10276, 13, 10);
INSERT INTO `order_details` VALUES (77, 10277, 28, 20);
INSERT INTO `order_details` VALUES (78, 10277, 62, 12);
INSERT INTO `order_details` VALUES (79, 10278, 44, 16);
INSERT INTO `order_details` VALUES (80, 10278, 59, 15);
INSERT INTO `order_details` VALUES (81, 10278, 63, 8);
INSERT INTO `order_details` VALUES (82, 10278, 73, 25);
INSERT INTO `order_details` VALUES (83, 10279, 17, 15);
INSERT INTO `order_details` VALUES (84, 10280, 24, 12);
INSERT INTO `order_details` VALUES (85, 10280, 55, 20);
INSERT INTO `order_details` VALUES (86, 10280, 75, 30);
INSERT INTO `order_details` VALUES (87, 10281, 19, 1);
INSERT INTO `order_details` VALUES (88, 10281, 24, 6);
INSERT INTO `order_details` VALUES (89, 10281, 35, 4);
INSERT INTO `order_details` VALUES (90, 10282, 30, 6);
INSERT INTO `order_details` VALUES (91, 10282, 57, 2);
INSERT INTO `order_details` VALUES (92, 10283, 15, 20);
INSERT INTO `order_details` VALUES (93, 10283, 19, 18);
INSERT INTO `order_details` VALUES (94, 10283, 60, 35);
INSERT INTO `order_details` VALUES (95, 10283, 72, 3);
INSERT INTO `order_details` VALUES (96, 10284, 27, 15);
INSERT INTO `order_details` VALUES (97, 10284, 44, 21);
INSERT INTO `order_details` VALUES (98, 10284, 60, 20);
INSERT INTO `order_details` VALUES (99, 10284, 67, 5);
INSERT INTO `order_details` VALUES (100, 10285, 1, 45);
INSERT INTO `order_details` VALUES (101, 10285, 40, 40);
INSERT INTO `order_details` VALUES (102, 10285, 53, 36);
INSERT INTO `order_details` VALUES (103, 10286, 35, 100);
INSERT INTO `order_details` VALUES (104, 10286, 62, 40);
INSERT INTO `order_details` VALUES (105, 10287, 16, 40);
INSERT INTO `order_details` VALUES (106, 10287, 34, 20);
INSERT INTO `order_details` VALUES (107, 10287, 46, 15);
INSERT INTO `order_details` VALUES (108, 10288, 54, 10);
INSERT INTO `order_details` VALUES (109, 10288, 68, 3);
INSERT INTO `order_details` VALUES (110, 10289, 3, 30);
INSERT INTO `order_details` VALUES (111, 10289, 64, 9);
INSERT INTO `order_details` VALUES (112, 10290, 5, 20);
INSERT INTO `order_details` VALUES (113, 10290, 29, 15);
INSERT INTO `order_details` VALUES (114, 10290, 49, 15);
INSERT INTO `order_details` VALUES (115, 10290, 77, 10);
INSERT INTO `order_details` VALUES (116, 10291, 13, 20);
INSERT INTO `order_details` VALUES (117, 10291, 44, 24);
INSERT INTO `order_details` VALUES (118, 10291, 51, 2);
INSERT INTO `order_details` VALUES (119, 10292, 20, 20);
INSERT INTO `order_details` VALUES (120, 10293, 18, 12);
INSERT INTO `order_details` VALUES (121, 10293, 24, 10);
INSERT INTO `order_details` VALUES (122, 10293, 63, 5);
INSERT INTO `order_details` VALUES (123, 10293, 75, 6);
INSERT INTO `order_details` VALUES (124, 10294, 1, 18);
INSERT INTO `order_details` VALUES (125, 10294, 17, 15);
INSERT INTO `order_details` VALUES (126, 10294, 43, 15);
INSERT INTO `order_details` VALUES (127, 10294, 60, 21);
INSERT INTO `order_details` VALUES (128, 10294, 75, 6);
INSERT INTO `order_details` VALUES (129, 10295, 56, 4);
INSERT INTO `order_details` VALUES (130, 10296, 11, 12);
INSERT INTO `order_details` VALUES (131, 10296, 16, 30);
INSERT INTO `order_details` VALUES (132, 10296, 69, 15);
INSERT INTO `order_details` VALUES (133, 10297, 39, 60);
INSERT INTO `order_details` VALUES (134, 10297, 72, 20);
INSERT INTO `order_details` VALUES (135, 10298, 2, 40);
INSERT INTO `order_details` VALUES (136, 10298, 36, 40);
INSERT INTO `order_details` VALUES (137, 10298, 59, 30);
INSERT INTO `order_details` VALUES (138, 10298, 62, 15);
INSERT INTO `order_details` VALUES (139, 10299, 19, 15);
INSERT INTO `order_details` VALUES (140, 10299, 70, 20);
INSERT INTO `order_details` VALUES (141, 10300, 66, 30);
INSERT INTO `order_details` VALUES (142, 10300, 68, 20);
INSERT INTO `order_details` VALUES (143, 10301, 40, 10);
INSERT INTO `order_details` VALUES (144, 10301, 56, 20);
INSERT INTO `order_details` VALUES (145, 10302, 17, 40);
INSERT INTO `order_details` VALUES (146, 10302, 28, 28);
INSERT INTO `order_details` VALUES (147, 10302, 43, 12);
INSERT INTO `order_details` VALUES (148, 10303, 40, 40);
INSERT INTO `order_details` VALUES (149, 10303, 65, 30);
INSERT INTO `order_details` VALUES (150, 10303, 68, 15);
INSERT INTO `order_details` VALUES (151, 10304, 49, 30);
INSERT INTO `order_details` VALUES (152, 10304, 59, 10);
INSERT INTO `order_details` VALUES (153, 10304, 71, 2);
INSERT INTO `order_details` VALUES (154, 10305, 18, 25);
INSERT INTO `order_details` VALUES (155, 10305, 29, 25);
INSERT INTO `order_details` VALUES (156, 10305, 39, 30);
INSERT INTO `order_details` VALUES (157, 10306, 30, 10);
INSERT INTO `order_details` VALUES (158, 10306, 53, 10);
INSERT INTO `order_details` VALUES (159, 10306, 54, 5);
INSERT INTO `order_details` VALUES (160, 10307, 62, 10);
INSERT INTO `order_details` VALUES (161, 10307, 68, 3);
INSERT INTO `order_details` VALUES (162, 10308, 69, 1);
INSERT INTO `order_details` VALUES (163, 10308, 70, 5);
INSERT INTO `order_details` VALUES (164, 10309, 4, 20);
INSERT INTO `order_details` VALUES (165, 10309, 6, 30);
INSERT INTO `order_details` VALUES (166, 10309, 42, 2);
INSERT INTO `order_details` VALUES (167, 10309, 43, 20);
INSERT INTO `order_details` VALUES (168, 10309, 71, 3);
INSERT INTO `order_details` VALUES (169, 10310, 16, 10);
INSERT INTO `order_details` VALUES (170, 10310, 62, 5);
INSERT INTO `order_details` VALUES (171, 10311, 42, 6);
INSERT INTO `order_details` VALUES (172, 10311, 69, 7);
INSERT INTO `order_details` VALUES (173, 10312, 28, 4);
INSERT INTO `order_details` VALUES (174, 10312, 43, 24);
INSERT INTO `order_details` VALUES (175, 10312, 53, 20);
INSERT INTO `order_details` VALUES (176, 10312, 75, 10);
INSERT INTO `order_details` VALUES (177, 10313, 36, 12);
INSERT INTO `order_details` VALUES (178, 10314, 32, 40);
INSERT INTO `order_details` VALUES (180, 10314, 62, 25);
INSERT INTO `order_details` VALUES (181, 10315, 34, 14);
INSERT INTO `order_details` VALUES (182, 10315, 70, 30);
INSERT INTO `order_details` VALUES (183, 10316, 41, 10);
INSERT INTO `order_details` VALUES (184, 10316, 62, 70);
INSERT INTO `order_details` VALUES (185, 10317, 1, 20);
INSERT INTO `order_details` VALUES (186, 10318, 41, 20);
INSERT INTO `order_details` VALUES (187, 10318, 76, 6);
INSERT INTO `order_details` VALUES (188, 10319, 17, 8);
INSERT INTO `order_details` VALUES (189, 10319, 28, 14);
INSERT INTO `order_details` VALUES (190, 10319, 76, 30);
INSERT INTO `order_details` VALUES (191, 10320, 71, 30);
INSERT INTO `order_details` VALUES (192, 10321, 35, 10);
INSERT INTO `order_details` VALUES (193, 10322, 52, 20);
INSERT INTO `order_details` VALUES (194, 10323, 15, 5);
INSERT INTO `order_details` VALUES (195, 10323, 25, 4);
INSERT INTO `order_details` VALUES (196, 10323, 39, 4);
INSERT INTO `order_details` VALUES (197, 10324, 16, 21);
INSERT INTO `order_details` VALUES (198, 10324, 35, 70);
INSERT INTO `order_details` VALUES (199, 10324, 46, 30);
INSERT INTO `order_details` VALUES (200, 10324, 59, 40);
INSERT INTO `order_details` VALUES (201, 10324, 63, 80);
INSERT INTO `order_details` VALUES (202, 10325, 6, 6);
INSERT INTO `order_details` VALUES (203, 10325, 13, 12);
INSERT INTO `order_details` VALUES (204, 10325, 14, 9);
INSERT INTO `order_details` VALUES (205, 10325, 31, 4);
INSERT INTO `order_details` VALUES (206, 10325, 72, 40);
INSERT INTO `order_details` VALUES (207, 10326, 4, 24);
INSERT INTO `order_details` VALUES (208, 10326, 57, 16);
INSERT INTO `order_details` VALUES (209, 10326, 75, 50);
INSERT INTO `order_details` VALUES (210, 10327, 2, 25);
INSERT INTO `order_details` VALUES (211, 10327, 11, 50);
INSERT INTO `order_details` VALUES (212, 10327, 30, 35);
INSERT INTO `order_details` VALUES (214, 10328, 59, 9);
INSERT INTO `order_details` VALUES (215, 10328, 65, 40);
INSERT INTO `order_details` VALUES (216, 10328, 68, 10);
INSERT INTO `order_details` VALUES (217, 10329, 19, 10);
INSERT INTO `order_details` VALUES (218, 10329, 30, 8);
INSERT INTO `order_details` VALUES (219, 10329, 38, 20);
INSERT INTO `order_details` VALUES (220, 10329, 56, 12);
INSERT INTO `order_details` VALUES (221, 10330, 26, 50);
INSERT INTO `order_details` VALUES (222, 10330, 72, 25);
INSERT INTO `order_details` VALUES (223, 10331, 54, 15);
INSERT INTO `order_details` VALUES (224, 10332, 18, 40);
INSERT INTO `order_details` VALUES (225, 10332, 42, 10);
INSERT INTO `order_details` VALUES (226, 10332, 47, 16);
INSERT INTO `order_details` VALUES (227, 10333, 14, 10);
INSERT INTO `order_details` VALUES (228, 10333, 21, 10);
INSERT INTO `order_details` VALUES (229, 10333, 71, 40);
INSERT INTO `order_details` VALUES (230, 10334, 52, 8);
INSERT INTO `order_details` VALUES (231, 10334, 68, 10);
INSERT INTO `order_details` VALUES (232, 10335, 2, 7);
INSERT INTO `order_details` VALUES (233, 10335, 31, 25);
INSERT INTO `order_details` VALUES (234, 10335, 32, 6);
INSERT INTO `order_details` VALUES (235, 10335, 51, 48);
INSERT INTO `order_details` VALUES (236, 10336, 4, 18);
INSERT INTO `order_details` VALUES (237, 10337, 23, 40);
INSERT INTO `order_details` VALUES (238, 10337, 26, 24);
INSERT INTO `order_details` VALUES (239, 10337, 36, 20);
INSERT INTO `order_details` VALUES (240, 10337, 37, 28);
INSERT INTO `order_details` VALUES (241, 10337, 72, 25);
INSERT INTO `order_details` VALUES (242, 10338, 17, 20);
INSERT INTO `order_details` VALUES (243, 10338, 30, 15);
INSERT INTO `order_details` VALUES (244, 10339, 4, 10);
INSERT INTO `order_details` VALUES (245, 10339, 17, 70);
INSERT INTO `order_details` VALUES (246, 10339, 62, 28);
INSERT INTO `order_details` VALUES (247, 10340, 18, 20);
INSERT INTO `order_details` VALUES (248, 10340, 41, 12);
INSERT INTO `order_details` VALUES (249, 10340, 43, 40);
INSERT INTO `order_details` VALUES (250, 10341, 33, 8);
INSERT INTO `order_details` VALUES (251, 10341, 59, 9);
INSERT INTO `order_details` VALUES (252, 10342, 2, 24);
INSERT INTO `order_details` VALUES (253, 10342, 31, 56);
INSERT INTO `order_details` VALUES (254, 10342, 36, 40);
INSERT INTO `order_details` VALUES (255, 10342, 55, 40);
INSERT INTO `order_details` VALUES (256, 10343, 64, 50);
INSERT INTO `order_details` VALUES (257, 10343, 68, 4);
INSERT INTO `order_details` VALUES (258, 10343, 76, 15);
INSERT INTO `order_details` VALUES (259, 10344, 4, 35);
INSERT INTO `order_details` VALUES (260, 10344, 8, 70);
INSERT INTO `order_details` VALUES (261, 10345, 8, 70);
INSERT INTO `order_details` VALUES (262, 10345, 19, 80);
INSERT INTO `order_details` VALUES (263, 10345, 42, 9);
INSERT INTO `order_details` VALUES (264, 10346, 17, 36);
INSERT INTO `order_details` VALUES (265, 10346, 56, 20);
INSERT INTO `order_details` VALUES (266, 10347, 25, 10);
INSERT INTO `order_details` VALUES (267, 10347, 39, 50);
INSERT INTO `order_details` VALUES (268, 10347, 40, 4);
INSERT INTO `order_details` VALUES (269, 10347, 75, 6);
INSERT INTO `order_details` VALUES (270, 10348, 1, 15);
INSERT INTO `order_details` VALUES (271, 10348, 23, 25);
INSERT INTO `order_details` VALUES (272, 10349, 54, 24);
INSERT INTO `order_details` VALUES (273, 10350, 50, 15);
INSERT INTO `order_details` VALUES (274, 10350, 69, 18);
INSERT INTO `order_details` VALUES (275, 10351, 38, 20);
INSERT INTO `order_details` VALUES (276, 10351, 41, 13);
INSERT INTO `order_details` VALUES (277, 10351, 44, 77);
INSERT INTO `order_details` VALUES (278, 10351, 65, 10);
INSERT INTO `order_details` VALUES (279, 10352, 24, 10);
INSERT INTO `order_details` VALUES (280, 10352, 54, 20);
INSERT INTO `order_details` VALUES (281, 10353, 11, 12);
INSERT INTO `order_details` VALUES (282, 10353, 38, 50);
INSERT INTO `order_details` VALUES (283, 10354, 1, 12);
INSERT INTO `order_details` VALUES (284, 10354, 29, 4);
INSERT INTO `order_details` VALUES (285, 10355, 24, 25);
INSERT INTO `order_details` VALUES (286, 10355, 57, 25);
INSERT INTO `order_details` VALUES (287, 10356, 31, 30);
INSERT INTO `order_details` VALUES (288, 10356, 55, 12);
INSERT INTO `order_details` VALUES (289, 10356, 69, 20);
INSERT INTO `order_details` VALUES (290, 10357, 10, 30);
INSERT INTO `order_details` VALUES (291, 10357, 26, 16);
INSERT INTO `order_details` VALUES (292, 10357, 60, 8);
INSERT INTO `order_details` VALUES (293, 10358, 24, 10);
INSERT INTO `order_details` VALUES (294, 10358, 34, 10);
INSERT INTO `order_details` VALUES (295, 10358, 36, 20);
INSERT INTO `order_details` VALUES (296, 10359, 16, 56);
INSERT INTO `order_details` VALUES (297, 10359, 31, 70);
INSERT INTO `order_details` VALUES (298, 10359, 60, 80);
INSERT INTO `order_details` VALUES (299, 10360, 28, 30);
INSERT INTO `order_details` VALUES (300, 10360, 29, 35);
INSERT INTO `order_details` VALUES (301, 10360, 38, 10);
INSERT INTO `order_details` VALUES (302, 10360, 49, 35);
INSERT INTO `order_details` VALUES (303, 10360, 54, 28);
INSERT INTO `order_details` VALUES (304, 10361, 39, 54);
INSERT INTO `order_details` VALUES (305, 10361, 60, 55);
INSERT INTO `order_details` VALUES (306, 10362, 25, 50);
INSERT INTO `order_details` VALUES (307, 10362, 51, 20);
INSERT INTO `order_details` VALUES (308, 10362, 54, 24);
INSERT INTO `order_details` VALUES (309, 10363, 31, 20);
INSERT INTO `order_details` VALUES (310, 10363, 75, 12);
INSERT INTO `order_details` VALUES (311, 10363, 76, 12);
INSERT INTO `order_details` VALUES (312, 10364, 69, 30);
INSERT INTO `order_details` VALUES (313, 10364, 71, 5);
INSERT INTO `order_details` VALUES (314, 10365, 11, 24);
INSERT INTO `order_details` VALUES (315, 10366, 65, 5);
INSERT INTO `order_details` VALUES (316, 10366, 77, 5);
INSERT INTO `order_details` VALUES (317, 10367, 34, 36);
INSERT INTO `order_details` VALUES (318, 10367, 54, 18);
INSERT INTO `order_details` VALUES (319, 10367, 65, 15);
INSERT INTO `order_details` VALUES (320, 10367, 77, 7);
INSERT INTO `order_details` VALUES (321, 10368, 21, 5);
INSERT INTO `order_details` VALUES (322, 10368, 28, 13);
INSERT INTO `order_details` VALUES (323, 10368, 57, 25);
INSERT INTO `order_details` VALUES (324, 10368, 64, 35);
INSERT INTO `order_details` VALUES (325, 10369, 29, 20);
INSERT INTO `order_details` VALUES (326, 10369, 56, 18);
INSERT INTO `order_details` VALUES (327, 10370, 1, 15);
INSERT INTO `order_details` VALUES (328, 10370, 64, 30);
INSERT INTO `order_details` VALUES (329, 10370, 74, 20);
INSERT INTO `order_details` VALUES (330, 10371, 36, 6);
INSERT INTO `order_details` VALUES (331, 10372, 20, 12);
INSERT INTO `order_details` VALUES (332, 10372, 38, 40);
INSERT INTO `order_details` VALUES (333, 10372, 60, 70);
INSERT INTO `order_details` VALUES (334, 10372, 72, 42);
INSERT INTO `order_details` VALUES (336, 10373, 71, 50);
INSERT INTO `order_details` VALUES (337, 10374, 31, 30);
INSERT INTO `order_details` VALUES (339, 10375, 14, 15);
INSERT INTO `order_details` VALUES (340, 10375, 54, 10);
INSERT INTO `order_details` VALUES (341, 10376, 31, 42);
INSERT INTO `order_details` VALUES (342, 10377, 28, 20);
INSERT INTO `order_details` VALUES (343, 10377, 39, 20);
INSERT INTO `order_details` VALUES (344, 10378, 71, 6);
INSERT INTO `order_details` VALUES (345, 10379, 41, 8);
INSERT INTO `order_details` VALUES (346, 10379, 63, 16);
INSERT INTO `order_details` VALUES (347, 10379, 65, 20);
INSERT INTO `order_details` VALUES (348, 10380, 30, 18);
INSERT INTO `order_details` VALUES (349, 10380, 53, 20);
INSERT INTO `order_details` VALUES (350, 10380, 60, 6);
INSERT INTO `order_details` VALUES (351, 10380, 70, 30);
INSERT INTO `order_details` VALUES (352, 10381, 74, 14);
INSERT INTO `order_details` VALUES (353, 10382, 5, 32);
INSERT INTO `order_details` VALUES (354, 10382, 18, 9);
INSERT INTO `order_details` VALUES (355, 10382, 29, 14);
INSERT INTO `order_details` VALUES (356, 10382, 33, 60);
INSERT INTO `order_details` VALUES (357, 10382, 74, 50);
INSERT INTO `order_details` VALUES (358, 10383, 13, 20);
INSERT INTO `order_details` VALUES (359, 10383, 50, 15);
INSERT INTO `order_details` VALUES (360, 10383, 56, 20);
INSERT INTO `order_details` VALUES (361, 10384, 20, 28);
INSERT INTO `order_details` VALUES (362, 10384, 60, 15);
INSERT INTO `order_details` VALUES (363, 10385, 7, 10);
INSERT INTO `order_details` VALUES (364, 10385, 60, 20);
INSERT INTO `order_details` VALUES (365, 10385, 68, 8);
INSERT INTO `order_details` VALUES (366, 10386, 24, 15);
INSERT INTO `order_details` VALUES (367, 10386, 34, 10);
INSERT INTO `order_details` VALUES (368, 10387, 24, 15);
INSERT INTO `order_details` VALUES (369, 10387, 28, 6);
INSERT INTO `order_details` VALUES (370, 10387, 59, 12);
INSERT INTO `order_details` VALUES (371, 10387, 71, 15);
INSERT INTO `order_details` VALUES (372, 10388, 45, 15);
INSERT INTO `order_details` VALUES (373, 10388, 52, 20);
INSERT INTO `order_details` VALUES (374, 10388, 53, 40);
INSERT INTO `order_details` VALUES (375, 10389, 10, 16);
INSERT INTO `order_details` VALUES (376, 10389, 55, 15);
INSERT INTO `order_details` VALUES (377, 10389, 62, 20);
INSERT INTO `order_details` VALUES (378, 10389, 70, 30);
INSERT INTO `order_details` VALUES (379, 10390, 31, 60);
INSERT INTO `order_details` VALUES (380, 10390, 35, 40);
INSERT INTO `order_details` VALUES (381, 10390, 46, 45);
INSERT INTO `order_details` VALUES (382, 10390, 72, 24);
INSERT INTO `order_details` VALUES (383, 10391, 13, 18);
INSERT INTO `order_details` VALUES (384, 10392, 69, 50);
INSERT INTO `order_details` VALUES (385, 10393, 2, 25);
INSERT INTO `order_details` VALUES (386, 10393, 14, 42);
INSERT INTO `order_details` VALUES (387, 10393, 25, 7);
INSERT INTO `order_details` VALUES (388, 10393, 26, 70);
INSERT INTO `order_details` VALUES (389, 10393, 31, 32);
INSERT INTO `order_details` VALUES (390, 10394, 13, 10);
INSERT INTO `order_details` VALUES (391, 10394, 62, 10);
INSERT INTO `order_details` VALUES (392, 10395, 46, 28);
INSERT INTO `order_details` VALUES (393, 10395, 53, 70);
INSERT INTO `order_details` VALUES (394, 10395, 69, 8);
INSERT INTO `order_details` VALUES (395, 10396, 23, 40);
INSERT INTO `order_details` VALUES (396, 10396, 71, 60);
INSERT INTO `order_details` VALUES (397, 10396, 72, 21);
INSERT INTO `order_details` VALUES (398, 10397, 21, 10);
INSERT INTO `order_details` VALUES (399, 10397, 51, 18);
INSERT INTO `order_details` VALUES (400, 10398, 35, 30);
INSERT INTO `order_details` VALUES (401, 10398, 55, 120);
INSERT INTO `order_details` VALUES (402, 10399, 68, 60);
INSERT INTO `order_details` VALUES (403, 10399, 71, 30);
INSERT INTO `order_details` VALUES (404, 10399, 76, 35);
INSERT INTO `order_details` VALUES (405, 10399, 77, 14);
INSERT INTO `order_details` VALUES (406, 10400, 29, 21);
INSERT INTO `order_details` VALUES (407, 10400, 35, 35);
INSERT INTO `order_details` VALUES (408, 10400, 49, 30);
INSERT INTO `order_details` VALUES (409, 10401, 30, 18);
INSERT INTO `order_details` VALUES (410, 10401, 56, 70);
INSERT INTO `order_details` VALUES (411, 10401, 65, 20);
INSERT INTO `order_details` VALUES (412, 10401, 71, 60);
INSERT INTO `order_details` VALUES (413, 10402, 23, 60);
INSERT INTO `order_details` VALUES (414, 10402, 63, 65);
INSERT INTO `order_details` VALUES (415, 10403, 16, 21);
INSERT INTO `order_details` VALUES (416, 10403, 48, 70);
INSERT INTO `order_details` VALUES (417, 10404, 26, 30);
INSERT INTO `order_details` VALUES (418, 10404, 42, 40);
INSERT INTO `order_details` VALUES (419, 10404, 49, 30);
INSERT INTO `order_details` VALUES (420, 10405, 3, 50);
INSERT INTO `order_details` VALUES (421, 10406, 1, 10);
INSERT INTO `order_details` VALUES (422, 10406, 21, 30);
INSERT INTO `order_details` VALUES (423, 10406, 28, 42);
INSERT INTO `order_details` VALUES (424, 10406, 36, 5);
INSERT INTO `order_details` VALUES (425, 10406, 40, 2);
INSERT INTO `order_details` VALUES (426, 10407, 11, 30);
INSERT INTO `order_details` VALUES (427, 10407, 69, 15);
INSERT INTO `order_details` VALUES (428, 10407, 71, 15);
INSERT INTO `order_details` VALUES (429, 10408, 37, 10);
INSERT INTO `order_details` VALUES (430, 10408, 54, 6);
INSERT INTO `order_details` VALUES (431, 10408, 62, 35);
INSERT INTO `order_details` VALUES (432, 10409, 14, 12);
INSERT INTO `order_details` VALUES (433, 10409, 21, 12);
INSERT INTO `order_details` VALUES (434, 10410, 33, 49);
INSERT INTO `order_details` VALUES (435, 10410, 59, 16);
INSERT INTO `order_details` VALUES (436, 10411, 41, 25);
INSERT INTO `order_details` VALUES (437, 10411, 44, 40);
INSERT INTO `order_details` VALUES (438, 10411, 59, 9);
INSERT INTO `order_details` VALUES (439, 10412, 14, 20);
INSERT INTO `order_details` VALUES (440, 10413, 1, 24);
INSERT INTO `order_details` VALUES (441, 10413, 62, 40);
INSERT INTO `order_details` VALUES (442, 10413, 76, 14);
INSERT INTO `order_details` VALUES (443, 10414, 19, 18);
INSERT INTO `order_details` VALUES (444, 10414, 33, 50);
INSERT INTO `order_details` VALUES (445, 10415, 17, 2);
INSERT INTO `order_details` VALUES (446, 10415, 33, 20);
INSERT INTO `order_details` VALUES (447, 10416, 19, 20);
INSERT INTO `order_details` VALUES (448, 10416, 53, 10);
INSERT INTO `order_details` VALUES (449, 10416, 57, 20);
INSERT INTO `order_details` VALUES (450, 10417, 38, 50);
INSERT INTO `order_details` VALUES (451, 10417, 46, 2);
INSERT INTO `order_details` VALUES (452, 10417, 68, 36);
INSERT INTO `order_details` VALUES (453, 10417, 77, 35);
INSERT INTO `order_details` VALUES (454, 10418, 2, 60);
INSERT INTO `order_details` VALUES (455, 10418, 47, 55);
INSERT INTO `order_details` VALUES (456, 10418, 61, 16);
INSERT INTO `order_details` VALUES (457, 10418, 74, 15);
INSERT INTO `order_details` VALUES (458, 10419, 60, 60);
INSERT INTO `order_details` VALUES (459, 10419, 69, 20);
INSERT INTO `order_details` VALUES (460, 10420, 9, 20);
INSERT INTO `order_details` VALUES (461, 10420, 13, 2);
INSERT INTO `order_details` VALUES (462, 10420, 70, 8);
INSERT INTO `order_details` VALUES (463, 10420, 73, 20);
INSERT INTO `order_details` VALUES (464, 10421, 19, 4);
INSERT INTO `order_details` VALUES (465, 10421, 26, 30);
INSERT INTO `order_details` VALUES (466, 10421, 53, 15);
INSERT INTO `order_details` VALUES (467, 10421, 77, 10);
INSERT INTO `order_details` VALUES (468, 10422, 26, 2);
INSERT INTO `order_details` VALUES (469, 10423, 31, 14);
INSERT INTO `order_details` VALUES (470, 10423, 59, 20);
INSERT INTO `order_details` VALUES (471, 10424, 35, 60);
INSERT INTO `order_details` VALUES (472, 10424, 38, 49);
INSERT INTO `order_details` VALUES (473, 10424, 68, 30);
INSERT INTO `order_details` VALUES (474, 10425, 55, 10);
INSERT INTO `order_details` VALUES (475, 10425, 76, 20);
INSERT INTO `order_details` VALUES (476, 10426, 56, 5);
INSERT INTO `order_details` VALUES (477, 10426, 64, 7);
INSERT INTO `order_details` VALUES (478, 10427, 14, 35);
INSERT INTO `order_details` VALUES (479, 10428, 46, 20);
INSERT INTO `order_details` VALUES (480, 10429, 50, 40);
INSERT INTO `order_details` VALUES (481, 10429, 63, 35);
INSERT INTO `order_details` VALUES (482, 10430, 17, 45);
INSERT INTO `order_details` VALUES (483, 10430, 21, 50);
INSERT INTO `order_details` VALUES (484, 10430, 56, 30);
INSERT INTO `order_details` VALUES (485, 10430, 59, 70);
INSERT INTO `order_details` VALUES (486, 10431, 17, 50);
INSERT INTO `order_details` VALUES (487, 10431, 40, 50);
INSERT INTO `order_details` VALUES (488, 10431, 47, 30);
INSERT INTO `order_details` VALUES (489, 10432, 26, 10);
INSERT INTO `order_details` VALUES (490, 10432, 54, 40);
INSERT INTO `order_details` VALUES (491, 10433, 56, 28);
INSERT INTO `order_details` VALUES (492, 10434, 11, 6);
INSERT INTO `order_details` VALUES (493, 10434, 76, 18);
INSERT INTO `order_details` VALUES (494, 10435, 2, 10);
INSERT INTO `order_details` VALUES (495, 10435, 22, 12);
INSERT INTO `order_details` VALUES (496, 10435, 72, 10);
INSERT INTO `order_details` VALUES (497, 10436, 46, 5);
INSERT INTO `order_details` VALUES (498, 10436, 56, 40);
INSERT INTO `order_details` VALUES (499, 10436, 64, 30);
INSERT INTO `order_details` VALUES (500, 10436, 75, 24);
INSERT INTO `order_details` VALUES (501, 10437, 53, 15);
INSERT INTO `order_details` VALUES (502, 10438, 19, 15);
INSERT INTO `order_details` VALUES (503, 10438, 34, 20);
INSERT INTO `order_details` VALUES (504, 10438, 57, 15);
INSERT INTO `order_details` VALUES (505, 10439, 12, 15);
INSERT INTO `order_details` VALUES (506, 10439, 16, 16);
INSERT INTO `order_details` VALUES (507, 10439, 64, 6);
INSERT INTO `order_details` VALUES (508, 10439, 74, 30);
INSERT INTO `order_details` VALUES (509, 10440, 2, 45);
INSERT INTO `order_details` VALUES (510, 10440, 16, 49);
INSERT INTO `order_details` VALUES (511, 10440, 29, 24);
INSERT INTO `order_details` VALUES (512, 10440, 61, 90);
INSERT INTO `order_details` VALUES (513, 10441, 27, 50);
INSERT INTO `order_details` VALUES (514, 10442, 11, 30);
INSERT INTO `order_details` VALUES (515, 10442, 54, 80);
INSERT INTO `order_details` VALUES (516, 10442, 66, 60);
INSERT INTO `order_details` VALUES (517, 10443, 11, 6);
INSERT INTO `order_details` VALUES (518, 10443, 28, 12);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NULL DEFAULT NULL,
  `EmployeeID` int NULL DEFAULT NULL,
  `OrderDate` date NULL DEFAULT NULL,
  `ShipperID` int NULL DEFAULT NULL,
  PRIMARY KEY (`OrderID`) USING BTREE,
  INDEX `CustomerID`(`CustomerID` ASC) USING BTREE,
  INDEX `EmployeeID`(`EmployeeID` ASC) USING BTREE,
  INDEX `ShipperID`(`ShipperID` ASC) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10444 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (10248, 90, 5, '1996-07-04', 3);
INSERT INTO `orders` VALUES (10249, 81, 6, '1996-07-05', 1);
INSERT INTO `orders` VALUES (10250, 34, 4, '1996-07-08', 2);
INSERT INTO `orders` VALUES (10251, 84, 3, '1996-07-08', 1);
INSERT INTO `orders` VALUES (10252, 76, 4, '1996-07-09', 2);
INSERT INTO `orders` VALUES (10253, 34, 3, '1996-07-10', 2);
INSERT INTO `orders` VALUES (10254, 14, 5, '1996-07-11', 2);
INSERT INTO `orders` VALUES (10255, 68, 9, '1996-07-12', 3);
INSERT INTO `orders` VALUES (10256, 88, 3, '1996-07-15', 2);
INSERT INTO `orders` VALUES (10257, 35, 4, '1996-07-16', 3);
INSERT INTO `orders` VALUES (10258, 20, 1, '1996-07-17', 1);
INSERT INTO `orders` VALUES (10259, 13, 4, '1996-07-18', 3);
INSERT INTO `orders` VALUES (10260, 55, 4, '1996-07-19', 1);
INSERT INTO `orders` VALUES (10261, 61, 4, '1996-07-19', 2);
INSERT INTO `orders` VALUES (10262, 65, 8, '1996-07-22', 3);
INSERT INTO `orders` VALUES (10263, 20, 9, '1996-07-23', 3);
INSERT INTO `orders` VALUES (10264, 24, 6, '1996-07-24', 3);
INSERT INTO `orders` VALUES (10265, 7, 2, '1996-07-25', 1);
INSERT INTO `orders` VALUES (10266, 87, 3, '1996-07-26', 3);
INSERT INTO `orders` VALUES (10267, 25, 4, '1996-07-29', 1);
INSERT INTO `orders` VALUES (10268, 33, 8, '1996-07-30', 3);
INSERT INTO `orders` VALUES (10269, 89, 5, '1996-07-31', 1);
INSERT INTO `orders` VALUES (10270, 87, 1, '1996-08-01', 1);
INSERT INTO `orders` VALUES (10271, 75, 6, '1996-08-01', 2);
INSERT INTO `orders` VALUES (10272, 65, 6, '1996-08-02', 2);
INSERT INTO `orders` VALUES (10273, 63, 3, '1996-08-05', 3);
INSERT INTO `orders` VALUES (10274, 85, 6, '1996-08-06', 1);
INSERT INTO `orders` VALUES (10275, 49, 1, '1996-08-07', 1);
INSERT INTO `orders` VALUES (10276, 80, 8, '1996-08-08', 3);
INSERT INTO `orders` VALUES (10277, 52, 2, '1996-08-09', 3);
INSERT INTO `orders` VALUES (10278, 5, 8, '1996-08-12', 2);
INSERT INTO `orders` VALUES (10279, 44, 8, '1996-08-13', 2);
INSERT INTO `orders` VALUES (10280, 5, 2, '1996-08-14', 1);
INSERT INTO `orders` VALUES (10281, 69, 4, '1996-08-14', 1);
INSERT INTO `orders` VALUES (10282, 69, 4, '1996-08-15', 1);
INSERT INTO `orders` VALUES (10283, 46, 3, '1996-08-16', 3);
INSERT INTO `orders` VALUES (10284, 44, 4, '1996-08-19', 1);
INSERT INTO `orders` VALUES (10285, 63, 1, '1996-08-20', 2);
INSERT INTO `orders` VALUES (10286, 63, 8, '1996-08-21', 3);
INSERT INTO `orders` VALUES (10287, 67, 8, '1996-08-22', 3);
INSERT INTO `orders` VALUES (10288, 66, 4, '1996-08-23', 1);
INSERT INTO `orders` VALUES (10289, 11, 7, '1996-08-26', 3);
INSERT INTO `orders` VALUES (10290, 15, 8, '1996-08-27', 1);
INSERT INTO `orders` VALUES (10291, 61, 6, '1996-08-27', 2);
INSERT INTO `orders` VALUES (10292, 81, 1, '1996-08-28', 2);
INSERT INTO `orders` VALUES (10293, 80, 1, '1996-08-29', 3);
INSERT INTO `orders` VALUES (10294, 65, 4, '1996-08-30', 2);
INSERT INTO `orders` VALUES (10295, 85, 2, '1996-09-02', 2);
INSERT INTO `orders` VALUES (10296, 46, 6, '1996-09-03', 1);
INSERT INTO `orders` VALUES (10297, 7, 5, '1996-09-04', 2);
INSERT INTO `orders` VALUES (10298, 37, 6, '1996-09-05', 2);
INSERT INTO `orders` VALUES (10299, 67, 4, '1996-09-06', 2);
INSERT INTO `orders` VALUES (10300, 49, 2, '1996-09-09', 2);
INSERT INTO `orders` VALUES (10301, 86, 8, '1996-09-09', 2);
INSERT INTO `orders` VALUES (10302, 76, 4, '1996-09-10', 2);
INSERT INTO `orders` VALUES (10303, 30, 7, '1996-09-11', 2);
INSERT INTO `orders` VALUES (10304, 80, 1, '1996-09-12', 2);
INSERT INTO `orders` VALUES (10305, 55, 8, '1996-09-13', 3);
INSERT INTO `orders` VALUES (10306, 69, 1, '1996-09-16', 3);
INSERT INTO `orders` VALUES (10307, 48, 2, '1996-09-17', 2);
INSERT INTO `orders` VALUES (10308, 2, 7, '1996-09-18', 3);
INSERT INTO `orders` VALUES (10309, 37, 3, '1996-09-19', 1);
INSERT INTO `orders` VALUES (10310, 77, 8, '1996-09-20', 2);
INSERT INTO `orders` VALUES (10311, 18, 1, '1996-09-20', 3);
INSERT INTO `orders` VALUES (10312, 86, 2, '1996-09-23', 2);
INSERT INTO `orders` VALUES (10313, 63, 2, '1996-09-24', 2);
INSERT INTO `orders` VALUES (10314, 65, 1, '1996-09-25', 2);
INSERT INTO `orders` VALUES (10315, 38, 4, '1996-09-26', 2);
INSERT INTO `orders` VALUES (10316, 65, 1, '1996-09-27', 3);
INSERT INTO `orders` VALUES (10317, 48, 6, '1996-09-30', 1);
INSERT INTO `orders` VALUES (10318, 38, 8, '1996-10-01', 2);
INSERT INTO `orders` VALUES (10319, 80, 7, '1996-10-02', 3);
INSERT INTO `orders` VALUES (10320, 87, 5, '1996-10-03', 3);
INSERT INTO `orders` VALUES (10321, 38, 3, '1996-10-03', 2);
INSERT INTO `orders` VALUES (10322, 58, 7, '1996-10-04', 3);
INSERT INTO `orders` VALUES (10323, 39, 4, '1996-10-07', 1);
INSERT INTO `orders` VALUES (10324, 71, 9, '1996-10-08', 1);
INSERT INTO `orders` VALUES (10325, 39, 1, '1996-10-09', 3);
INSERT INTO `orders` VALUES (10326, 8, 4, '1996-10-10', 2);
INSERT INTO `orders` VALUES (10327, 24, 2, '1996-10-11', 1);
INSERT INTO `orders` VALUES (10328, 28, 4, '1996-10-14', 3);
INSERT INTO `orders` VALUES (10329, 75, 4, '1996-10-15', 2);
INSERT INTO `orders` VALUES (10330, 46, 3, '1996-10-16', 1);
INSERT INTO `orders` VALUES (10331, 9, 9, '1996-10-16', 1);
INSERT INTO `orders` VALUES (10332, 51, 3, '1996-10-17', 2);
INSERT INTO `orders` VALUES (10333, 87, 5, '1996-10-18', 3);
INSERT INTO `orders` VALUES (10334, 84, 8, '1996-10-21', 2);
INSERT INTO `orders` VALUES (10335, 37, 7, '1996-10-22', 2);
INSERT INTO `orders` VALUES (10336, 60, 7, '1996-10-23', 2);
INSERT INTO `orders` VALUES (10337, 25, 4, '1996-10-24', 3);
INSERT INTO `orders` VALUES (10338, 55, 4, '1996-10-25', 3);
INSERT INTO `orders` VALUES (10339, 51, 2, '1996-10-28', 2);
INSERT INTO `orders` VALUES (10340, 9, 1, '1996-10-29', 3);
INSERT INTO `orders` VALUES (10341, 73, 7, '1996-10-29', 3);
INSERT INTO `orders` VALUES (10342, 25, 4, '1996-10-30', 2);
INSERT INTO `orders` VALUES (10343, 44, 4, '1996-10-31', 1);
INSERT INTO `orders` VALUES (10344, 89, 4, '1996-11-01', 2);
INSERT INTO `orders` VALUES (10345, 63, 2, '1996-11-04', 2);
INSERT INTO `orders` VALUES (10346, 65, 3, '1996-11-05', 3);
INSERT INTO `orders` VALUES (10347, 21, 4, '1996-11-06', 3);
INSERT INTO `orders` VALUES (10348, 86, 4, '1996-11-07', 2);
INSERT INTO `orders` VALUES (10349, 75, 7, '1996-11-08', 1);
INSERT INTO `orders` VALUES (10350, 41, 6, '1996-11-11', 2);
INSERT INTO `orders` VALUES (10351, 20, 1, '1996-11-11', 1);
INSERT INTO `orders` VALUES (10352, 28, 3, '1996-11-12', 3);
INSERT INTO `orders` VALUES (10353, 59, 7, '1996-11-13', 3);
INSERT INTO `orders` VALUES (10354, 58, 8, '1996-11-14', 3);
INSERT INTO `orders` VALUES (10355, 4, 6, '1996-11-15', 1);
INSERT INTO `orders` VALUES (10356, 86, 6, '1996-11-18', 2);
INSERT INTO `orders` VALUES (10357, 46, 1, '1996-11-19', 3);
INSERT INTO `orders` VALUES (10358, 41, 5, '1996-11-20', 1);
INSERT INTO `orders` VALUES (10359, 72, 5, '1996-11-21', 3);
INSERT INTO `orders` VALUES (10360, 7, 4, '1996-11-22', 3);
INSERT INTO `orders` VALUES (10361, 63, 1, '1996-11-22', 2);
INSERT INTO `orders` VALUES (10362, 9, 3, '1996-11-25', 1);
INSERT INTO `orders` VALUES (10363, 17, 4, '1996-11-26', 3);
INSERT INTO `orders` VALUES (10364, 19, 1, '1996-11-26', 1);
INSERT INTO `orders` VALUES (10365, 3, 3, '1996-11-27', 2);
INSERT INTO `orders` VALUES (10366, 29, 8, '1996-11-28', 2);
INSERT INTO `orders` VALUES (10367, 83, 7, '1996-11-28', 3);
INSERT INTO `orders` VALUES (10368, 20, 2, '1996-11-29', 2);
INSERT INTO `orders` VALUES (10369, 75, 8, '1996-12-02', 2);
INSERT INTO `orders` VALUES (10370, 14, 6, '1996-12-03', 2);
INSERT INTO `orders` VALUES (10371, 41, 1, '1996-12-03', 1);
INSERT INTO `orders` VALUES (10372, 62, 5, '1996-12-04', 2);
INSERT INTO `orders` VALUES (10373, 37, 4, '1996-12-05', 3);
INSERT INTO `orders` VALUES (10374, 91, 1, '1996-12-05', 3);
INSERT INTO `orders` VALUES (10375, 36, 3, '1996-12-06', 2);
INSERT INTO `orders` VALUES (10376, 51, 1, '1996-12-09', 2);
INSERT INTO `orders` VALUES (10377, 72, 1, '1996-12-09', 3);
INSERT INTO `orders` VALUES (10378, 24, 5, '1996-12-10', 3);
INSERT INTO `orders` VALUES (10379, 61, 2, '1996-12-11', 1);
INSERT INTO `orders` VALUES (10380, 37, 8, '1996-12-12', 3);
INSERT INTO `orders` VALUES (10381, 46, 3, '1996-12-12', 3);
INSERT INTO `orders` VALUES (10382, 20, 4, '1996-12-13', 1);
INSERT INTO `orders` VALUES (10383, 4, 8, '1996-12-16', 3);
INSERT INTO `orders` VALUES (10384, 5, 3, '1996-12-16', 3);
INSERT INTO `orders` VALUES (10385, 75, 1, '1996-12-17', 2);
INSERT INTO `orders` VALUES (10386, 21, 9, '1996-12-18', 3);
INSERT INTO `orders` VALUES (10387, 70, 1, '1996-12-18', 2);
INSERT INTO `orders` VALUES (10388, 72, 2, '1996-12-19', 1);
INSERT INTO `orders` VALUES (10389, 10, 4, '1996-12-20', 2);
INSERT INTO `orders` VALUES (10390, 20, 6, '1996-12-23', 1);
INSERT INTO `orders` VALUES (10391, 17, 3, '1996-12-23', 3);
INSERT INTO `orders` VALUES (10392, 59, 2, '1996-12-24', 3);
INSERT INTO `orders` VALUES (10393, 71, 1, '1996-12-25', 3);
INSERT INTO `orders` VALUES (10394, 36, 1, '1996-12-25', 3);
INSERT INTO `orders` VALUES (10395, 35, 6, '1996-12-26', 1);
INSERT INTO `orders` VALUES (10396, 25, 1, '1996-12-27', 3);
INSERT INTO `orders` VALUES (10397, 60, 5, '1996-12-27', 1);
INSERT INTO `orders` VALUES (10398, 71, 2, '1996-12-30', 3);
INSERT INTO `orders` VALUES (10399, 83, 8, '1996-12-31', 3);
INSERT INTO `orders` VALUES (10400, 19, 1, '1997-01-01', 3);
INSERT INTO `orders` VALUES (10401, 65, 1, '1997-01-01', 1);
INSERT INTO `orders` VALUES (10402, 20, 8, '1997-01-02', 2);
INSERT INTO `orders` VALUES (10403, 20, 4, '1997-01-03', 3);
INSERT INTO `orders` VALUES (10404, 49, 2, '1997-01-03', 1);
INSERT INTO `orders` VALUES (10405, 47, 1, '1997-01-06', 1);
INSERT INTO `orders` VALUES (10406, 62, 7, '1997-01-07', 1);
INSERT INTO `orders` VALUES (10407, 56, 2, '1997-01-07', 2);
INSERT INTO `orders` VALUES (10408, 23, 8, '1997-01-08', 1);
INSERT INTO `orders` VALUES (10409, 54, 3, '1997-01-09', 1);
INSERT INTO `orders` VALUES (10410, 10, 3, '1997-01-10', 3);
INSERT INTO `orders` VALUES (10411, 10, 9, '1997-01-10', 3);
INSERT INTO `orders` VALUES (10412, 87, 8, '1997-01-13', 2);
INSERT INTO `orders` VALUES (10413, 41, 3, '1997-01-14', 2);
INSERT INTO `orders` VALUES (10414, 21, 2, '1997-01-14', 3);
INSERT INTO `orders` VALUES (10415, 36, 3, '1997-01-15', 1);
INSERT INTO `orders` VALUES (10416, 87, 8, '1997-01-16', 3);
INSERT INTO `orders` VALUES (10417, 73, 4, '1997-01-16', 3);
INSERT INTO `orders` VALUES (10418, 63, 4, '1997-01-17', 1);
INSERT INTO `orders` VALUES (10419, 68, 4, '1997-01-20', 2);
INSERT INTO `orders` VALUES (10420, 88, 3, '1997-01-21', 1);
INSERT INTO `orders` VALUES (10421, 61, 8, '1997-01-21', 1);
INSERT INTO `orders` VALUES (10422, 27, 2, '1997-01-22', 1);
INSERT INTO `orders` VALUES (10423, 31, 6, '1997-01-23', 3);
INSERT INTO `orders` VALUES (10424, 51, 7, '1997-01-23', 2);
INSERT INTO `orders` VALUES (10425, 41, 6, '1997-01-24', 2);
INSERT INTO `orders` VALUES (10426, 29, 4, '1997-01-27', 1);
INSERT INTO `orders` VALUES (10427, 59, 4, '1997-01-27', 2);
INSERT INTO `orders` VALUES (10428, 66, 7, '1997-01-28', 1);
INSERT INTO `orders` VALUES (10429, 37, 3, '1997-01-29', 2);
INSERT INTO `orders` VALUES (10430, 20, 4, '1997-01-30', 1);
INSERT INTO `orders` VALUES (10431, 10, 4, '1997-01-30', 2);
INSERT INTO `orders` VALUES (10432, 75, 3, '1997-01-31', 2);
INSERT INTO `orders` VALUES (10433, 60, 3, '1997-02-03', 3);
INSERT INTO `orders` VALUES (10434, 24, 3, '1997-02-03', 2);
INSERT INTO `orders` VALUES (10435, 16, 8, '1997-02-04', 2);
INSERT INTO `orders` VALUES (10436, 7, 3, '1997-02-05', 2);
INSERT INTO `orders` VALUES (10437, 87, 8, '1997-02-05', 1);
INSERT INTO `orders` VALUES (10438, 79, 3, '1997-02-06', 2);
INSERT INTO `orders` VALUES (10439, 51, 6, '1997-02-07', 3);
INSERT INTO `orders` VALUES (10440, 71, 4, '1997-02-10', 2);
INSERT INTO `orders` VALUES (10441, 55, 3, '1997-02-10', 2);
INSERT INTO `orders` VALUES (10442, 20, 3, '1997-02-11', 2);
INSERT INTO `orders` VALUES (10443, 66, 8, '1997-02-12', 1);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `SupplierID` int NULL DEFAULT NULL,
  `CategoryID` int NULL DEFAULT NULL,
  `Unit` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Price` double NULL DEFAULT NULL,
  PRIMARY KEY (`ProductID`) USING BTREE,
  INDEX `CategoryID`(`CategoryID` ASC) USING BTREE,
  INDEX `SupplierID`(`SupplierID` ASC) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Chais', 1, 1, '10 boxes x 20 bags', 18);
INSERT INTO `products` VALUES (2, 'Chang', 1, 1, '24 - 12 oz bottles', 19);
INSERT INTO `products` VALUES (3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10);
INSERT INTO `products` VALUES (4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22);
INSERT INTO `products` VALUES (5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.35);
INSERT INTO `products` VALUES (6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25);
INSERT INTO `products` VALUES (7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30);
INSERT INTO `products` VALUES (8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40);
INSERT INTO `products` VALUES (9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97);
INSERT INTO `products` VALUES (10, 'Ikura', 4, 999999999, '12 - 200 ml jars', 31);
INSERT INTO `products` VALUES (11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21);
INSERT INTO `products` VALUES (12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38);
INSERT INTO `products` VALUES (13, 'Konbu', 6, 999999999, '2 kg box', 6);
INSERT INTO `products` VALUES (14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25);
INSERT INTO `products` VALUES (15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.5);
INSERT INTO `products` VALUES (16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45);
INSERT INTO `products` VALUES (17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39);
INSERT INTO `products` VALUES (18, 'Carnarvon Tigers', 7, 999999999, '16 kg pkg.', 62.5);
INSERT INTO `products` VALUES (19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2);
INSERT INTO `products` VALUES (20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 81);
INSERT INTO `products` VALUES (21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 10);
INSERT INTO `products` VALUES (22, 'Gustaf\'s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21);
INSERT INTO `products` VALUES (23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9);
INSERT INTO `products` VALUES (24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.5);
INSERT INTO `products` VALUES (25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14);
INSERT INTO `products` VALUES (26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23);
INSERT INTO `products` VALUES (27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9);
INSERT INTO `products` VALUES (28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6);
INSERT INTO `products` VALUES (29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79);
INSERT INTO `products` VALUES (30, 'Nord-Ost Matjeshering', 13, 999999999, '10 - 200 g glasses', 25.89);
INSERT INTO `products` VALUES (31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5);
INSERT INTO `products` VALUES (32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32);
INSERT INTO `products` VALUES (33, 'Geitost', 15, 4, '500 g', 2.5);
INSERT INTO `products` VALUES (34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14);
INSERT INTO `products` VALUES (35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18);
INSERT INTO `products` VALUES (36, 'Inlagd Sill', 17, 999999999, '24 - 250 g jars', 19);
INSERT INTO `products` VALUES (37, 'Gravad lax', 17, 999999999, '12 - 500 g pkgs.', 26);
INSERT INTO `products` VALUES (38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5);
INSERT INTO `products` VALUES (39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18);
INSERT INTO `products` VALUES (40, 'Boston Crab Meat', 19, 999999999, '24 - 4 oz tins', 18.4);
INSERT INTO `products` VALUES (41, 'Jack\'s New England Clam Chowder', 19, 999999999, '12 - 12 oz cans', 9.65);
INSERT INTO `products` VALUES (42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14);
INSERT INTO `products` VALUES (43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46);
INSERT INTO `products` VALUES (44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45);
INSERT INTO `products` VALUES (45, 'Røgede sild', 21, 999999999, '1k pkg.', 9.5);
INSERT INTO `products` VALUES (46, 'Spegesild', 21, 999999999, '4 - 450 g glasses', 12);
INSERT INTO `products` VALUES (47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5);
INSERT INTO `products` VALUES (48, 'Chocolade', 22, 3, '10 pkgs.', 12.75);
INSERT INTO `products` VALUES (49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20);
INSERT INTO `products` VALUES (50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25);
INSERT INTO `products` VALUES (51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53);
INSERT INTO `products` VALUES (52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7);
INSERT INTO `products` VALUES (53, 'Perth Pasties', 24, 6, '48 pieces', 32.8);
INSERT INTO `products` VALUES (54, 'Tourtière', 25, 6, '16 pies', 7.45);
INSERT INTO `products` VALUES (55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24);
INSERT INTO `products` VALUES (56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38);
INSERT INTO `products` VALUES (57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5);
INSERT INTO `products` VALUES (59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55);
INSERT INTO `products` VALUES (60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34);
INSERT INTO `products` VALUES (61, 'Sirop d\'érable', 29, 2, '24 - 500 ml bottles', 28.5);
INSERT INTO `products` VALUES (62, 'Tarte au sucre', 29, 3, '48 pies', 49.3);
INSERT INTO `products` VALUES (63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9);
INSERT INTO `products` VALUES (64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25);
INSERT INTO `products` VALUES (65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05);
INSERT INTO `products` VALUES (66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17);
INSERT INTO `products` VALUES (67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14);
INSERT INTO `products` VALUES (68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5);
INSERT INTO `products` VALUES (69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36);
INSERT INTO `products` VALUES (70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15);
INSERT INTO `products` VALUES (71, 'Fløtemysost', 15, 4, '10 - 500 g pkgs.', 21.5);
INSERT INTO `products` VALUES (72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8);
INSERT INTO `products` VALUES (73, 'Röd Kaviar', 17, 999999999, '24 - 150 g jars', 15);
INSERT INTO `products` VALUES (74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10);
INSERT INTO `products` VALUES (75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75);
INSERT INTO `products` VALUES (76, 'Lakkalikööri', 23, 1, '500 ml', 18);
INSERT INTO `products` VALUES (77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13);

-- ----------------------------
-- Table structure for shippers
-- ----------------------------
DROP TABLE IF EXISTS `shippers`;
CREATE TABLE `shippers`  (
  `ShipperID` int NOT NULL AUTO_INCREMENT,
  `ShipperName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ShipperID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shippers
-- ----------------------------
INSERT INTO `shippers` VALUES (1, 'Speedy Express', '(503) 555-9831');
INSERT INTO `shippers` VALUES (2, 'United Package', '(503) 555-3199');
INSERT INTO `shippers` VALUES (3, 'Federal Shipping', '(503) 555-9931');

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `SupplierName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `ContactName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `PostalCode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Country` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SupplierID`) USING BTREE,
  INDEX `user_id_suppliers`(`user_id` ASC) USING BTREE,
  CONSTRAINT `user_id_suppliers` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 149, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-2222');
INSERT INTO `suppliers` VALUES (2, 168, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822');
INSERT INTO `suppliers` VALUES (3, 166, 'Grandma Kelly\'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA', '(313) 555-5735');
INSERT INTO `suppliers` VALUES (4, 171, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011');
INSERT INTO `suppliers` VALUES (5, 144, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 'Oviedo', '33007', 'Spain', '(98) 598 76 54');
INSERT INTO `suppliers` VALUES (6, 161, 'Mayumi\'s', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877');
INSERT INTO `suppliers` VALUES (7, 156, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 'Melbourne', '3058', 'Australia', '(03) 444-2343');
INSERT INTO `suppliers` VALUES (8, 164, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 King\'s Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448');
INSERT INTO `suppliers` VALUES (9, 158, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden', '031-987 65 43');
INSERT INTO `suppliers` VALUES (10, 146, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil', '(11) 555 4640');
INSERT INTO `suppliers` VALUES (11, 165, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany', '(010) 9984510');
INSERT INTO `suppliers` VALUES (12, 160, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755');
INSERT INTO `suppliers` VALUES (13, 169, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '27478', 'Germany', '(04721) 8713');
INSERT INTO `suppliers` VALUES (14, 153, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323');
INSERT INTO `suppliers` VALUES (15, 145, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010');
INSERT INTO `suppliers` VALUES (16, 150, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 'Bend', '97101', 'USA', '(503) 555-9931');
INSERT INTO `suppliers` VALUES (17, 162, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden', '08-123 45 67');
INSERT INTO `suppliers` VALUES (18, 155, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France', '(1) 03.83.00.68');
INSERT INTO `suppliers` VALUES (19, 167, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', '02134', 'USA', '(617) 555-3267');
INSERT INTO `suppliers` VALUES (20, 147, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 'Singapore', '0512', 'Singapore', '555-8787');
INSERT INTO `suppliers` VALUES (21, 163, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108');
INSERT INTO `suppliers` VALUES (22, 151, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212');
INSERT INTO `suppliers` VALUES (23, 143, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956');
INSERT INTO `suppliers` VALUES (24, 170, 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunter\'s Hill', 'Sydney', '2042', 'Australia', '(02) 555-5914');
INSERT INTO `suppliers` VALUES (25, 157, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022');
INSERT INTO `suppliers` VALUES (26, 154, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy', '(089) 6547665');
INSERT INTO `suppliers` VALUES (27, 159, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07');
INSERT INTO `suppliers` VALUES (28, 152, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06');
INSERT INTO `suppliers` VALUES (29, 148, 'Forêts d\'érables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8', 'Canada', '(514) 555-2955');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  `isEmployee` tinyint NULL DEFAULT 0,
  `isSupplier` tinyint NULL DEFAULT 0,
  `isCustomer` tinyint NULL DEFAULT 0,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_users`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email_users`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 172 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'adamwest', 'adamwest@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (2, 'andrewfuller', 'andrewfuller@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (3, 'annedodsworth', 'annedodsworth@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (4, 'janetleverling', 'janetleverling@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (5, 'lauracallahan', 'lauracallahan@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (6, 'margaretpeacock', 'margaretpeacock@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (7, 'michaelsuyama', 'michaelsuyama@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (8, 'nancydavolio', 'nancydavolio@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (9, 'robertking', 'robertking@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (10, 'stevenbuchanan', 'stevenbuchanan@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 1, 0, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (16, 'alejandracamino', 'alejandracamino@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (17, 'alexanderfeuer', 'alexanderfeuer@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (18, 'anatrujillo', 'anatrujillo@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (19, 'anabeladomingues', 'anabeladomingues@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (20, 'andréfonseca', 'andréfonseca@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (21, 'anndevon', 'anndevon@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (22, 'annetteroulet', 'annetteroulet@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (23, 'antoniomoreno', 'antoniomoreno@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (24, 'ariacruz', 'ariacruz@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (25, 'artbraunschweiger', 'artbraunschweiger@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (26, 'bernardobatista', 'bernardobatista@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (27, 'carineschmitt', 'carineschmitt@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (28, 'carlosgonzález', 'carlosgonzález@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (29, 'carloshernández', 'carloshernández@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (30, 'catherinedewey', 'catherinedewey@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (31, 'christinaberglund', 'christinaberglund@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (32, 'danieltonini', 'danieltonini@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (33, 'diegoroel', 'diegoroel@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (34, 'dominiqueperrier', 'dominiqueperrier@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (35, 'eduardosaavedra', 'eduardosaavedra@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (36, 'elizabethbrown', 'elizabethbrown@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (37, 'elizabethlincoln', 'elizabethlincoln@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (38, 'felipeizquierdo', 'felipeizquierdo@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (39, 'franwilson', 'franwilson@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (40, 'franciscochang', 'franciscochang@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (41, 'frédériqueciteaux', 'frédériqueciteaux@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (42, 'georgpipps', 'georgpipps@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (43, 'giovannirovelli', 'giovannirovelli@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (44, 'guillermofernández', 'guillermofernández@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (45, 'hannamoos', 'hannamoos@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (46, 'harikumar', 'harikumar@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (47, 'helenbennett', 'helenbennett@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (48, 'helvetiusnagy', 'helvetiusnagy@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (49, 'henriettepfalzheim', 'henriettepfalzheim@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (50, 'horstkloss', 'horstkloss@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (51, 'howardsnyder', 'howardsnyder@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (52, 'isabeldecastro', 'isabeldecastro@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (53, 'jaimeyorres', 'jaimeyorres@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (54, 'janetelimeira', 'janetelimeira@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (55, 'janinelabrune', 'janinelabrune@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (56, 'jeanfresnière', 'jeanfresnière@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (57, 'johnsteel', 'johnsteel@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (58, 'jonasbergulfsen', 'jonasbergulfsen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (59, 'josepavarotti', 'josepavarotti@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (60, 'josépedrofreyre', 'josépedrofreyre@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (61, 'jyttepetersen', 'jyttepetersen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (62, 'karinjosephs', 'karinjosephs@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (63, 'karljablonski', 'karljablonski@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (64, 'laurencelebihans', 'laurencelebihans@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (65, 'linorodriguez', 'linorodriguez@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (66, 'liuwong', 'liuwong@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (67, 'liznixon', 'liznixon@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (68, 'lúciacarvalho', 'lúciacarvalho@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (69, 'manuelpereira', 'manuelpereira@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (70, 'mariaanders', 'mariaanders@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (71, 'marialarsson', 'marialarsson@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (72, 'mariebertrand', 'mariebertrand@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (73, 'mariopontes', 'mariopontes@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (74, 'martínsommer', 'martínsommer@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (75, 'martinerancé', 'martinerancé@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (76, 'marysaveley', 'marysaveley@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (77, 'mattikarttunen', 'mattikarttunen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (78, 'mauriziomoroni', 'mauriziomoroni@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (79, 'michaelholz', 'michaelholz@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (80, 'miguelangelpaolino', 'miguelangelpaolino@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (81, 'palleibsen', 'palleibsen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (82, 'paoloaccorti', 'paoloaccorti@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (83, 'pascalecartrain', 'pascalecartrain@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (84, 'patriciamckenna', 'patriciamckenna@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (85, 'patriciosimpson', 'patriciosimpson@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (86, 'paulhenriot', 'paulhenriot@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (87, 'paulaparente', 'paulaparente@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (88, 'paulawilson', 'paulawilson@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (89, 'pedroafonso', 'pedroafonso@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (90, 'peterfranken', 'peterfranken@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (91, 'philipcramer', 'philipcramer@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (92, 'pirkkokoskitalo', 'pirkkokoskitalo@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (93, 'renatemessner', 'renatemessner@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (94, 'renephillips', 'renephillips@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (95, 'ritamüller', 'ritamüller@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (96, 'rolandmendel', 'rolandmendel@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (97, 'sergiogutiérrez', 'sergiogutiérrez@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (98, 'simoncrowther', 'simoncrowther@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (99, 'svenottlieb', 'svenottlieb@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (100, 'thomashardy', 'thomashardy@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (101, 'victoriaashworth', 'victoriaashworth@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (102, 'yangwang', 'yangwang@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (103, 'yoshilatimer', 'yoshilatimer@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (104, 'yoshitannamuri', 'yoshitannamuri@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (105, 'yvonnemoncada', 'yvonnemoncada@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (106, 'zbyszek', 'zbyszek@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 0, 1, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (143, 'anneheikkonen', 'anneheikkonen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (144, 'antoniodelvallesaavedra', 'antoniodelvallesaavedra@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (145, 'beatevileid', 'beatevileid@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (146, 'carlosdiaz', 'carlosdiaz@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (147, 'chandraleka', 'chandraleka@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (148, 'chantalgoulet', 'chantalgoulet@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (149, 'charlottecooper', 'charlottecooper@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (150, 'cherylsaylor', 'cherylsaylor@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (151, 'dirkluchte', 'dirkluchte@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (152, 'elianenoz', 'elianenoz@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (153, 'eliorossi', 'eliorossi@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (154, 'giovannigiudici', 'giovannigiudici@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (155, 'guylènenodier', 'guylènenodier@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (156, 'iandevling', 'iandevling@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (157, 'jean-guylauzon', 'jean-guylauzon@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (158, 'larspeterson', 'larspeterson@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (159, 'mariedelamare', 'mariedelamare@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (160, 'martinbein', 'martinbein@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (161, 'mayumiohno', 'mayumiohno@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (162, 'michaelbjörn', 'michaelbjörn@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (163, 'nielspetersen', 'nielspetersen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (164, 'peterwilson', 'peterwilson@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (165, 'petrawinkler', 'petrawinkler@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (166, 'reginamurphy', 'reginamurphy@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (167, 'robbmerchant', 'robbmerchant@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (168, 'shelleyburke', 'shelleyburke@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (169, 'svenpetersen', 'svenpetersen@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (170, 'wendymackenzie', 'wendymackenzie@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');
INSERT INTO `users` VALUES (171, 'yoshinagase', 'yoshinagase@gmail.com', '$2a$10$E1iyqanlegfBQ7S94qLB/.PjrQy3GlmzAG580gMOvMyWhhrA7CWse', 1, 0, 1, 0, '2024-07-27 12:00:00', '2024-07-27 12:00:00');

-- ----------------------------
-- Procedure structure for getCategoryByProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `getCategoryByProduct`;
delimiter ;;
CREATE PROCEDURE `getCategoryByProduct`()
BEGIN
	SELECT c.CategoryID, c.CategoryName, COUNT(p.CategoryID) AS 'total_product'
	FROM categories AS c
	LEFT JOIN products AS p on p.CategoryID = c.CategoryID
	GROUP BY c.CategoryID
	ORDER BY COUNT(p.CategoryID) DESC;
-- 	ORDER BY c.CategoryName ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getCustomerByCategory
-- ----------------------------
DROP PROCEDURE IF EXISTS `getCustomerByCategory`;
delimiter ;;
CREATE PROCEDURE `getCustomerByCategory`()
BEGIN
	SET @getCategories = (
		SELECT GROUP_CONCAT( 
			DISTINCT CONCAT(
				'SUM(IF( p.CategoryID = ', c.CategoryID,' , 1, NULL)) AS "', c.CategoryName, '"'
			)
			ORDER BY c.CategoryName
			SEPARATOR ', '
		)
		FROM (
			SELECT c.CategoryID, c.CategoryName
			FROM categories AS c
			WHERE EXISTS (
				SELECT 1
				FROM products AS p
				WHERE p.CategoryID = c.CategoryID
			)
			GROUP BY c.CategoryID, c.CategoryName
		) AS c
	);

	SET @query = CONCAT('
		SELECT
			c.ContactName AS "Customer Name", ',
			@getCategories,
	'		,SUM(IF( p.CategoryID is NOT NULL, 1, 0)) AS total_order	 
		FROM customers AS c
		LEFT JOIN orders AS o ON o.CustomerID = c.CustomerID
		LEFT JOIN order_details AS od ON od.OrderID = o.OrderID
		LEFT JOIN products AS p ON p.ProductID = od.ProductID
		LEFT JOIN categories AS ca ON ca.CategoryID = p.CategoryID
		GROUP BY c.ContactName
		ORDER BY c.ContactName ASC
	');

	PREPARE stmt FROM @query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getCustomerByEmployee
-- ----------------------------
DROP PROCEDURE IF EXISTS `getCustomerByEmployee`;
delimiter ;;
CREATE PROCEDURE `getCustomerByEmployee`()
BEGIN
	SET @getEmployees = (
		SELECT
			GROUP_CONCAT(
				DISTINCT CONCAT('SUM(IF(o.EmployeeID = ', e.EmployeeID, ', 1, NULL)) AS "', e.FirstName, ' ', e.LastName, '"')
				ORDER BY e.FirstName ASC
				SEPARATOR ', '
			)
		FROM (
			SELECT e.EmployeeID, e.FirstName, e.LastName
			FROM employees AS e
			WHERE EXISTS (
				SELECT 1
				FROM orders AS o
				WHERE	o.EmployeeID = e.EmployeeID
			)
			GROUP BY e.EmployeeID, e.FirstName, e.LastName
		) as e	
	);

	SET @query = CONCAT('
		SELECT
			c.ContactName AS "Customer Name", ',
			@getEmployees,
	' 	,SUM(IF( o.EmployeeID is NOT NULL, 1, 0)) AS total_order
		FROM customers as c
		LEFT JOIN orders AS o on c.CustomerID = o.CustomerID
		-- WHERE c.CustomerID not in (
		-- 	SELECT o.CustomerID
		-- 	FROM orders AS o
		-- 	WHERE o.CustomerID = c.CustomerID
		-- )
		GROUP BY c.CustomerID
		ORDER BY c.ContactName
	');

	PREPARE stmt FROM @query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getCustomerByOrder
-- ----------------------------
DROP PROCEDURE IF EXISTS `getCustomerByOrder`;
delimiter ;;
CREATE PROCEDURE `getCustomerByOrder`()
BEGIN
	SELECT c.CustomerID, c.ContactName, MAX(IF( c.CustomerID = o.CustomerID, 'Y', NULL)) AS isOrder
	FROM customers as c
	LEFT JOIN orders AS o ON o.CustomerID = c.CustomerID
-- 	WHERE EXISTS (
-- 		SELECT 1
-- 		FROM orders AS o2
-- 		WHERE c.CustomerID = o2.CustomerID
-- 	)
	GROUP BY c.CustomerID
	ORDER BY c.ContactName;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getEmployeeByOrder
-- ----------------------------
DROP PROCEDURE IF EXISTS `getEmployeeByOrder`;
delimiter ;;
CREATE PROCEDURE `getEmployeeByOrder`()
BEGIN
	SELECT 
		CONCAT(e.FirstName,' ',e.LastName) AS Name,
		TIMESTAMPDIFF(YEAR, e.BirthDate, CURRENT_DATE) AS age,
		IFNULL(COUNT(o.OrderID), 0) AS total_job
	FROM employees AS e
	LEFT JOIN orders AS o ON e.EmployeeID = o.EmployeeID
	-- WHERE NOT EXISTS (
	-- 	SELECT 1
	-- 	FROM orders AS o2
	-- 	WHERE e.EmployeeID = o.EmployeeID
	-- )
	GROUP BY e.EmployeeID
	ORDER BY total_job DESC;
	-- ORDER BY e.FirstName ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getShipperByOrder
-- ----------------------------
DROP PROCEDURE IF EXISTS `getShipperByOrder`;
delimiter ;;
CREATE PROCEDURE `getShipperByOrder`()
BEGIN
	SELECT sh.ShipperName, COUNT(o.ShipperID) as total_job
	FROM shippers as sh
	LEFT JOIN orders AS o ON sh.ShipperID = o.ShipperID
	GROUP BY sh.ShipperID
	ORDER BY total_job DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getSupplierByTotalOrder
-- ----------------------------
DROP PROCEDURE IF EXISTS `getSupplierByTotalOrder`;
delimiter ;;
CREATE PROCEDURE `getSupplierByTotalOrder`()
BEGIN
	SELECT 
		s.SupplierID AS supplier_id,
		s.ContactName AS supplier_name,
		IFNULL(COUNT(od.ProductID), 0) AS total_order
	FROM suppliers AS s
	LEFT JOIN products AS p ON p.SupplierID = s.SupplierID
	LEFT JOIN order_details AS od ON od.ProductID = p.ProductID
-- 	WHERE NOT EXISTS (
-- 		SELECT 1
-- 		FROM order_details AS od2
-- 		WHERE p.SupplierID = s.SupplierID	AND od2.ProductID = p.ProductID
-- 	)
	GROUP BY s.SupplierID
	ORDER BY total_order DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for getSupplierByTotalProduct
-- ----------------------------
DROP PROCEDURE IF EXISTS `getSupplierByTotalProduct`;
delimiter ;;
CREATE PROCEDURE `getSupplierByTotalProduct`()
BEGIN
	SELECT 
		s.SupplierID AS supplier_id,
		s.ContactName AS supplier_name,
		IFNULL(COUNT(p.ProductID), 0) AS total_product
	FROM suppliers AS s
	LEFT JOIN products AS p ON p.SupplierID = s.SupplierID	
-- 	WHERE NOT EXISTS (
-- 		SELECT 1
-- 		FROM products AS p2
-- 		WHERE p2.SupplierID = s.SupplierID	
-- 	)
	GROUP BY s.SupplierID
	ORDER BY total_product DESC;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
