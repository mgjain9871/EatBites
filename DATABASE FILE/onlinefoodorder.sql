SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Naman', 'naman', 'naman'),
(9, 'Navaneeth', 'nav', 'nav'),
(10, 'Mitul', 'mitul', 'mitul'),
(12, 'Pratyasha', 'pratyasha', 'pratyasha'),
(18,'Mudit','mudit','mudit');

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(9, 'Wraps', 'Food_Category_374.jpg', 'Yes', 'Yes'),
(10, 'Pasta', 'Food_Category_948.jpg', 'Yes', 'Yes'),
(11, 'Sandwich', 'Food_Category_536.jpg', 'Yes', 'Yes'),
(13, 'Shake', 'Food_Category_929.jpg', 'Yes', 'Yes'),
(14, 'Beverages', 'Food_Category_54.jpg', 'Yes', 'Yes'),
(16, 'Fritters', 'Food_Category_294.jpg', 'Yes', 'Yes'),
(15, 'Noodles', 'Food_Category_572.jpg', 'Yes', 'Yes');

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(41, 'Classic Red Sauce', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '150', 'classicredsaucepasta.jpg',10, 'Yes', 'Yes'),
(42, 'Mixed Sauce Pasta', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '200', 'Mixed Sauce Pasta.jpg',10, 'Yes', 'Yes'),
(43, 'Stuffed Raviolo', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '300', 'stuffedravioli.jpg',10, 'Yes', 'Yes'),
(44, 'Creamy White Sauce', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '250', 'creamywhitesauce.jpg',10, 'Yes', 'Yes'),
(45, 'Veg Marinara Pasta', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '200', 'veganmarinara.jpg',10, 'Yes', 'Yes'),
(46, 'Italian Red Pasta', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '299', 'italianpasta.jpg',10, 'Yes', 'Yes'),
(11, 'Chinese Chicken Noodles', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '200', 'Chinese Chicken Noodles.jpg',15, 'Yes', 'Yes'),
(12, 'Vegetable Chowmein', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '150', 'Vegetable ChowMein.jpg',15, 'Yes', 'Yes'),
(13, 'Chinese Noodle Soup', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '199', 'Chinese Noodle Soup.jpg',15, 'Yes', 'Yes'),
(14, 'Shezwan Noodles', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '250', 'Shezwan Noodles.jpg',15, 'Yes', 'Yes'),
(15, 'Spaghetti', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '300', 'Spaghetti.jpg',15, 'Yes', 'Yes'),
(16, 'Hakka Noodles', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '400', 'Hakka Noodles.jpg',15, 'Yes', 'Yes'),
(31,'Masoordal Pakoda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','250', 'masoordalpakoda.jpg',16, 'Yes', 'Yes'),
(32,'Methi pakoda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','220', 'methipakoda.jpg',16, 'Yes', 'Yes'),
(33,'Paneer Pakoda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','280', 'paneerpakoda.jpg',16, 'Yes', 'Yes'),
(34,'Palak Pyaaz Pakoda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','280', 'palakpyazpakoda.jpg',16, 'Yes', 'Yes'),
(35,'Sooji Pakoda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','320', 'soojipakoda.jpg',16, 'Yes', 'Yes'),
(36,'Onion Pakoda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','200', 'pyajpakoda.jpg',16, 'Yes', 'Yes'),
(51, 'Mini Mushroom Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '250', 'minimushroom.jpg',4, 'Yes', 'Yes'),
(52, 'Veg Veganza Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '200', 'vegi.jpg',4, 'Yes', 'Yes'),
(53, 'Cheese Burst Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '350', 'chesseburst.jpg',4, 'Yes', 'Yes'),
(54, 'Extra Cheese Margharita Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '200', 'margreta.jpg',4, 'Yes', 'Yes'),
(55, 'Tomato Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '299', 'Food-Name-4951.jpg',4, 'Yes', 'Yes'),
(56, 'Cheese Delight Pizza', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '499', 'crustcheese.jfif',4, 'Yes', 'Yes'),
(57, 'Fish Taco Wrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '150', 'fishtakorap.jpg',9, 'Yes', 'Yes'),
(58, 'Paneer Chola Wrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '199', 'Food-Name-2017.jpg',9, 'Yes', 'Yes'),
(59, 'Mix Veggie Wrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '149', 'Food-Name-2709.jpg',9, 'Yes', 'Yes'),
(60, 'Zinger Wrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '179', 'Food-Name-3461.jpg',9, 'Yes', 'Yes'),
(61, 'Falafel Wrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '299', 'Food-Name-8724.jpg',9, 'Yes', 'Yes'),
(62, 'Quesadilla Wrap', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '279', 'Food-Name-7650.jpg',9, 'Yes', 'Yes'),
(63, 'Double Cheese', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '150', 'doublecheese.jpg',5, 'Yes', 'Yes'),
(64, 'Chicken Burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '299', 'chickenburger.jpg',5, 'Yes', 'Yes'),
(65, 'Egg Burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '199', 'eggburger.jpg',5, 'Yes', 'Yes'),
(66, 'Fish Burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '220', 'filetofish.jpg',5, 'Yes', 'Yes'),
(67, 'Pork Burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '299', 'porkburger.jpg',5, 'Yes', 'Yes'),
(68, 'Fiesta Burger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '320', 'Food-Name-433.jpeg',5, 'Yes', 'Yes'),
(69, 'Cherry Vanilla', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '150', 'cherryvanilla.jpeg',13, 'Yes', 'Yes'),
(70, 'Choco Chip', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '250', 'chocochip.jpg',13, 'Yes', 'Yes'),
(71, 'Fire Cracker', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '299', 'firecracker.jpg',13, 'Yes', 'Yes'),
(72, 'Ice-Cream Cherry', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '320', 'Food-Name-5347.jpg',13, 'Yes', 'Yes'),
(73, 'Oreo Shake', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '190', 'Food-Name-9145.jpg',13, 'Yes', 'Yes'),
(74, 'Strawberry', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '210', 'strawberry.jpg',13, 'Yes', 'Yes'),
(75,'Mexican Mojito', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','200', 'maxican.jpg',14, 'Yes', 'Yes'),
(76,'Espresso Martini', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','260', 'new.jpg',14, 'Yes', 'Yes'),
(77,'Latte', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','180', 'coffee.jpg',14, 'Yes', 'Yes'),
(78,'Coffee', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','150', 'coffeeee.jpg',14, 'Yes', 'Yes'),
(79,'Cranberry Drink', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','300', 'cramberin.jpg',14, 'Yes', 'Yes'),
(80,'Vanilla Espresso Martini', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.','340', 'new.jpg',14, 'Yes', 'Yes'),
(91, 'Chicken Sandwich', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '150', 'chickenburgerr.jpg',11, 'Yes', 'Yes'),
(92, 'Veggie Sandwich', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '99', 'Food-Name-209.jpg',11, 'Yes', 'Yes'),
(93, 'Egg Sandwich', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '129', 'Food-Name-1140.jpg',11, 'Yes', 'Yes'),
(94, 'Fish Sandwich', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '199', 'Food-Name-1819.jpg',11, 'Yes', 'Yes'),
(95, 'Crino Sandwich', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '220', 'Food-Name-3631.jpg',11, 'Yes', 'Yes'),
(96, 'Mac Cheese Sandwich', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nesciunt consequuntur, eum eos assumenda praesentium magnam iure, placeat ad fugit distinctio earum suscipit quod necessitatibus culpa impedit, nisi nobis? Inventore.', '249', 'maccheese.jpg',11, 'Yes', 'Yes');



CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(2, 'Chicken Sandwich', '150', 4, '600', '2021-11-30 03:52:43', 'Delivered', 'Mudit', '7896547800', 'mudit@gmail.com', 'Vasant Vihar'),
(3, 'Mix Veggie Wrap', '149', 2, '298', '2021-11-30 04:07:17', 'Delivered', 'Navaneeth', '7410001450', 'navaneeth@gmail.com', 'metaverse'),
(4, 'Ice-Cream Cherry', '320', 1, '320', '2021-05-04 01:35:34', 'Delivered', 'Pratyasha', '78540001200', 'pratyasha@gmail.com', 'Gandhi Nagar'),
(6, 'Spaghetti', '300', 1, '300', '2021-07-20 06:10:37', 'Delivered', 'Mitul', '7458965550', 'mitul@gmail.com', 'Ashok Vihar'),
(7, 'Onion Pakoda', '200', 2, '400', '2021-07-20 06:40:21', 'On Delivery', 'Naman', '7451114400', 'naman@gmail.com', 'Ashok Nagar'),
(8, 'Vanilla Espresso Martini', '340', 1, '340', '2021-07-20 06:40:57', 'Ordered', 'Kangana', '7414744440', 'kangana@gmail.com', 'Mayur Vihar'),
(9, 'Mexican Mojito', '200', 4, '800', '2021-07-25 08:05:04', 'Cancelled', 'Hankpym', '7401456980', 'hankpym@gmail.com', 'A16 Vishakapatnam'),
(10, 'Shezwan Noodles', '250', 4, '1000', '2021-08-12 02:16:06', 'Delivered', 'Natasha', '7410256996', 'natasha@gmail.com', 'B12 Ramnagar');

ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

