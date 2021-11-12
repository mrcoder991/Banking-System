
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `My_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Sahil', 'Pratiksha', 600, '2021-04-17 18:58:27'),
(2, 'Neha', 'Ankit', 2000, '2021-04-17 19:00:31'),
(3, 'Vaishu', 'Nikita', 8000, '2021-04-17 19:01:32'),
(4, 'swara', 'Niky', 5000, '2021-04-17 19:06:15'),
(5, 'Arjun', 'Akanksha', 900, '2021-04-17 19:28:24'),
(6, 'Arjun', 'Akanksha', 200, '2021-04-17 19:30:31'),
(7, 'Arjun', 'Akanksha', 500, '2021-04-17 19:31:22'),
(8, 'Siddhu', 'Amit', 820, '2021-04-18 07:39:58'),
(9, 'Gauri', 'Ram', 5000, '2021-04-18 09:37:08'),
(10, 'Ram', 'Amait', 2000, '2021-04-18 11:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1087, 'Akanksha', 'akanksha20@gmail.com', 49600),
(2654, 'Amit', 'amitchuha@gmail.com', 80620),
(3624, 'Gauri', 'gauri30@gmail.com', 50000),
(4542, 'Arjun', 'nepali@gmail.com', 78800),
(5345, 'Swara', 'swaradev@gmail.com', 15000),
(5465, 'Ashu', 'baby@gmail.com', 90500),
(6554, 'Niky', 'niky05@gmail.com', 30000),
(7875, 'Siddhu', 'siddhupajji@gmail.com', 89480),
(8877, 'Shivam', 'perimal@gmail.com', 40070),
(9245, 'Sachin', 'nalla@gmail.com', 20900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

