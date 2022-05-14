-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 03:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orderapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add category', 1, 'add_category'),
(2, 'Can change category', 1, 'change_category'),
(3, 'Can delete category', 1, 'delete_category'),
(4, 'Can view category', 1, 'view_category'),
(5, 'Can add color', 2, 'add_color'),
(6, 'Can change color', 2, 'change_color'),
(7, 'Can delete color', 2, 'delete_color'),
(8, 'Can view color', 2, 'view_color'),
(9, 'Can add contact', 3, 'add_contact'),
(10, 'Can change contact', 3, 'change_contact'),
(11, 'Can delete contact', 3, 'delete_contact'),
(12, 'Can view contact', 3, 'view_contact'),
(13, 'Can add product', 4, 'add_product'),
(14, 'Can change product', 4, 'change_product'),
(15, 'Can delete product', 4, 'delete_product'),
(16, 'Can view product', 4, 'view_product'),
(17, 'Can add size', 5, 'add_size'),
(18, 'Can change size', 5, 'change_size'),
(19, 'Can delete size', 5, 'delete_size'),
(20, 'Can view size', 5, 'view_size'),
(21, 'Can add product attribute', 6, 'add_productattribute'),
(22, 'Can change product attribute', 6, 'change_productattribute'),
(23, 'Can delete product attribute', 6, 'delete_productattribute'),
(24, 'Can view product attribute', 6, 'view_productattribute'),
(25, 'Can add order', 7, 'add_order'),
(26, 'Can change order', 7, 'change_order'),
(27, 'Can delete order', 7, 'delete_order'),
(28, 'Can view order', 7, 'view_order'),
(29, 'Can add cart', 8, 'add_cart'),
(30, 'Can change cart', 8, 'change_cart'),
(31, 'Can delete cart', 8, 'delete_cart'),
(32, 'Can view cart', 8, 'view_cart'),
(33, 'Can add log entry', 9, 'add_logentry'),
(34, 'Can change log entry', 9, 'change_logentry'),
(35, 'Can delete log entry', 9, 'delete_logentry'),
(36, 'Can view log entry', 9, 'view_logentry'),
(37, 'Can add permission', 10, 'add_permission'),
(38, 'Can change permission', 10, 'change_permission'),
(39, 'Can delete permission', 10, 'delete_permission'),
(40, 'Can view permission', 10, 'view_permission'),
(41, 'Can add group', 11, 'add_group'),
(42, 'Can change group', 11, 'change_group'),
(43, 'Can delete group', 11, 'delete_group'),
(44, 'Can view group', 11, 'view_group'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add content type', 13, 'add_contenttype'),
(50, 'Can change content type', 13, 'change_contenttype'),
(51, 'Can delete content type', 13, 'delete_contenttype'),
(52, 'Can view content type', 13, 'view_contenttype'),
(53, 'Can add session', 14, 'add_session'),
(54, 'Can change session', 14, 'change_session'),
(55, 'Can delete session', 14, 'delete_session'),
(56, 'Can view session', 14, 'view_session'),
(57, 'Can add type', 15, 'add_type'),
(58, 'Can change type', 15, 'change_type'),
(59, 'Can delete type', 15, 'delete_type'),
(60, 'Can view type', 15, 'view_type');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$rEkFBEgfiCbGKA5j8L9E3y$PLZu7MjaZsfkKCmxAvie1iKfODHQEHpg76QYHHj6FNQ=', '2022-05-02 10:41:15.536065', 1, 'admin', 'Racque', 'Miranda', 'RhakzMiranda@gmail.com', 1, 1, '2022-05-02 06:51:12.000000'),
(2, 'pbkdf2_sha256$320000$51SfYijwNaAbPvJuWQctf3$2+4qx1+CuSJCcecFSU6vr4vBXF87wx8LPoB7H1zbehw=', '2022-05-04 07:46:45.852267', 0, 'jayva', 'Jayva', 'Enanor', 'enanorjayva96@gmail.com', 0, 1, '2022-05-02 06:55:04.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 1),
(1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-02 06:51:46.390379', '1', 'admin', 1, '[{\"added\": {}}]', 11, 1),
(2, '2022-05-02 06:51:51.110626', '2', 'customer', 1, '[{\"added\": {}}]', 11, 1),
(3, '2022-05-02 06:54:43.202521', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 12, 1),
(4, '2022-05-02 06:55:42.452420', '2', 'jayva', 2, '[]', 12, 1),
(5, '2022-05-02 06:58:52.613937', '1', 'Windows', 1, '[{\"added\": {}}]', 1, 1),
(6, '2022-05-02 06:58:56.494800', '2', 'Doors', 1, '[{\"added\": {}}]', 1, 1),
(7, '2022-05-02 06:59:01.822958', '3', 'Tables', 1, '[{\"added\": {}}]', 1, 1),
(8, '2022-05-02 06:59:06.103010', '4', 'Aquariums', 1, '[{\"added\": {}}]', 1, 1),
(9, '2022-05-02 06:59:20.404884', '5', 'Hanging Cabinets', 1, '[{\"added\": {}}]', 1, 1),
(10, '2022-05-02 06:59:29.006607', '6', 'Cabinet', 1, '[{\"added\": {}}]', 1, 1),
(11, '2022-05-02 06:59:45.939636', '7', 'Display Stand', 1, '[{\"added\": {}}]', 1, 1),
(12, '2022-05-02 06:59:55.974792', '1', 'Clear', 1, '[{\"added\": {}}]', 2, 1),
(13, '2022-05-02 06:59:59.942838', '2', 'Bronze', 1, '[{\"added\": {}}]', 2, 1),
(14, '2022-05-02 07:00:16.749821', '3', 'Luningning', 1, '[{\"added\": {}}]', 2, 1),
(15, '2022-05-02 07:00:23.982634', '4', 'Reflective Blue', 1, '[{\"added\": {}}]', 2, 1),
(16, '2022-05-02 07:00:32.551400', '5', 'Reflective Gold', 1, '[{\"added\": {}}]', 2, 1),
(17, '2022-05-02 07:00:40.054550', '6', 'Reflective Green', 1, '[{\"added\": {}}]', 2, 1),
(18, '2022-05-02 07:00:47.863456', '7', 'Karatchi Dark Grey', 1, '[{\"added\": {}}]', 2, 1),
(19, '2022-05-02 07:00:54.782866', '8', 'Dark Grey', 1, '[{\"added\": {}}]', 2, 1),
(20, '2022-05-02 07:01:04.544195', '1', '4 x 4', 1, '[{\"added\": {}}]', 5, 1),
(21, '2022-05-02 07:01:07.927964', '2', '4 x 6', 1, '[{\"added\": {}}]', 5, 1),
(22, '2022-05-02 07:01:12.272277', '3', '4 x 8', 1, '[{\"added\": {}}]', 5, 1),
(23, '2022-05-02 07:01:50.901847', '1', 'Aquarium', 1, '[{\"added\": {}}]', 4, 1),
(24, '2022-05-02 07:02:30.030767', '2', 'Awning Window', 1, '[{\"added\": {}}]', 4, 1),
(25, '2022-05-02 07:03:08.924900', '3', 'Built-in Cabinet', 1, '[{\"added\": {}}]', 4, 1),
(26, '2022-05-02 07:03:44.821058', '4', 'Build-in Hanging Cabinet', 1, '[{\"added\": {}}]', 4, 1),
(27, '2022-05-02 07:04:24.005558', '5', 'Fixed Sliding Door', 1, '[{\"added\": {}}]', 4, 1),
(28, '2022-05-02 07:04:51.948913', '6', 'Round Table', 1, '[{\"added\": {}}]', 4, 1),
(29, '2022-05-02 07:32:38.663649', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 12, 1),
(30, '2022-05-02 07:32:44.013254', '1', 'admin', 2, '[]', 12, 1),
(31, '2022-05-02 07:32:49.608281', '1', 'admin', 2, '[]', 12, 1),
(32, '2022-05-02 12:58:40.923384', '1', 'ProductAttribute object (1)', 1, '[{\"added\": {}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'admin', 'logentry'),
(11, 'auth', 'group'),
(10, 'auth', 'permission'),
(12, 'auth', 'user'),
(13, 'contenttypes', 'contenttype'),
(8, 'myapp', 'cart'),
(1, 'myapp', 'category'),
(2, 'myapp', 'color'),
(3, 'myapp', 'contact'),
(7, 'myapp', 'order'),
(4, 'myapp', 'product'),
(6, 'myapp', 'productattribute'),
(5, 'myapp', 'size'),
(15, 'myapp', 'type'),
(14, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-02 06:50:25.201934'),
(2, 'auth', '0001_initial', '2022-05-02 06:50:25.571705'),
(3, 'admin', '0001_initial', '2022-05-02 06:50:25.664368'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-02 06:50:25.672061'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-02 06:50:25.679007'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-02 06:50:25.731104'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-02 06:50:25.772211'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-02 06:50:25.791350'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-02 06:50:25.798342'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-02 06:50:25.834657'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-02 06:50:25.837908'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-02 06:50:25.845888'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-02 06:50:25.862809'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-02 06:50:25.882159'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-02 06:50:25.898261'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-02 06:50:25.906705'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-02 06:50:25.919816'),
(18, 'myapp', '0001_initial', '2022-05-02 06:50:26.296374'),
(19, 'sessions', '0001_initial', '2022-05-02 06:50:26.329533'),
(20, 'myapp', '0002_type_alter_product_category', '2022-05-02 09:48:34.926616'),
(21, 'myapp', '0003_delete_type_productattribute_quantity', '2022-05-02 11:15:01.998425');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('t8u0drkgxc81otj2caaj3zzq0u5bgo18', '.eJxVjDsOwjAQBe_iGllZK_5R0nMGa-1d4wCypTipIu5OIqWA9s282UTAdSlh7TyHicRVKHH53SKmF9cD0BPro8nU6jJPUR6KPGmX90b8vp3uX6BgL_ubQSvt2Y0OwQMZoDwmra3x1qFCUFblrJ3ei-TQovGeBkow5KgisBGfL9CCN94:1nm9if:b_tMPrIcZmYsMN-eUkUaN5D9yyQvEYf0ZtX3wGtXDps', '2022-05-18 07:46:45.868058'),
('thf74bo44ih1q0k6ch9dxs1uod9qax62', '.eJxVjMsOwiAQRf-FtSHIo2Vcuu83kIEZpGogKe3K-O_apAvd3nPOfYmA21rC1nkJM4mLOIvT7xYxPbjugO5Yb02mVtdljnJX5EG7nBrx83q4fwcFe_nWGshY67PKoEfKdsxZsfNsvB6cH5SPKWVKCGiBDRjUSNaRo2TJMYN4fwDmUziF:1nlQPq:VK0J8Ej7r6jp1hzhP8dsyZ-x0N4KKKkom6IUnoIco4c', '2022-05-16 07:24:18.596463');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_cart`
--

CREATE TABLE `myapp_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_category`
--

CREATE TABLE `myapp_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_category`
--

INSERT INTO `myapp_category` (`id`, `category_name`) VALUES
(1, 'Windows'),
(2, 'Doors'),
(3, 'Tables'),
(4, 'Aquariums'),
(5, 'Hanging Cabinets'),
(6, 'Cabinet'),
(7, 'Display Stand');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_color`
--

CREATE TABLE `myapp_color` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_color`
--

INSERT INTO `myapp_color` (`id`, `name`) VALUES
(1, 'Clear'),
(2, 'Bronze'),
(3, 'Luningning'),
(4, 'Reflective Blue'),
(5, 'Reflective Gold'),
(6, 'Reflective Green'),
(7, 'Karatchi Dark Grey'),
(8, 'Dark Grey');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_contact`
--

CREATE TABLE `myapp_contact` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_num` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_order`
--

CREATE TABLE `myapp_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_product`
--

CREATE TABLE `myapp_product` (
  `id` bigint(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_description` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `product_quantity` varchar(10000) DEFAULT NULL,
  `product_stat` varchar(50) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_product`
--

INSERT INTO `myapp_product` (`id`, `product_image`, `product_name`, `product_description`, `price`, `product_quantity`, `product_stat`, `category_id`) VALUES
(1, 'image/aquarium_T2Njf3O.jpg', 'Aquarium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1000, '2', 'In Stock', 4),
(2, 'image/awning_window_FXKkzvN_zHIFZuo.jpg', 'Awning Window', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 800, '1', 'In Stock', 1),
(3, 'image/built_in_cabinet_JI7mS68.jpg', 'Built-in Cabinet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 13000, '3', 'In Stock', 6),
(4, 'image/build_in_cabinet.jpg', 'Build-in Hanging Cabinet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 12000, '1', 'In Stock', 5),
(5, 'image/fixed_slide_door.jpg', 'Fixed Sliding Door', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 18000, '4', 'In Stock', 2),
(6, 'image/table_BK9AEbR_GBYWJBg.jpg', 'Round Table', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 16000, '3', 'In Stock', 3);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_productattribute`
--

CREATE TABLE `myapp_productattribute` (
  `id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `color_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_productattribute`
--

INSERT INTO `myapp_productattribute` (`id`, `price`, `color_id`, `product_id`, `size_id`, `quantity`) VALUES
(1, 870, 1, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_size`
--

CREATE TABLE `myapp_size` (
  `id` bigint(20) NOT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `standard_size` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_size`
--

INSERT INTO `myapp_size` (`id`, `height`, `width`, `length`, `standard_size`) VALUES
(1, NULL, NULL, NULL, '4 x 4'),
(2, NULL, NULL, NULL, '4 x 6'),
(3, NULL, NULL, NULL, '4 x 8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myapp_cart`
--
ALTER TABLE `myapp_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_cart_order_id_a6b95752_fk_myapp_order_id` (`order_id`),
  ADD KEY `myapp_cart_product_id_8e7aeeb3_fk_myapp_product_id` (`product_id`);

--
-- Indexes for table `myapp_category`
--
ALTER TABLE `myapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_color`
--
ALTER TABLE `myapp_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_contact`
--
ALTER TABLE `myapp_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_order`
--
ALTER TABLE `myapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_order_product_id_46d28c6c_fk_myapp_product_id` (`product_id`);

--
-- Indexes for table `myapp_product`
--
ALTER TABLE `myapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_product_category_id_f672ddc0_fk_myapp_category_id` (`category_id`);

--
-- Indexes for table `myapp_productattribute`
--
ALTER TABLE `myapp_productattribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_productattribute_color_id_8f46b0b3_fk_myapp_color_id` (`color_id`),
  ADD KEY `myapp_productattribute_product_id_f22dd393_fk_myapp_product_id` (`product_id`),
  ADD KEY `myapp_productattribute_size_id_772b36cd_fk_myapp_size_id` (`size_id`);

--
-- Indexes for table `myapp_size`
--
ALTER TABLE `myapp_size`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `myapp_cart`
--
ALTER TABLE `myapp_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_category`
--
ALTER TABLE `myapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `myapp_color`
--
ALTER TABLE `myapp_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myapp_contact`
--
ALTER TABLE `myapp_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_order`
--
ALTER TABLE `myapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_product`
--
ALTER TABLE `myapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `myapp_productattribute`
--
ALTER TABLE `myapp_productattribute`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myapp_size`
--
ALTER TABLE `myapp_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myapp_cart`
--
ALTER TABLE `myapp_cart`
  ADD CONSTRAINT `myapp_cart_order_id_a6b95752_fk_myapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `myapp_order` (`id`),
  ADD CONSTRAINT `myapp_cart_product_id_8e7aeeb3_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`);

--
-- Constraints for table `myapp_order`
--
ALTER TABLE `myapp_order`
  ADD CONSTRAINT `myapp_order_product_id_46d28c6c_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`);

--
-- Constraints for table `myapp_product`
--
ALTER TABLE `myapp_product`
  ADD CONSTRAINT `myapp_product_category_id_f672ddc0_fk_myapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `myapp_category` (`id`);

--
-- Constraints for table `myapp_productattribute`
--
ALTER TABLE `myapp_productattribute`
  ADD CONSTRAINT `myapp_productattribute_color_id_8f46b0b3_fk_myapp_color_id` FOREIGN KEY (`color_id`) REFERENCES `myapp_color` (`id`),
  ADD CONSTRAINT `myapp_productattribute_product_id_f22dd393_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`),
  ADD CONSTRAINT `myapp_productattribute_size_id_772b36cd_fk_myapp_size_id` FOREIGN KEY (`size_id`) REFERENCES `myapp_size` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
