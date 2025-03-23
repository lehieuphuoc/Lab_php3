-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 19, 2025 lúc 04:58 PM
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
-- Cơ sở dữ liệu: `lab_pa00243`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_19_125223_create_news_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created_at`, `updated_at`, `category`) VALUES
(1, 'VinFast Green tiếp tục “nóng”, đơn hàng lớn tới tấp đổ về', '“Cơn bão” VinFast Green đã âm ỉ tại Việt Nam từ khi VinFast công bố thông tin về 4 dòng xe hồi đầu tháng 3 và đã thực sự bùng nổ ngay sau khi mở cổng đặt cọc. Không chỉ tạo ra khung cảnh xếp hàng online “xưa nay hiếm”, sự kiện offline được tổ chức ngày 18/3 tại Hà Nội cũng đặc biệt nóng khi đông đảo bác tài muốn đến tận nơi, tranh thủ cơ hội để sớm lên đời xe điện - “tài sản sinh lời trên từng km”.\r\nCơn sốt cọc bùng nổ, có thời điểm… “lag” cổng đặt cọc', '2025-03-17 13:51:12', '2025-03-19 13:52:19', 3),
(2, 'Phố cà phê đường tàu ở Hà Nội lại chật kín khách du lịch', 'Bất chấp lệnh cấm, lượng khách tới phố cà phê đường tàu ở Hà Nội vẫn đông đúc, nhộn nhịp, tiềm ẩn nguy hiểm.Sở Du lịch Hà Nội đã yêu cầu các đơn vị kinh doanh du lịch tại Thủ đô không được đưa khách tới phố cà phê đường tàu. Tuy nhiên khu vực phía quận Hoàn Kiếm của điểm check-in này vẫn luôn nườm nượp khách du lịch những ngày qua.', '2025-03-18 13:50:54', '2025-03-19 13:52:24', 3),
(3, 'Xử phạt người bị trâu húc khi đi chích điện bắt ếch ở Bình Chánh', 'Người đàn ông bị trâu húc khi đi chích điện bắt ếch ở bãi đất trống trên địa bàn xã Vĩnh Lộc A, huyện Bình Chánh bị phạt 3 triệu đồng.\r\nNgày 18-3, UBND xã Vĩnh Lộc A, huyện Bình Chánh, TP.HCM ra Quyết định xử phạt vi phạm hành chính với ông TPT (43 tuổi, quê tỉnh Quảng Nam; nơi ở xã Vĩnh Lộc A) vì có hành vi “sử dụng công cụ kích điện để khai thác thủy sản đối với trường hợp không sử dụng tàu cá mà chưa đến mức truy cứu trách nhiệm hình sự”.', '2025-03-19 13:51:00', '2025-03-19 13:52:27', 1),
(4, 'Nhiều khu vực chuyển rét đậm, rét hại do không khí lạnh bao phủ', 'Ngày 16/3, không khí lạnh tiếp tục ảnh hưởng đến các nơi khác ở phía Tây Bắc Bộ và Trung Trung Bộ, sau đó ảnh hưởng đến một số nơi ở Nam Trung Bộ. Nhiều nơi chuyển rét, vùng núi rét đậm dưới 10 độ.\r\nTheo Trung tâm Dự báo Khí tượng Thủy văn Quốc gia, hiện nay (16/3), không khí lạnh đã ảnh hưởng đến Bắc Trung Bộ, hầu hết phía Tây Bắc Bộ và một số nơi ở Trung Trung Bộ. Ở vịnh Bắc Bộ đã có gió Đông Bắc mạnh cấp 7, giật cấp 9.\r\n\r\nNgày 16/3, không khí lạnh tiếp tục ảnh hưởng đến các nơi khác ở phía Tây Bắc Bộ và Trung Trung Bộ, sau đó ảnh hưởng đến một số nơi ở Nam Trung Bộ. Trong đất liền gió Đông Bắc cấp 3-4, vùng ven biển cấp 4-5, có nơi giật cấp 6.', '2025-03-19 13:51:06', '2025-03-19 13:52:37', 1),
(5, 'Vì sao tháng 3 năm nay lạnh hơn trung bình nhiều năm?', 'Trung tâm áp cao lạnh lục địa có xu hướng lệch ra phía Đông, gây ra nhiều ngày mưa nhỏ, mưa phùn và sương mù. Điều này không chỉ làm giảm nhiệt độ mà còn tạo cảm giác rét kéo dài ở miền Bắc trong tháng 3.\r\nSau tháng 2 nhiệt độ lạnh bất thường (mức nhiệt phổ biến chỉ từ 15-18 độ C), người dân miền Bắc sẽ tiếp tục một tháng 3 với nhiều đợt không khí lạnh xuất hiện.', '2025-03-18 13:51:17', '2025-03-19 13:51:50', 1),
(6, 'Sáp nhập 2 tỉnh làm một, cơ quan đầu não đặt ở tỉnh bạn hay thành phố tôi?', 'Bộ trưởng Nội vụ Phạm Thị Thanh Trà vừa cho biết sau cuộc họp Bộ Chính trị, số lượng và mô hình đơn vị hành chính cấp tỉnh cần sắp xếp và sáp nhập đã được làm rõ. Bà nêu dự kiến trước 30/6 hoàn thành sắp xếp cấp xã; trước 30/8 sáp nhập xong các tỉnh.         \r\n\r\nCòn tại cuộc họp của Thường vụ Đảng ủy Chính phủ về tinh gọn bộ máy mới đây, Thủ tướng Phạm Minh Chính gợi mở tiêu chí lựa chọn trung tâm hành chính cấp tỉnh phải cân nhắc các yếu tố lịch sử, địa lý, kết nối hạ tầng, không gian phát triển.', '2025-03-18 13:43:22', '2025-03-19 13:51:54', 2),
(7, 'Thủ tướng Phạm Minh Chính tiếp đoàn 60 doanh nghiệp lớn của Hoa Kỳ', 'Khoảng 60 doanh nghiệp sang Việt Nam trong khuôn khổ chương trình do USABC tổ chức, trong đó có các tập đoàn hàng đầu như Boeing, Apple, Intel, Coca-Cola, Nike, Amazon và Bell Textron, Excelerate Energy...\r\nChiều 18-3, Thủ tướng Phạm Minh Chính làm việc với Đoàn Hội đồng kinh doanh Hoa Kỳ - ASEAN (USABC) và khoảng 60 doanh nghiệp lớn của Hoa Kỳ đang thăm, làm việc tại Việt Nam, do Chủ tịch kiêm Tổng Giám đốc USABC Ted Osius, nguyên Đại sứ Hoa Kỳ tại Việt Nam làm Trưởng đoàn.', '2025-03-18 13:50:45', '2025-03-19 13:52:40', 2),
(8, 'Tiêm kích tập luyện trên bầu trời phía Nam chuẩn bị trình diễn lễ 30/4', 'Đồng Nai - Hàng chục tiêm kích Su-30MK2, Yak-130, trực thăng huấn luyện trong hai tháng để trình diễn trên bầu trời dinh Độc Lập dịp 50 năm thống nhất đất nước.\r\nThông tin được trung tá Trần Thanh Luân, Phó trung đoàn Không quân 935, Sư đoàn 370 (Quân chủng Phòng không - Không quân), chia sẻ trong buổi tập luyện tại sân bay Biên Hòa ngày 18/3 để chuẩn bị cho dịp 50 năm thống nhất đất nước (30/4/1975-30/4/2025).', '2025-03-17 13:51:21', '2025-03-19 13:52:13', 2),
(9, 'Messi đá 2 trận nghỉ 2 tuần: Tranh cãi \"M10 hay Ronaldo xuất sắc hơn\" lại xuất hiện', 'Messi đá 2 trận lại phải nghỉ 2 tuần\nĐợt tập trung ĐTQG trong tháng 3/2025 vốn rất quan trọng với Lionel Messi, bởi Argentina sẽ phải đối đầu với hai đối thủ \"cứng cựa\" là Uruguay và Brazil. Tuy nhiên, siêu sao 37 tuổi lại vắng mặt đầy tiếc nuối. Sau buổi kiểm tra y tế vào sáng ngày thứ Hai (17/3, theo giờ địa phương), Messi dính chấn thương cơ và phải nghỉ từ 1-2 tuần.', '2025-03-19 13:51:26', '2025-03-19 13:52:09', 3),
(10, 'Trực tiếp bóng đá ĐT Việt Nam - Campuchia: \"Những ngôi sao vàng\" tấn công chủ động (Giao hữu)\r\n', 'Báo chí thế giới dự đoán Việt Nam thắng dễ\n\nMột số tờ báo quốc tế nhận định rằng đội tuyển Việt Nam có nhiều lợi thế và sẽ không gặp quá nhiều khó khăn để đánh bại Campuchia, dù đối thủ sở hữu tới 5 cầu thủ nhập tịch.\n\nTờ Sport Mole (Anh) đánh giá: \"Dưới sự dẫn dắt của HLV Kim Sang Sik, đội tuyển Việt Nam đang thể hiện phong độ ấn tượng với chuỗi 9 trận bất bại. Kể từ khi chiến lược gia người Hàn Quốc tiếp quản, đội bóng đã có những bước tiến đáng kể, giành 8 chiến thắng, 2 trận hòa và chỉ để thua 3 trong tổng số 13 trận đã đấu\".', '2025-03-18 13:51:37', '2025-03-19 13:52:00', 3),
(11, '4 vật dụng trong nhà càng rẻ càng chứa chất gây ung thư', 'Một số vật dụng thiết yếu trong đời sống hàng ngày như bát, giấy ăn, chăn, gối tưởng chừng vô hại nhưng có thể ẩn chứa nguy cơ gây ung thư.\r\nĐài Truyền hình Trung ương Trung Quốc (CCTV) công bố danh sách 4 loại sản phẩm thường dùng có thể chứa hóa chất độc hại, đặc biệt trong các sản phẩm giá rẻ.', '2025-03-16 14:47:01', '2025-03-17 14:47:08', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('AVr6aVkdwe5WL08zs9hIcjmgjAGegaLLIL1xuCYj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmN4dUhYc2toYkZId2FGQVRCc045c0RMQnVYUkI4TllmOXNvWjJycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC94ZW1uaGlldSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742399867);

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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
