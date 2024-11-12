-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 12, 2024 at 03:35 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tastio`
--

-- --------------------------------------------------------

--
-- Table structure for table `myapp_recipe`
--

DROP TABLE IF EXISTS `myapp_recipe`;
CREATE TABLE IF NOT EXISTS `myapp_recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `recipe_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `ingredients` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `myapp_recipe`
--

INSERT INTO `myapp_recipe` (`id`, `user_id`, `recipe_name`, `category`, `ingredients`, `description`, `image`, `created_at`, `time`) VALUES
(25, 7, 'Chicken biryani', 'Indian', '<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>3 large red onions, sliced thin</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>200ml peanut oil for frying</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 kg chicken thighs, skin off</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>4 tbsp yoghurt</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 tsp chilli powder</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1/2 tsp ground turmeric</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 tsp garam masala</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>3 tsp ginger paste</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 tsp garlic paste</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Juice of 1 lemon</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>2 green chillies</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>2 cinnamon sticks</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>12 cardamom pod</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>2 tsp cumin seeds</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>6 cloves</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Salt to taste</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 bunch mint</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 bunch coriander</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>1 kg aged basmati rice</li></ol>', '<ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Start by making the crispy onions by heating up the oil in a saucepan over a medium high heat and frying the sliced onions in batches until golden brown.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Next, marinate your chicken by adding the chicken, 1/3 of the crispy onions, yoghurt, chilli powder, turmeric, garam masala, ginger, garlic, lemon juice, one cinnamon stick, 8 cardamom pods, 1 green chilli sliced thin, 1 tsp cumin seeds, 4 cloves, chopped mint and coriander and a tsp of salt in a large pot. Mix well and marinate for 4-24 hours.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>With the rice, rinse it twice then soak it in water for 40 minutes</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>In a large pot, half filled with water, add 1 tbsp salt, 1 green chilli sliced lengthways in half, 6 green cardamom, 1 cinnamon stick, 2 cloves and 1 tsp cumin seeds and bring to a simmer.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Add the soaked rice to the simmering water, stir once and cook for 6-8 minutes or until its just cooked. You still want a bit of bite in the rice.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Remove the rice from the water and set aside.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Place the marinated chicken onto a high heat and cook for 6-7 minutes, stirring every 1-2 minutes.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Remove half of the chicken, then sprinkle half of the rice on the chicken in the pot.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Next, add a layer of the crispy onions, some mint and coriander.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Place the rest of the chicken and repeat with the rice, crispy onions and herbs.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Place a clean tea towel over the lid of the pot and cover the biryani.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Turn your element to medium high for 10 minutes, then turn it down to very low for 30 minutes. Take from the heat and let it rest for 20 minutes before taking the lid off and serving.</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Enjoy!</li></ol><p><br></p>', '/Biryani_YiM5Rov.jpg', '2024-11-11 08:31:39', '1 Hour');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
