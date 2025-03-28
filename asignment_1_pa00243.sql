-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 28, 2025 lúc 06:07 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asignment_1_pa00243`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thời sự', 'thoi-su', '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(2, 'Thể thao', 'the-thao', '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(3, 'Giải trí', 'giai-tri', '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(4, 'Công nghệ', 'cong-nghe', '2025-03-27 17:00:00', '2025-03-27 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 'Tuyệt vời! Đội tuyển Việt Nam quá xuất sắc!', 1, 1, '2025-03-28 01:05:00', '2025-03-28 01:05:00'),
(2, 'Chúc mừng đội tuyển! Tiếp tục giữ vững phong độ nhé.', 2, 1, '2025-03-28 01:10:00', '2025-03-28 01:10:00'),
(3, 'iPhone mới đẹp quá, mong sớm sở hữu!', 3, 2, '2025-03-27 03:15:00', '2025-03-27 03:15:00'),
(4, 'Hồ Ngọc Hà hát hay quá!', 1, 3, '2025-03-26 13:30:00', '2025-03-26 13:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_03_28_114847_create_users_table', 1),
(2, '2025_03_28_115310_create_categories_table', 1),
(3, '2025_03_28_115508_create_news_table', 2),
(4, '2025_03_28_115607_create_comments_table', 2),
(5, '2025_03_28_121134_create_sessions_table', 3),
(6, '2025_03_28_124744_add_email_verified_at_to_users_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `description`, `content`, `image`, `views`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Đội tuyển Việt Nam thắng đậm Thái Lan tại AFF Cup', 'doi-tuyen-viet-nam-thang-dam-thai-lan-tai-aff-cup', 'Đội tuyển Việt Nam giành chiến thắng 3-0 trong trận đấu kịch tính...', 'Đội tuyển Việt Nam đã có một trận đấu xuất sắc khi giành chiến thắng 3-0 trước Thái Lan trong khuôn khổ AFF Cup 2025. Các bàn thắng được ghi do công của Quang Hải, Tiến Linh và Văn Toàn...', 'https://media.vov.vn/sites/default/files/styles/large/public/2025-03/vn_-_cam.png.jpg', 12000, 2, '2025-03-28 01:00:00', '2025-03-28 01:00:00'),
(2, 'iPhone 16 ra mắt với giá sốc', 'iphone-16-ra-mat-voi-gia-soc', 'Apple vừa công bố iPhone 16 với nhiều cải tiến vượt trội...', 'Apple vừa công bố iPhone 16 với nhiều cải tiến vượt trội, giá khởi điểm chỉ từ 20 triệu đồng...', 'https://vatvostudio.vn/wp-content/uploads/2024/09/Tren-tay-iphone-16-Pro-iPhone-16-Pro-Max-14.jpg', 10000, 4, '2025-03-27 03:00:00', '2025-03-27 03:00:00'),
(3, 'Hồ Ngọc Hà biểu diễn tại Hà Nội', 'ho-ngoc-ha-bieu-dien-tai-ha-noi', 'Ca sĩ Hồ Ngọc Hà có buổi biểu diễn hoành tráng tại Hà Nội...', 'Tối qua, ca sĩ Hồ Ngọc Hà đã có buổi biểu diễn hoành tráng tại Hà Nội với hàng nghìn khán giả tham dự...', 'https://vcdn1-vnexpress.vnecdn.net/2022/02/09/ho-ngoc-ha-2670-1629358205-9925-1644375867.jpg?w=460&h=0&q=100&dpr=2&fit=crop&s=AanjxJYXjuSom36utb5KyA', 8000, 3, '2025-03-26 13:00:00', '2025-03-26 13:00:00'),
(4, 'Giá xăng tăng mạnh từ hôm nay', 'gia-xang-tang-manh-tu-hom-nay', 'Giá xăng tăng thêm 500 đồng/lít từ hôm nay...', 'Từ 0h ngày 28/03/2025, giá xăng chính thức tăng thêm 500 đồng/lít, gây ảnh hưởng đến người tiêu dùng...', 'https://bqn.1cdn.vn/2025/03/27/baogiaothong.mediacdn.vn-603483875699699712-2023-12-12-_nguoi-tieu-dung-o-nghe-an-dang-phai-mua-xang-dau-cao-hon-2-so-voi-gia-dieu-hanh-cua-nha-nuoc-17023450359531693570473.jpg', 5000, 1, '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(5, 'Trận mưa lớn gây ngập lụt ở TP.HCM', 'tran-mua-lon-gay-ngap-lut-o-tp-hcm', 'Mưa lớn kéo dài gây ngập nhiều tuyến đường tại TP.HCM...', 'Trận mưa lớn tối qua đã khiến nhiều khu vực tại TP.HCM bị ngập sâu, giao thông tê liệt...', 'https://tl.cdnchinhphu.vn/344445545208135680/2024/8/13/z572779931963484b2b895635f90cd9e1969e19ec1dfc9-17235561100391997396236.jpg', 4000, 1, '2025-03-27 11:00:00', '2025-03-27 11:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WpTct9X7cKapyQOQKPTKp551pzXRU2Ap2C9cpukO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianFsOHFiUnJiSDdrbmFuOGxQSElhV28xQ0d4NE5Ma3BZZzJHWUVobSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYW5nLWt5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1743167670);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana@example.com', NULL, '$2y$10$z7X8e9k8eL9vX9y5z5X5XOj5X5X5X5X5X5X5X5X5X5X5X5X5X5X5X', NULL, '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(2, 'Trần Thị B', 'tranthib@example.com', NULL, '$2y$10$z7X8e9k8eL9vX9y5z5X5XOj5X5X5X5X5X5X5X5X5X5X5X5X5X5X5X', NULL, '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(3, 'Lê Văn C', 'levanc@example.com', NULL, '$2y$10$z7X8e9k8eL9vX9y5z5X5XOj5X5X5X5X5X5X5X5X5X5X5X5X5X5X5X', NULL, '2025-03-27 17:00:00', '2025-03-27 17:00:00'),
(8, 'Lê Hiểu Phước', 'lehieuphuoc35205@gmail.com', NULL, '$2y$12$EC5IUFSm6rUjqWMjTZKWWebG7f3/Qc/JQ9cs8/xk4EthbbPZjpwJ.', 'Ja6oTyUYKuXEopXPkYkhdDm227ZFrEt6rMuXlfpTHAbUuQkqNbi0sniETxQd', '2025-03-28 08:58:04', '2025-03-28 08:58:04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_news_id_foreign` (`news_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
