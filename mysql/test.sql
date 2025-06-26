-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 11:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

--SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
--START TRANSACTION;
--SET time_zone = "+00:00";

-- Create the database if it doesn't exist
--CREATE DATABASE IF NOT EXISTS test;

-- Use the test database
--USE test;

-- Table structure for table `books`
--CREATE TABLE IF NOT EXISTS `books` (
  --`id` int(11) NOT NULL,
  --`title` varchar(300) NOT NULL,
  --`desc` varchar(500) NOT NULL,
  --`price` float NOT NULL,
 -- `cover` varchar(500) NOT NULL
--) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `books`
--INSERT INTO `books` (`id`, `title`, `desc`, `price`, `cover`) VALUES
--(1, 'MultiCloud', 'this is mutlicloud with devops cource by veera sir nareshit ', 2343.2, 'https://docs.multy.dev/assets/images/multi-cloud-314609adeec670988dff0882a93fdcb0.png'),
--(2, 'DevOps', 'if you understand the devops it is very easy', 2342.3, 'https://media.licdn.com/dms/image/v2/D5612AQHsA9dJVtZRdw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1730826289071?e=2147483647&v=beta&t=JGr0gJH6RE9b1Dk7nHAYF14Kmv96Gm519UOy_rSa3xE');

-- Add primary key for the books table
--ALTER TABLE `books`
  --ADD PRIMARY KEY (`id`);

-- Set auto increment for the `id` column
-- ALTER TABLE `books`
--  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

-- COMMIT;



-- Drop and recreate the test database
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

-- Drop any existing trigger
DROP TRIGGER IF EXISTS must_update_price;

-- Drop the books table if it exists
DROP TABLE IF EXISTS books;

-- Create the books table
CREATE TABLE books (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(300) DEFAULT NULL,
  `desc` VARCHAR(500) DEFAULT NULL,
  price FLOAT DEFAULT NULL,
  cover VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Insert full sample book (optional)
-- INSERT INTO books (title, `desc`, price, cover) VALUES
-- ('MultiCloud', 'Multicloud with DevOps course by Veera Sir', 2343.2, 'https://example.com/multicloud.png');
INSERT INTO `books` (`id`, `title`, `desc`, `price`, `cover`) VALUES
(1, 'MultiCloud', 'this is mutlicloud with devops cource by veera sir nareshit ', 2343.2, 'https://docs.multy.dev/assets/images/multi-cloud-314609adeec670988dff0882a93fdcb0.png'),
(2, 'DevOps', 'if you understand the devops it is very easy', 2342.3, 'https://media.licdn.com/dms/image/v2/D5612AQHsA9dJVtZRdw/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1730826289071?e=2147483647&v=beta&t=JGr0gJH6RE9b1Dk7nHAYF14Kmv96Gm519UOy_rSa3xE');

-- Optional: Insert a book with only title (like a form with only one input filled)
INSERT INTO books (title) VALUES ('Title Only');

-- Optional: Insert a completely empty book (form submitted with nothing filled)
INSERT INTO books () VALUES ();
