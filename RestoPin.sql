SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+08:00";

--
-- Database: `RestoPin`
--


USE RestoPin;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Data entries for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('Alex Torres', 'alextores23@gmail.com', '9487810674', 'FoodReview', 'Grabe ang sarap dito, ang mahal'),
('Ignacio Dela Torre', 'ignaciodelatorre21@gmail.com', '9487810674', 'One stop location', 'Da best ang Tinola pati Lechon Kawali nila,'),
('Linda Dela Cruz', 'lindelacruz13@gmail.com', '8903079750', 'Kung hindi lang masarap dito, hindi na kami babalik.', 'Napakasarap ng luto ni Lola Linda, pero napakamahal OMG!'),
('Jose Alvarado', 'josealvar24@gmail.com', '9487810674', 'Grabe!', 'Ang sarap dito sa RestoPin!');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Data entries for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('oppmann2', 'Hugo Oppelt', 'hugooppelt@gmail.com', '4930587321439', 'Berlin, Germany', 'ZHNcE6n$%mPty8'),
('jemappelepain', 'Adrien Riqueti', 'riquetipain@gmail.com', '33655505531', 'Paris, France', '&eWkFUdG7eSCx7'),
('melek', 'Melekhov Jaroslav', 'melek@gmail.com', '74232488973 ', 'Moscow, Russia', '!7y#%qPFhQ8^^s'),
('therealdeutsch', 'Tristan Ammermann', 'ichliebedeutschhland@gmail.com', '4930292862109 ', 'Munich, Germany', '!7y#%qPFhQ8^^s'),
('nonnonnon', 'Gaston Boudreaux', 'joueurd_eiffel@gmail.com', '33655505531', 'Normandy, France', '3$!X5e9@&5%9');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Data entries for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Adobo', 95, 'Adobo', 1, 'images/Adobo.jpg', 'ENABLE'),
(59, 'Afritada', 100, 'Afritada', 2, 'images/Afritada.jpg', 'ENABLE'),
(60, 'Buko Salad', 150, 'Buko Salad', 3, 'images/Buko Salad.jpg', 'ENABLE'),
(61, 'Bulalo',250, 'Bulalo', 1, 'images/Bulalo.jpg', 'ENABLE'),
(62, 'Caldereta',140, 'Calderata', 2, 'images/Caldereta.jpg', 'ENABLE'),
(63, 'Coke', 1, 'Coke', 3, 'images/Coke.jpg', 'ENABLE'),
(65, 'Crispy Pata', 100 , '', 4, 'images/Crispy Pata.jpg', 'ENABLE'),
(66, 'Dinuguan', 190, 'Dinuguan', 4, 'images/dinuguan.jpg', 'ENABLE'),
(68, 'Egg Fried Rice Platter', 200, 'Egg Fried Rice Platter', 6, 'images/Egg Fried Rice Platter.jpg', 'ENABLE'),
(69, 'Fish Fillet', 150, 'Fish Fillet', 2, 'images/Fish Fillet.jpg', 'ENABLE'),
(70, 'Fried Garlic Chicken', 180, 'Fried Garlic Chicken', 2, 'images/Fried Garlic Chicken.jpg', 'ENABLE'),
(71, 'Garlic Rice Platter', 300, 'Garlic Rice Platter', 2, 'images/Garlic Rice Platter.jpg', 'ENABLE'),
(72, 'Halo Halo', 50, 'Halo Halov', 2, 'imagesHalo ha.jpg', 'ENABLE'),
(73, 'Iced Tea', 45, 'Ice Tea', 2, 'images/Ice Tea.jpg', 'ENABLE'),
(74, 'Inihaw na Liempo', 210, 'Inihaw na Liempo ', 2, 'images/Inihaw na Liempo.jpg', 'ENABLE'),
(75, 'Kare-Kare', 150, 'Kare-Kare.', 2, 'images/Kare-kare.jpg', 'ENABLE'),
(76, 'Leche Flan', 275, 'Leche Flan', 2, 'images/Leche Flan.jpg', 'ENABLE'),
(77, 'Lechon Kawali', 200, 'Lechon Kawali', 2, 'images/Lechon Kawali.jpg', 'ENABLE'),
(78, 'Mais Con Yelo', 90, 'Mais Con Yelo', 2, 'images/Mais Con Yelo.jpg', 'ENABLE'),
(79, 'Maja Blanca', 120, 'Maja Blanca', 2, 'images/Maja Blanca.jpg', 'ENABLE'),
(80, 'Menudo', 150, 'Menudo', 2, 'images/Menudo.jpg', 'ENABLE'),
(81, 'Orange Juice', 120, 'Orange Juice', 2, 'images/Orange Juice.jpg', 'ENABLE'),
(82, 'Pancit Canton Guisado', 150, 'Pancit Canton Guisado', 2, 'images/Pancit Canton Guisado.jpg', 'ENABLE'),
(83, 'Plain Rice Platter', 300, 'Plain Rice Platter', 2, 'images/Plain Rice Platter.jpg', 'ENABLE'),
(84, 'Roasted Beef', 125, 'Roasted Beef', 2, 'images/Roasted Beef.jpg', 'ENABLE'),
(85, 'Sinangag Platter', 80, 'Sinangag Platter', 2, 'images/Sinangag Platter.jpg', 'ENABLE'),
(86, 'Sinigang', 130, 'Sinigang', 2, 'images/Sinigang.jpg', 'ENABLE'),
(87, 'Sisig Rice Platter', 90, 'Sisig Rice Platter', 2, 'images/Sisig Rice Platter.jpg', 'ENABLE'),
(88, 'Sisig', 75, 'Sisig', 2, 'images/Sisig.jpg', 'ENABLE'),
(89, 'Tinola', 120, 'Tinola', 2, 'images/Tinola.jpg', 'ENABLE'),
(90, 'Turon', 15, 'Turon', 2, 'images/Turon.jpg', 'ENABLE'),
(91, 'Water', 20, 'Waater', 2, 'images/Water.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Data entries for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('weizenChef', 'Jerome Saulo', 'nice_one@gmail.com', '639157864518', 'San Pedro, Philippines', '&TbmB2*U9ZgQTg'),
('bipple23', 'John Dayos', 'bummerdangit@gmail.com', '639357648120', 'Taguig City, Philippines', 'tF9%jM!bu@&yMz'),
('cheskabieber', 'Cheska Ramos', 'biebermann@gmail.com', '631246646182', 'Mandaluyong City, Philippines', 'Psnvm8rxfG!^u#'),
('radoriki', 'Airick Indefonso', 'eyick@gmail.com', '639347584001', 'Davao Citty, Philippines', 'v%L6L&jTr44L9v'),
('dasBett', 'Bettina Tiu', 'inamo@gmail.com', '639991452614', 'Batanes, Philippines', 'hXt8*C@eKYroXz');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Data entries for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'Pancit Canton Guisado', 40, 1, '2019-03-03', 'oppmann2', 1),
(2, 61, 'Adobo', 80, 2, '2019-03-03', 'oppmann2', 1),
(3, 61, 'Menudo', 80, 2, '2019-03-03', 'oppmann2', 1),
(4, 65, 'Leche Flan', 25, 4, '2019-03-03', 'oppmann2', 4),
(5, 58, 'Orange Juice', 40, 7, '2019-03-03', 'oppmann2', 1),
(6, 65, 'Maja Blanca', 25, 2, '2019-03-03', 'oppmann2', 4),
(7, 58, 'Maja Blanca', 40, 7, '2019-03-03', 'oppmann2', 1),
(8, 65, 'Roast Beef', 25, 2, '2019-03-03', 'oppmann2', 4),
(9, 60, 'Maja Blanca', 99, 1, '2019-03-03', 'oppmann2', 3),
(10, 59, 'Roast Beef', 60, 1, '2019-03-05', 'oppmann2', 2),
(11, 60, 'Sisig Rice Platter', 99, 1, '2019-03-05', 'oppmann2', 3),
(12, 65, 'Roast Beef', 25, 1, '2019-03-05', 'oppmann2', 4),
(13, 59, 'Sisig Rice Platter', 60, 4, '2019-03-05', 'oppmann2', 2),
(14, 58, 'Turon', 40, 1, '2019-03-05', 'oppmann2', 1),
(15, 60, 'Tinola', 99, 4, '2019-03-05', 'oppmann2', 3),
(16, 65, 'Roast Beef', 25, 1, '2019-03-05', 'oppmann2', 4),
(18, 59, 'Turon', 60, 5, '2019-03-05', 'jemappelepain', 2),
(19, 63, 'Tinola', 75, 1, '2019-03-05', 'jemappelepain', 3),
(20, 68, 'Tinola', 75, 1, '2019-03-05', 'jemappelepain', 6),
(21, 62, 'Water', 65, 1, '2019-03-05', 'jemappelepain', 2),
(22, 68, 'Fried Garlic Chicken', 75, 1, '2019-03-05', 'jemappelepain', 6),
(23, 62, 'Plain Rice Platter', 65, 1, '2019-03-05', 'jemappelepain', 2),
(24, 65, 'Fried Garlic Chicken', 25, 1, '2019-03-05', 'jemappelepain', 4),
(25, 68, 'Orange Juice', 75, 1, '2019-03-05', 'jemappelepain', 6),
(26, 59, 'Buko Salad', 60, 6, '2019-03-05', 'jemappelepain', 2),
(27, 58, 'Inihaw na Liempo', 40, 1, '2019-03-05', 'jemappelepain', 1),
(28, 59, 'Buko Salad', 60, 1, '2019-03-05', 'jemappelepain', 2),
(29, 58, 'Inihaw na Liempo', 40, 1, '2019-03-05', 'jemappelepain', 1),
(30, 60, 'Fish Fillet', 99, 1, '2019-03-15', 'melek', 3),
(31, 59, 'Fried Garlic Chicken', 60, 1, '2019-03-15', 'melek', 2),
(32, 61, 'Bulalo', 80, 1, '2019-03-15', 'melek', 1),
(33, 60, 'Fish Fillet', 99, 1, '2019-03-15', 'melek', 3),
(34, 59, 'Bulalo', 60, 1, '2019-03-15', 'melek', 2),
(35, 61, 'Fish Fillet', 80, 1, '2019-03-15', 'melek', 1),
(36, 62, 'Mais Con Yelo', 65, 1, '2019-03-15', 'melek', 2),
(37, 72, 'Mais Con Yelo', 45, 6, '2019-03-15', 'melek', 2),
(38, 78, 'Leche Flan', 75, 7, '2019-03-15', 'melek', 2),
(39, 78, 'Leche Flan', 75, 1, '2019-03-15', 'melek', 2),
(40, 73, 'Fried Garlic Chicken', 35, 1, '2019-03-15', 'melek', 2),
(41, 77, 'Fried Garlic Chicken', 200, 2, '2019-03-16', 'melek', 2),
(42, 70, 'Roast Beef', 20, 1, '2019-03-16', 'melek', 2),
(43, 60, 'Sisig', 99, 2, '2019-03-16', 'melek', 3),
(44, 70, 'Pancit Canton Guisado', 20, 1, '2019-03-16', 'melek', 2),
(45, 60, 'Menudo', 99, 2, '2019-03-16', 'therealdeutsch', 3),
(46, 70, 'Water', 20, 1, '2019-03-16', 'therealdeutsch', 2),
(47, 60, 'Tinola', 99, 2, '2019-03-16', 'therealdeutsch', 3),
(48, 60, 'Tinola', 99, 4, '2019-03-25', 'therealdeutsch', 3),
(49, 62, 'Sisig Rice Platter', 65, 6, '2019-03-25', 'therealdeutsch', 2),
(50, 70, 'Sinigang', 20, 5, '2019-03-25', 'therealdeutsch', 2),
(51, 73, 'Plain Rice Platter', 35, 3, '2019-03-25', 'therealdeutsch', 2),
(52, 70, 'Orange Juice', 20, 1, '2019-03-30', 'therealdeutsch', 2),
(53, 60, 'Leche Flan', 99, 5, '2019-03-30', 'therealdeutsch', 3),
(54, 69, 'Afritada', 25, 7, '2019-03-30', 'therealdeutsch', 2),
(55, 62, 'Adobo', 65, 1, '2019-04-01', 'therealdeutsch', 2),
(56, 70, 'Coke', 20, 4, '2019-04-01', 'therealdeutsch', 2),
(57, 70, 'Coke', 20, 1, '2019-04-01', 'nonnonnon', 2),
(58, 60, 'Coke', 99, 1, '2019-04-01', 'nonnonnon', 3),
(59, 59, 'Sisig', 60, 6, '2019-04-02', 'nonnonnon', 2),
(60, 61, 'Roast Beef', 80, 1, '2019-04-02', 'nonnonnon', 1),
(61, 71, 'Menudo', 40, 3, '2019-04-17', 'nonnonnon', 2),
(62, 70, 'Crispy Pata', 20, 4, '2019-04-17', 'nonnonnon', 2),
(63, 72, 'Iced Tea', 45, 2, '2019-04-17', 'nonnonnon', 2),
(64, 71, 'Mais Con Yelo', 40, 3, '2019-04-17', 'nonnonnon', 2),
(65, 70, 'Lechon Kawali', 20, 4, '2019-04-17', 'nonnonnon', 2),
(66, 72, 'Sisig Rice Platter', 45, 2, '2019-04-17', 'nonnonnon', 2),
(67, 60, 'Kare-kare', 99, 1, '2019-04-18', 'nonnonnon', 3),
(68, 71, 'Caldereta', 40, 1, '2019-04-18', 'nonnonnon', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);
COMMIT;
