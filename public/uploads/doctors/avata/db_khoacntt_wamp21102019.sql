-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 20, 2019 lúc 07:22 PM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_khoacntt_wamp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subDescription` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `images` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryIds` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `subDescription`, `description`, `images`, `categoryIds`, `createdDate`) VALUES
(1, 'Thầy Nguyễn Đạt', 'no subDes', '<p>description</p>', '/images/ths1.jpg', '2', '2019-10-10'),
(2, 'Những điều nên trách khi dùng javascript', 'Thói quen xấu khi viết code trong javascript nên tránh', '<p>B&agrave;i viết n&agrave;y cũng l&agrave; một trong những b&agrave;i viết về<strong>&nbsp;</strong><a href=\"https://anonystick.com/tag/tips%20and%20tricks%20javascript\"><strong>tips and tricks javascript</strong></a>&nbsp;c&aacute;c bạn n&ecirc;n đọc để hiểu nhiều hơn nữa nh&eacute;.</p>\r\n\r\n<p>Đ&oacute; ch&iacute;nh l&agrave; điều m&agrave; t&ocirc;i muốn n&oacute;i trong b&agrave;i viết h&ocirc;m nay. Khi viết code, kh&ocirc;ng ai tr&aacute;nh khỏi những th&oacute;i quen xấu trong function của m&igrave;nh. Do đ&oacute; người kh&aacute;c đọc v&agrave;o code của bạn cảm thấy kh&oacute; hiểu đ&oacute; l&agrave; điều đương nhi&ecirc;n.&nbsp;</p>\r\n\r\n<p>Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ b&agrave;n luận qua những v&iacute; dụ h&igrave;nh th&agrave;nh những th&oacute;i quen xấu đ&oacute;, v&agrave; quan trọng l&agrave; t&ocirc;i sẽ tr&igrave;nh b&agrave;y để loại bỏ những th&oacute;i quen xấu khi viết code.&nbsp;</p>', '/images/1_x2IQ-Z_PnAS_CEBa72s-5Q.png', '30', '2019-10-21'),
(3, 'Những lỗi nên tránh của lập trình viên PHP', 'Sau nhiều năm code PHP, nhìn thấy lập trình viên lặp đi lặp lại các lỗi cơ bản, nên tui viết định viết bài này để nhằm giúp cho chúng ta code PHP trở nên sạch đẹp hơn.', '<h2>Lời n&oacute;i đầu.</h2>\r\n\r\n<p>Sau nhiều năm code PHP, nh&igrave;n thấy lập tr&igrave;nh vi&ecirc;n lặp đi lặp lại c&aacute;c lỗi cơ bản, n&ecirc;n tui viết định viết b&agrave;i n&agrave;y để nhằm gi&uacute;p cho ch&uacute;ng ta code PHP trở n&ecirc;n sạch đẹp hơn.</p>\r\n\r\n<p>B&agrave;i viết n&agrave;y sẽ kh&ocirc;ng n&oacute;i về c&aacute;c lỗi như l&agrave; về sử dụng memory kh&ocirc;ng hiệu quả, c&aacute;ch tối ưu CPU, c&aacute;ch để truy vấn cơ sở dữ liệu tốt nhất v.v...</p>\r\n\r\n<p>B&agrave;i viết n&agrave;y b&agrave;n ch&iacute;nh về lỗi tổ chức v&agrave; c&aacute;c viết code ở kh&iacute;a cạnh syntax, sao cho dễ nh&igrave;n, dễ đọc, sao cho dễ hiểu, sao cho đẹp v&agrave; sao cho sạch.</p>\r\n\r\n<p>M&igrave;nh t&ocirc;n vinh code sạch đẹp, bởi v&igrave; n&oacute; gi&uacute;p kiểm so&aacute;t v&agrave; giảm chi ph&iacute; ph&aacute;t triển ứng dụng, dễ d&agrave;ng bảo tr&igrave; v&agrave; ph&aacute;t triển trong tương lai.</p>\r\n\r\n<p>L&agrave; lập tr&igrave;nh vi&ecirc;n c&oacute; khi n&agrave;o bạn tự hỏi tại sao ứng dụng của bạn lại đầy bug kh&ocirc;ng, theo bản th&acirc;n t&aacute;c giả th&igrave; n&oacute; c&oacute; hai nguy&ecirc;n nh&acirc;n lớn:</p>\r\n\r\n<ol>\r\n	<li>L&agrave; ứng dụng thiết kế sai từ việc lựa chọn ng&ocirc;n ngữ, c&ocirc;ng nghệ, nền tảng framework kh&ocirc;ng ph&ugrave; hợp với con người v&agrave; nh&acirc;n lực của c&ocirc;ng ty, kh&ocirc;ng c&oacute; chiến lược đ&agrave;o tạo, dẫn đến một sản phẩm tam sao thất bản, r&acirc;u &ocirc;ng n&agrave;y cắm cằm b&agrave; nọ, nửa nạc nữa mở v&agrave; v&ocirc; c&ugrave;ng lộn xộn. (<strong>Chiếm 80%</strong>)</li>\r\n	<li>Lập tr&igrave;nh vi&ecirc;n code kh&ocirc;ng sạch đẹp, kh&ocirc;ng mạnh dạn thay đổi, cứ thế l&agrave;m theo lối m&ograve;n, ngại thay đổi, sửa chữa, cứ nghĩ l&agrave; n&oacute; l&agrave; một c&aacute;i g&igrave; đ&oacute; thần th&aacute;nh cao si&ecirc;u. (<strong>Chiếm 20%</strong>)</li>\r\n</ol>\r\n\r\n<p>C&aacute;i &yacute; đầu ti&ecirc;n rất kh&oacute; thay đổi, v&igrave; n&oacute; kh&ocirc;ng phụ thuộc v&agrave;o khả năng hay l&agrave; nổ lực của bạn m&agrave; được, c&aacute;i đ&oacute; thuộc về một phạm tr&ugrave; g&igrave; đ&oacute; ngo&agrave;i phạm vi đang b&agrave;n của v&agrave;i viết n&agrave;y, nhưng &yacute; thứ hai lại dễ d&agrave;ng thực hiện v&agrave; đạt được hơn rất nhiều. Bạn chỉ cần phải đọc hết b&agrave;i b&ecirc;n dưới c&oacute; thể &aacute;p dụng được ngay.</p>\r\n\r\n<p>Nhưng trước trước bạn cần phải c&oacute; khẩu quyết.</p>\r\n\r\n<h2>Khẩu quyết</h2>\r\n\r\n<p>Để code được v&agrave; thừa hưởng di sản của người kh&aacute;c bạn cần c&oacute; hai điều t&acirc;m niệm:</p>\r\n\r\n<ol>\r\n	<li>Ch&iacute;nh lỗi của người kh&aacute;c l&agrave; việc l&agrave;m v&agrave; cơ hội của bạn, nếu mọi thứ tốt hết rồi, th&igrave; c&ocirc;ng ty thu&ecirc; mướn bạn l&agrave;m g&igrave; nữa. Bạn nhận lương l&agrave; nhờ một phần trong c&aacute;i mớ code rối rắm v&agrave; kh&oacute; hiểu m&agrave; bạn đang nhận. Do vậy h&atilde;y cố code tốt v&agrave; l&agrave;m cho n&oacute; tốt hơn.</li>\r\n	<li>Bạn được quyền chửi thằng code trước v&igrave; cuộc đời cho ph&eacute;p, v&igrave; n&oacute; sẽ kh&ocirc;ng nghe bạn chửi, v&agrave; v&igrave; n&oacute; gi&uacute;p bạn giảm stress. Cố gắng chửi hay v&igrave; đ&oacute; c&oacute; thể l&agrave;m n&ecirc;n phong c&aacute;ch của bạn.</li>\r\n</ol>\r\n\r\n<blockquote>C&oacute; một số người cho rằng, code đẹp l&agrave; kh&ocirc;ng cần thiết bởi v&igrave; như vậy rất tốt thời gian, c&aacute;c y&ecirc;u cầu business l&agrave; quan trọng hơn l&agrave; ngồi đ&oacute; code cho đẹp. Đ&oacute; l&agrave; suy nghĩ sai ở 2 điểm:</blockquote>\r\n\r\n<ol>\r\n	<li>Khi bạn c&oacute; đủ skills để code đẹp th&igrave; code của bạn sẽ nhanh v&agrave; &iacute;t bug hơn. Cho n&ecirc;n n&oacute;i việc code sạch tốn thời gian l&agrave; kh&ocirc;ng đ&uacute;ng.</li>\r\n	<li>Code sạch c&ograve;n nhằm gi&uacute;p cho tầm nh&igrave;n xa trở n&ecirc;n quan trọng, c&aacute;c buniness về tương lai dễ mở rộng v&agrave; thay đổi hơn.</li>\r\n</ol>\r\n\r\n<h2>Lỗi cơ bản về empty vs isset</h2>\r\n\r\n<p><strong>Mức độ phổ biến</strong>:&nbsp;Rất phổ biến</p>\r\n\r\n<p><strong>Mức độ nghi&ecirc;m trọng</strong>: Kh&ocirc;ng qu&aacute; nghi&ecirc;m trọng, nhưng m&agrave; n&oacute; l&agrave;m nhức đầu hại n&atilde;o nhưng thằng dev kh&aacute;c sau n&agrave;y khi đọc code của bạn.</p>\r\n\r\n<p>Lỗi v&egrave; sử dụng c&aacute;c h&agrave;m&nbsp;isset&nbsp;cho c&aacute;c đối tượng được lồng v&ocirc; nhau, lỗi n&agrave;y phổ biến đến mất m&igrave;nh thấy n&oacute; c&oacute; mặt khắp mọi nơi ở hầu hết c&aacute;c c&ocirc;ng ty m&agrave; m&igrave;nh từng l&agrave;m việc.</p>\r\n\r\n<p>Vấn đề n&agrave;y kh&ocirc;ng phải l&agrave; sai, nhưng n&oacute; l&agrave;m cho code trể n&ecirc;n rối rắm, d&agrave;i d&ograve;ng kh&ocirc;ng cần thiết.</p>\r\n\r\n<pre>\r\n################### KH&Ocirc;NG N&Ecirc;N ###################\r\nif (isset($product[&#39;shop&#39;] &amp;&amp; isset($product[&#39;shop&#39;][&#39;id&#39;]) {\r\n  doSomeThing($product[&#39;shop&#39;]);\r\n}\r\n</pre>\r\n\r\n<h3>So s&aacute;nh với:</h3>\r\n\r\n<pre>\r\n################### N&Ecirc;N ###################\r\nif (!empty($product[&#39;shop&#39;][&#39;id&#39;]) {\r\n  doSomeThing($product[&#39;shop&#39;]);\r\n}\r\n</pre>\r\n\r\n<h3>Lời b&agrave;n:</h3>\r\n\r\n<p>Tại sao lập tr&igrave;nh vi&ecirc;n lại gặp lỗi n&agrave;y:</p>\r\n\r\n<ol>\r\n	<li>L&agrave; do&nbsp;<strong>copy&nbsp;&amp;&nbsp;paste</strong>, tại thấy thằng kh&aacute;c trước n&oacute; code vậy, n&ecirc;n m&igrave;nh copy v&agrave; paste vậy lu&ocirc;n.</li>\r\n	<li>Chưa bao giờ bạn thử h&agrave;m&nbsp;<strong>empty</strong>&nbsp;n&oacute; hoạt động thế n&agrave;o, v&agrave; rất ngại khi sửa lại c&aacute;i h&agrave;m đ&oacute;, bởi v&igrave; mấy thằng lead n&oacute; n&oacute;i, khi code hoạt động ổn định th&igrave; đừng c&oacute; sửa, ai sẽ review.</li>\r\n</ol>', '/images/PHP-code-58d2d5803df78c51623a6ce2.jpg', '30', '2019-10-21'),
(4, 'An toàn bảo mật thông tin', 'Thông tin, dữ liệu được ví như tài sản trong nhà của bạn vậy. Nếu bạn để quên hoặc làm mất ở đâu đó thì rất có thể thông tin của bạn sẽ bị mất, hoặc bị chiếm đoạt. Còn đối với chuyên ngành CNTT thì bảo mật thông tin được ví như hệ thống máy tính, dữ liệu…', '<p><strong><em>Bảo mật th&ocirc;ng tin&nbsp;</em>l&agrave; bảo vệ th&ocirc;ng tin dữ liệu c&aacute; nh&acirc;n, tổ chức nhằm tr&aacute;nh khỏi sự &rdquo; đ&aacute;nh cắp, ăn cắp&rdquo; bởi những kẻ xấu hoặc tin tặc. An ninh th&ocirc;ng tin cũng như sự bảo mật an to&agrave;n th&ocirc;ng tin n&oacute;i chung. Việc bảo mật tốt những dữ liệu v&agrave; th&ocirc;ng tin sẽ tr&aacute;nh những rủi ro kh&ocirc;ng đ&aacute;ng c&oacute; cho ch&iacute;nh c&aacute; nh&acirc;n v&agrave; doanh nghiệp của bạn.</strong></p>\r\n\r\n<p><a href=\"https://securitybox.vn/928/khai-niem-bao-mat-thong-tin-hoc-bao-mat-cung-securitybox/khai-niem-bao-mat-thong-tin-an-ninh-thong-tin/\" rel=\"attachment wp-att-929\"><img alt=\"bao ma thong tin\" src=\"https://securitybox.vn/wp-content/uploads/2017/04/khai-niem-bao-mat-thong-tin-an-ninh-thong-tin-300x200.png\" style=\"height:200px; width:300px\" /></a></p>\r\n\r\n<p>cần bảo mật th&ocirc;ng tin to&agrave;n diện</p>\r\n\r\n<p><strong>Kh&aacute;i niệm bảo mật th&ocirc;ng tin &ndash; Học bảo mật c&ugrave;ng SecurityBox</strong><br />\r\nBảo mật th&ocirc;ng tin l&agrave; duy tr&igrave; t&iacute;nh bảo mật, t&iacute;nh to&agrave;n vẹn to&agrave;n diện v&agrave; t&iacute;nh sẵn s&agrave;ng cho to&agrave;n bộ th&ocirc;ng tin. Ba yếu tố kh&ocirc;ng thể t&aacute;ch rời trong việc bảo mật từ A đến Z th&ocirc;ng tin l&agrave;:<br />\r\n&ndash; T&iacute;nh bảo mật: Đảm bảo th&ocirc;ng tin đ&oacute; l&agrave; duy nhất, những người muốn tiếp cận phải được ph&acirc;n quyền truy cập<br />\r\n&ndash; T&iacute;nh to&agrave;n vẹn. Bảo vệ sự ho&agrave;n chỉnh to&agrave;n diện cho hệ thống th&ocirc;ng tin<br />\r\n&ndash; T&iacute;nh ch&iacute;nh x&aacute;c. Th&ocirc;ng tin đưa ra phải ch&iacute;nh x&aacute;c, đầy đủ, kh&ocirc;ng được sai lệch hay kh&ocirc;ng được vi phạm bản quyền nội dung<br />\r\n&ndash; T&iacute;nh sẵn s&agrave;ng. Việc&nbsp;<em><strong>bảo mật th&ocirc;ng tin</strong></em>&nbsp;lu&ocirc;n phải sẵn s&agrave;ng, c&oacute; thể thực hiện bất cứ đ&acirc;u, bất cứ khi n&agrave;o.</p>\r\n\r\n<p><strong>Tại sao cần phải bảo mật an to&agrave;n th&ocirc;ng tin ?</strong><br />\r\nTh&ocirc;ng tin, dữ liệu được v&iacute; như t&agrave;i sản trong nh&agrave; của bạn vậy. Nếu bạn để qu&ecirc;n hoặc l&agrave;m mất ở đ&acirc;u đ&oacute; th&igrave; rất c&oacute; thể th&ocirc;ng tin của bạn sẽ bị mất, hoặc bị chiếm đoạt. C&ograve;n đối với chuy&ecirc;n ng&agrave;nh CNTT th&igrave; bảo mật th&ocirc;ng tin được v&iacute; như hệ thống m&aacute;y t&iacute;nh, dữ liệu&hellip; Đ&oacute; l&agrave; những t&agrave;i sản v&ocirc; c&ugrave;ng quan trọng , gi&aacute; trị.<br />\r\n&ndash; Hiện nay t&igrave;nh h&igrave;nh hacker ng&agrave;y c&agrave;ng nguy hiểm, kh&oacute; lường. Việc đảm bảo t&iacute;nh năng bảo mật th&ocirc;ng tin l&agrave; v&ocirc; c&ugrave;ng quan trọng v&igrave; th&ocirc;ng tin đ&oacute; c&oacute; thể li&ecirc;n quan tới bạn, tới c&ocirc;ng ty v&agrave; doanh nghiệp của bạn. Nếu bạn để lộ ra ngo&agrave;i hoặc k&eacute;m bảo mật th&igrave; chuyện tin tặc nh&ograve;m ng&oacute; l&agrave; khả năng rất cao.</p>', '/images/proteção-empresa.jpg', '30', '2019-10-21'),
(5, 'Thầy Kiều Tuấn Dũng', 'HUHUUUU', '<p>Viet g&igrave; nhỉ. th&ocirc;i kh&ocirc;ng viết nữa</p>', '/images/ths1.jpg', '2', '2019-10-10'),
(6, 'Thầy Giáo Ba', 'hihihihihi', '<p>nooooooooooooooooooooo</p>', '/images/cho-nha-5.jpg', '2', '2019-10-10'),
(7, 'Thầy giáo bốn', 'ehehhehe', '<p>kkkkkk</p>', '/images/cho-nha-5.jpg', '2', '2019-10-10'),
(8, 'Tổng kết khoa CNTT', 'Lễ tổng kết khoa công nghệ thông tin', NULL, '/images/DaiDien.jpg', '32', '2019-10-20'),
(9, 'Sinh viên thành tích tốt', 'Trao giải thành tích tốt cho sinh viên', NULL, '/images/traogiai.jpg', '32', '2019-10-20'),
(10, 'Tổng kết sinh viên', 'Lễ tổng kết sinh viên toàn trường', NULL, '/images/TKSV.jpg', '32', '2019-10-20'),
(11, 'Tuyển sinh 2019', 'Đại học Thủy Lợi tổ chức tuyển sinh 2019 . Nhiều thí sinh  hào hứng đã đến nộp đơn ứng tuyển. Nhiều thí sinh cho biết đây sẽ là một môi trường tốt để họ có thể phát triển', NULL, '/images/xacnhannhthumb.jpg', '31', '2019-10-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `images` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preLevel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentId` int(100) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `images`, `preLevel`, `parentId`, `createdDate`) VALUES
(1, 'Đào tạo', 'hihi', '', NULL, NULL, '2019-10-06'),
(2, 'Đào tạo sau đại học', 'mô tả category Đào tạo sau đại học', '/images/ThacSi.jpg', 'Đào tạo', 1, '2019-10-07'),
(3, 'Nghiên cứu khoa học', 'mô tả categori ngiên cứu khoa học', '', NULL, NULL, '2019-10-08'),
(4, 'Bộ môn -  trung tâm', 'mô tả category Bộ môn -  trung tâm', '', NULL, NULL, '2019-10-08'),
(5, 'Sinh viên', 'mô tả category Sinh viên', '', NULL, NULL, '2019-10-08'),
(6, 'Tin tức', 'mô tả category tin tức', '', NULL, NULL, '2019-10-08'),
(7, 'các đề tài, dự án', 'mô tả category các đề tài, dự án', '', 'Nghiên cứu khoa học', 3, '2019-10-08'),
(8, 'Thông tin seminar', 'mô tả category Thông tin seminar', '', 'Nghiên cứu khoa học', 3, '2019-10-08'),
(9, 'Công trình công bố', NULL, '', 'Nghiên cứu khoa học', 3, '2019-10-08'),
(10, 'Các phòng thí nghiệm', NULL, '', 'Nghiên cứu khoa học', 3, '2019-10-08'),
(11, 'Đào tạo đại học', NULL, '/images/VietNhat.jpg', 'Đào tạo', 1, '2019-10-08'),
(12, 'Chuẩn đầu ra', NULL, '', 'Đào tạo', 1, '2019-10-08'),
(13, 'Định hướng ngành nghề', NULL, '', 'Đào tạo', 1, '2019-10-08'),
(14, 'Mô hình đào tạo', NULL, '', 'Đào tạo', 1, '2019-10-08'),
(15, 'Đề cương môn học', NULL, '', 'Đào tạo', 1, '2019-10-08'),
(16, 'Công nghệ phần mềm', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(17, 'Hệ thống thông tin', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(18, 'Khoa học máy tính', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(19, 'Kỹ thuật máy tính và  mạng', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(20, 'Toán học', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(21, 'Tin học và kỹ thuật tính toán', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(22, 'Trung tâm tin học', NULL, '', 'Bộ môn -  trung tâm', 4, '2019-10-08'),
(23, 'Tài liệu sinh viên', NULL, '', 'Sinh viên', 5, '2019-10-08'),
(24, 'Tổ tư vấn học tập', NULL, '', 'Sinh viên', 5, '2019-10-08'),
(25, 'Biểu mẫu DATN', NULL, '', 'Sinh viên', 5, '2019-10-08'),
(26, 'Luận văn tốt nghiệp', NULL, '', 'Sinh viên', 5, '2019-10-08'),
(27, 'Sự kiện', NULL, '', 'Tin tức', 6, '2019-10-08'),
(28, 'Thông báo', NULL, '', 'Tin tức', 6, '2019-10-08'),
(29, 'CSE trên báo', NULL, '', 'Tin tức', 6, '2019-10-08'),
(30, 'Blog', 'blog về tin tức', '', 'Tin tức', 6, '2019-10-09'),
(31, 'Tuyển dụng', NULL, '', 'Tin tức', 6, '2019-10-09'),
(32, 'Banner', 'phân loại banner', '', 'Banner', 32, '2019-10-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_profiles`
--

DROP TABLE IF EXISTS `class_profiles`;
CREATE TABLE IF NOT EXISTS `class_profiles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_sm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_lg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `outline` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_profiles_created_by_index` (`created_by`),
  KEY `class_profiles_updated_by_index` (`updated_by`),
  KEY `class_profiles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `class_profiles`
--

INSERT INTO `class_profiles` (`id`, `name`, `slug`, `image_sm`, `image_lg`, `teacher`, `room_no`, `capacity`, `shift`, `short_description`, `description`, `outline`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Class Three', 'class-three', '1-sm.jpg', '1-lg.jpg', 'MC Smith', 'R301-R302', 60, 'Morning', 'Lorem ipsum text', NULL, NULL, '2019-10-01 16:50:02', '2019-10-01 16:50:02', NULL, 0, 0, NULL),
(2, 'Class Four', 'class-four', '2-sm.jpg', '2-lg.jpg', 'Jhon Doe', 'R401-R402', 70, 'Morning', 'Lorem ipsum text', NULL, NULL, '2019-10-01 16:50:02', '2019-10-01 16:50:02', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `id_card` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `duty_start` time DEFAULT NULL,
  `duty_end` time DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_id_card_unique` (`id_card`),
  KEY `employees_user_id_foreign` (`user_id`),
  KEY `employees_role_id_foreign` (`role_id`),
  KEY `employees_created_by_index` (`created_by`),
  KEY `employees_updated_by_index` (`updated_by`),
  KEY `employees_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `role_id`, `id_card`, `name`, `designation`, `qualification`, `dob`, `gender`, `religion`, `email`, `phone_no`, `address`, `joining_date`, `photo`, `signature`, `shift`, `duty_start`, `duty_end`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 5, 2, '0000000097', 'Savanah Altenwerth', 'Data Processing Equipment Repairer', 'asperiores', '08/05/2001', '1', '2', 'dejon36@example.com', '+9566500104455', '92416 Clifton Manors\nPort Gageville, OR 48490', '13/01/2017', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:50', NULL, 1, 0, NULL),
(2, 6, 2, '0000000012', 'Grant Okuneva', 'Costume Attendant', 'autem', '10/08/2001', '1', '2', 'marks.eulah@example.net', '+9528672867446', '2569 Coleman Fork\nO\'Kontown, KY 28538-2924', '04/06/2019', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:50', NULL, 1, 0, NULL),
(3, 7, 2, '0000000003', 'Olin DuBuque', 'Homeland Security', 'dolorum', '23/10/2012', '1', '4', 'berge.lilla@example.com', '+3646461223900', '315 Bergnaum Freeway Apt. 112\nSipesburgh, VT 26299-3719', '20/11/2015', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:50', NULL, 1, 0, NULL),
(4, 8, 2, '0000000032', 'Santa Denesik', 'Machinist', 'animi', '07/11/2006', '2', '2', 'anita.will@example.com', '+8891993311436', '76024 Antwan Trail Apt. 548\nLake Shana, WV 22358', '02/12/2016', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:50', NULL, 1, 0, NULL),
(5, 9, 2, '0000000070', 'Jesus Schiller PhD', 'Fishing OR Forestry Supervisor', 'possimus', '04/08/2014', '2', '1', 'briana.leffler@example.org', '+9519255745410', '45441 Bergstrom Plain Apt. 077\nEast Sedrick, MD 08474-9285', '11/07/2018', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:50', NULL, 1, 0, NULL),
(6, 10, 5, '0000000040', 'Brandi Klocko', 'Personal Care Worker', 'qui', '17/01/2001', '2', '1', 'qprosacco@example.net', '+3919120088467', '32667 Dicki Trace Suite 540\nSouth Maynard, CO 20551-4722', '01/07/2016', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:51', NULL, 1, 0, NULL),
(7, 11, 6, '0000000063', 'Heath Raynor', 'Computer', 'voluptates', '11/10/2018', '2', '1', 'gutmann.bethel@example.com', '+2024753811099', '3267 Tess Tunnel Suite 605\nBlaiseshire, MI 15258-5542', '09/01/2017', NULL, NULL, '2', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:51', NULL, 1, 0, NULL),
(8, 12, 7, '0000000026', 'Mr. Ryleigh Corwin', 'Central Office', 'voluptas', '09/07/2010', '1', '4', 'vonrueden.leola@example.net', '+1379127748447', '124 Sandra Creek Suite 036\nTillmanhaven, UT 00869', '07/01/2018', NULL, NULL, '1', '09:00:00', '17:00:00', '1', '2019-10-01 09:50:50', '2019-10-01 09:50:51', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee_attendances`
--

DROP TABLE IF EXISTS `employee_attendances`;
CREATE TABLE IF NOT EXISTS `employee_attendances` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `working_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_attendances_employee_id_foreign` (`employee_id`),
  KEY `employee_attendances_created_by_index` (`created_by`),
  KEY `employee_attendances_updated_by_index` (`updated_by`),
  KEY `employee_attendances_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `attendance_date`, `in_time`, `out_time`, `working_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2019-09-16', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(2, 2, '2019-09-16', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(3, 3, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(4, 4, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(5, 5, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(6, 6, '2019-09-16', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(7, 7, '2019-09-16', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(8, 8, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(9, 1, '2019-09-17', '2019-09-17 08:00:00', '2019-09-17 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(10, 2, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(11, 3, '2019-09-17', '2019-09-17 08:00:00', '2019-09-17 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(12, 4, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(13, 5, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(14, 6, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(15, 7, '2019-09-17', '2019-09-17 08:00:00', '2019-09-17 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(16, 8, '2019-09-17', '2019-09-17 08:00:00', '2019-09-17 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(17, 1, '2019-09-18', '2019-09-18 08:00:00', '2019-09-18 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(18, 2, '2019-09-18', '2019-09-18 08:00:00', '2019-09-18 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(19, 3, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(20, 4, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(21, 5, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(22, 6, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(23, 7, '2019-09-18', '2019-09-18 08:00:00', '2019-09-18 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(24, 8, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(25, 1, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(26, 2, '2019-09-19', '2019-09-19 08:00:00', '2019-09-19 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(27, 3, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(28, 4, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(29, 5, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(30, 6, '2019-09-19', '2019-09-19 08:00:00', '2019-09-19 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(31, 7, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(32, 8, '2019-09-19', '2019-09-19 08:00:00', '2019-09-19 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(33, 1, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(34, 2, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(35, 3, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(36, 4, '2019-09-21', '2019-09-21 08:00:00', '2019-09-21 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(37, 5, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(38, 6, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(39, 7, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(40, 8, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(41, 1, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(42, 2, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(43, 3, '2019-09-22', '2019-09-22 00:00:00', '2019-09-22 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(44, 4, '2019-09-22', '2019-09-22 00:00:00', '2019-09-22 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(45, 5, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(46, 6, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(47, 7, '2019-09-22', '2019-09-22 00:00:00', '2019-09-22 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(48, 8, '2019-09-22', '2019-09-22 00:00:00', '2019-09-22 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(49, 1, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(50, 2, '2019-09-23', '2019-09-23 00:00:00', '2019-09-23 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(51, 3, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(52, 4, '2019-09-23', '2019-09-23 00:00:00', '2019-09-23 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(53, 5, '2019-09-23', '2019-09-23 00:00:00', '2019-09-23 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(54, 6, '2019-09-23', '2019-09-23 00:00:00', '2019-09-23 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(55, 7, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(56, 8, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(57, 1, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(58, 2, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(59, 3, '2019-09-24', '2019-09-24 00:00:00', '2019-09-24 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(60, 4, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(61, 5, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(62, 6, '2019-09-24', '2019-09-24 00:00:00', '2019-09-24 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(63, 7, '2019-09-24', '2019-09-24 00:00:00', '2019-09-24 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(64, 8, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(65, 1, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(66, 2, '2019-09-25', '2019-09-25 08:00:00', '2019-09-25 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(67, 3, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(68, 4, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(69, 5, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(70, 6, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(71, 7, '2019-09-25', '2019-09-25 08:00:00', '2019-09-25 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(72, 8, '2019-09-25', '2019-09-25 08:00:00', '2019-09-25 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(73, 1, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(74, 2, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(75, 3, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(76, 4, '2019-09-26', '2019-09-26 00:00:00', '2019-09-26 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(77, 5, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(78, 6, '2019-09-26', '2019-09-26 00:00:00', '2019-09-26 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(79, 7, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(80, 8, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(81, 1, '2019-09-28', '2019-09-28 00:00:00', '2019-09-28 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(82, 2, '2019-09-28', '2019-09-28 00:00:00', '2019-09-28 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(83, 3, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(84, 4, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(85, 5, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(86, 6, '2019-09-28', '2019-09-28 00:00:00', '2019-09-28 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(87, 7, '2019-09-28', '2019-09-28 00:00:00', '2019-09-28 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(88, 8, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(89, 1, '2019-09-29', '2019-09-29 00:00:00', '2019-09-29 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(90, 2, '2019-09-29', '2019-09-29 00:00:00', '2019-09-29 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(91, 3, '2019-09-29', '2019-09-29 00:00:00', '2019-09-29 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(92, 4, '2019-09-29', '2019-09-29 00:00:00', '2019-09-29 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(93, 5, '2019-09-29', '2019-09-29 00:00:00', '2019-09-29 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(94, 6, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(95, 7, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(96, 8, '2019-09-29', '2019-09-29 00:00:00', '2019-09-29 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(97, 1, '2019-09-30', '2019-09-30 08:00:00', '2019-09-30 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(98, 2, '2019-09-30', '2019-09-30 08:00:00', '2019-09-30 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(99, 3, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(100, 4, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(101, 5, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(102, 6, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(103, 7, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(104, 8, '2019-09-30', '2019-09-30 08:00:00', '2019-09-30 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(105, 1, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(106, 2, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(107, 3, '2019-10-01', '2019-10-01 08:00:00', '2019-10-01 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(108, 4, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(109, 5, '2019-10-01', '2019-10-01 08:00:00', '2019-10-01 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(110, 6, '2019-10-01', '2019-10-01 08:00:00', '2019-10-01 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(111, 7, '2019-10-01', '2019-10-01 08:00:00', '2019-10-01 13:00:00', '05:00:00', '', '1', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL),
(112, 8, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 09:50:52', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_time` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_created_by_index` (`created_by`),
  KEY `events_updated_by_index` (`updated_by`),
  KEY `events_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `event_time`, `title`, `cover_photo`, `location`, `description`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2018-11-04 13:36:00', 'Ngày phụ nữ Việt Nam 20-10', '/images/phu-nu-viet-nam-20-10-hay-va-y-nghia-nhat.jpg', 'annual,function', 'Trường đại học Thủy Lợi Chào đón ngày 20-10', '2019-10-01 16:50:02', '2019-10-20 17:19:53', NULL, 0, 1, NULL),
(2, '2018-12-20 15:00:00', 'Tổng kết sinh viên 2019', '/images/TKSV.jpg', 'farewell,party', '<p><b>Details:</b><br></p><ul><li><p>What restrooms are available prior to gates opening?</p><div>Angel Stadium restrooms are available prior to the gates opening; they are located in the parking lot near the Orangewood entrance.</div></li><li><div>Can I bring food or drinks into the stadium?</div><div>You can bring one unopened bottle of water per person into the stadium. No other food or drinks are permitted.</div></li><li><div>Will food be available for sale inside the stadium?</div><div>Yes. Concession stands will be open until Greg Laurie speaks. Alcohol will not be available.</div></li><li><div>Can I reserve or save seats?</div><div>No. Seating is first-come, first-served.</div></li></ul><br><p></p>', '2019-10-01 16:50:02', '2019-10-20 16:54:34', NULL, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `i_classes`
--

DROP TABLE IF EXISTS `i_classes`;
CREATE TABLE IF NOT EXISTS `i_classes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `idSubject` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i_classes_created_by_index` (`created_by`),
  KEY `i_classes_updated_by_index` (`updated_by`),
  KEY `i_classes_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `i_classes`
--

INSERT INTO `i_classes` (`id`, `name`, `numeric_value`, `order`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `idSubject`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'One', 1, 1, 'demo test', '1', '2019-10-01 16:50:50', '2019-10-14 13:37:09', NULL, 0, 1, 1, NULL),
(2, 'Two', 2, 2, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(3, 'Three', 3, 3, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(4, 'Four', 4, 4, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(5, 'Five', 5, 5, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(6, 'Six', 6, 6, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(7, 'Seven', 7, 7, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(8, 'Eight', 8, 8, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(9, 'Nine Science', 90, 9, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL),
(10, 'Nine Humanities', 91, 10, 'demo test', '1', '2019-10-01 16:50:50', NULL, NULL, 0, 1, NULL, NULL);

--
-- Bẫy `i_classes`
--
DROP TRIGGER IF EXISTS `i_class__ai`;
DELIMITER $$
CREATE TRIGGER `i_class__ai` AFTER INSERT ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'insert', NULL, d.* 
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `i_class__au`;
DELIMITER $$
CREATE TRIGGER `i_class__au` AFTER UPDATE ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'update', NULL, d.*
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_04_000000_create_roles_table', 1),
(2, '2018_03_05_000000_create_users_table', 1),
(3, '2018_03_05_000001_create_user_roles_table', 1),
(4, '2018_03_05_000002_create_permissions_table', 1),
(5, '2018_03_05_000003_create_users_permissions_table', 1),
(6, '2018_03_05_000004_create_roles_permissions_table', 1),
(7, '2018_03_05_000005_create_password_resets_table', 1),
(8, '2018_06_09_065945_create_sliders_table', 1),
(9, '2018_07_06_103920_create_about_content_tables', 1),
(10, '2018_07_08_110923_create_site_metas_table', 1),
(11, '2018_07_11_035714_create_testimonials_table', 1),
(12, '2018_07_14_115139_create_class_profiles_table', 1),
(13, '2018_07_14_155755_create_teacher_profiles_table', 1),
(14, '2018_07_14_180514_create_events_table', 1),
(15, '2018_08_11_092832_create_app_metas_table', 1),
(16, '2018_08_11_121754_create_academic_years_table', 1),
(17, '2018_08_14_052209_create_employees_table', 1),
(18, '2018_08_14_055151_create_i_classes_table', 1),
(19, '2018_08_14_064130_create_sections_table', 1),
(20, '2018_08_14_064556_create_students_table', 1),
(21, '2018_08_15_105155_create_registrations_table', 1),
(22, '2018_11_20_013140_create_notifications_table', 1),
(23, '2019_01_12_151224_create_subjects_table', 1),
(24, '2019_01_13_155559_create_student_attendances_table', 1),
(25, '2019_01_15_130708_create_templates_table', 1),
(26, '2019_01_18_160249_create_jobs_table', 1),
(27, '2019_01_18_160310_create_failed_jobs_table', 1),
(28, '2019_01_18_160745_create_sms_logs_table', 1),
(29, '2019_01_19_092522_create_attendance_file_queues_table', 1),
(30, '2019_02_12_105853_create_leaves_table', 1),
(31, '2019_02_12_163012_create_work_outsides_table', 1),
(32, '2019_02_15_111855_create_employee_attendances_table', 1),
(33, '2019_02_23_194914_create_exams_table', 1),
(34, '2019_02_23_195038_create_grades_table', 1),
(35, '2019_02_23_195053_create_exam_rules_table', 1),
(36, '2019_02_23_203247_create_marks_table', 1),
(37, '2019_02_23_203658_create_results_table', 1),
(38, '2019_03_14_173640_create_academic_calendars_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `group`, `created_at`) VALUES
(1, 'change_password', 'Change Password', 'Common', '2019-10-01 17:48:26'),
(2, 'user.dashboard', 'Dashboard', 'Common', '2019-10-01 17:48:26'),
(3, 'lockscreen', 'Lock Screen', 'Common', '2019-10-01 17:48:26'),
(4, 'logout', 'Logout', 'Common', '2019-10-01 17:48:26'),
(5, 'profile', 'Profile', 'Common', '2019-10-01 17:48:26'),
(6, 'user.notification_unread', 'Notification View', 'Common', '2019-10-01 17:48:26'),
(7, 'user.notification_read', 'Notification View', 'Common', '2019-10-01 17:48:26'),
(8, 'user.notification_all', 'Notification View', 'Common', '2019-10-01 17:48:26'),
(9, 'user.store', 'User Create', 'Administration', '2019-10-01 17:48:26'),
(10, 'user.index', 'User View', 'Administration', '2019-10-01 17:48:26'),
(11, 'user.create', 'User Create', 'Administration', '2019-10-01 17:48:26'),
(12, 'user.status', 'User Edit', 'Administration', '2019-10-01 17:48:26'),
(13, 'user.show', 'User View', 'Administration', '2019-10-01 17:48:26'),
(14, 'user.update', 'User Edit', 'Administration', '2019-10-01 17:48:26'),
(15, 'user.destroy', 'User Delete', 'Administration', '2019-10-01 17:48:26'),
(16, 'user.edit', 'User Edit', 'Administration', '2019-10-01 17:48:26'),
(17, 'user.permission', 'User Edit', 'Administration', '2019-10-01 17:48:26'),
(18, 'administrator.academic_year_destroy', 'Academic Year Delete', 'Admin Only', '2019-10-01 17:48:26'),
(19, 'administrator.academic_year', 'Academic Year View', 'Admin Only', '2019-10-01 17:48:26'),
(20, 'administrator.academic_year_store', 'Academic Year Create', 'Admin Only', '2019-10-01 17:48:26'),
(21, 'administrator.academic_year_create', 'Academic Year Create', 'Admin Only', '2019-10-01 17:48:26'),
(22, 'administrator.academic_year_edit', 'Academic Year Edit', 'Admin Only', '2019-10-01 17:48:26'),
(23, 'administrator.academic_year_status', 'Academic Year Edit', 'Admin Only', '2019-10-01 17:48:26'),
(24, 'administrator.academic_year_update', 'Academic Year Edit', 'Admin Only', '2019-10-01 17:48:26'),
(25, 'settings.institute', 'Institute Edit', 'Admin Only', '2019-10-01 17:48:26'),
(26, 'settings.report', 'Report Edit', 'Admin Only', '2019-10-01 17:48:26'),
(27, 'user.role_index', 'Role View', 'Admin Only', '2019-10-01 17:48:26'),
(28, 'user.role_destroy', 'Role Delete', 'Admin Only', '2019-10-01 17:48:26'),
(29, 'user.role_create', 'Role Create', 'Admin Only', '2019-10-01 17:48:26'),
(30, 'user.role_store', 'Role Create', 'Admin Only', '2019-10-01 17:48:26'),
(31, 'user.role_update', 'Role Edit', 'Admin Only', '2019-10-01 17:48:26'),
(32, 'administrator.user_index', 'System Admin View', 'Admin Only', '2019-10-01 17:48:26'),
(33, 'administrator.user_create', 'System Admin Create', 'Admin Only', '2019-10-01 17:48:26'),
(34, 'administrator.user_status', 'System Admin Edit', 'Admin Only', '2019-10-01 17:48:26'),
(35, 'administrator.user_store', 'System Admin Create', 'Admin Only', '2019-10-01 17:48:26'),
(36, 'administrator.user_update', 'System Admin Edit', 'Admin Only', '2019-10-01 17:48:26'),
(37, 'administrator.user_destroy', 'System Admin Delete', 'Admin Only', '2019-10-01 17:48:26'),
(38, 'administrator.user_edit', 'System Admin Edit', 'Admin Only', '2019-10-01 17:48:26'),
(39, 'administrator.user_password_reset', 'User Password Reset', 'Admin Only', '2019-10-01 17:48:26'),
(40, 'administrator.template.mailsms.index', 'Mail_and_SMS Template View', 'Admin Only', '2019-10-01 17:48:26'),
(41, 'administrator.template.mailsms.create', 'Mail_and_SMS Template Create', 'Admin Only', '2019-10-01 17:48:26'),
(42, 'administrator.template.mailsms.store', 'Mail_and_SMS Template Create', 'Admin Only', '2019-10-01 17:48:26'),
(43, 'administrator.template.mailsms.edit', 'Mail_and_SMS Template Edit', 'Admin Only', '2019-10-01 17:48:26'),
(44, 'administrator.template.mailsms.update', 'Mail_and_SMS Template Edit', 'Admin Only', '2019-10-01 17:48:26'),
(45, 'administrator.template.mailsms.destroy', 'Mail_and_SMS Template Delete', 'Admin Only', '2019-10-01 17:48:26'),
(46, 'administrator.template.idcard.index', 'Idcard Template View', 'Admin Only', '2019-10-01 17:48:26'),
(47, 'administrator.template.idcard.create', 'Idcard Template Create', 'Admin Only', '2019-10-01 17:48:26'),
(48, 'administrator.template.idcard.store', 'Idcard Template Create', 'Admin Only', '2019-10-01 17:48:26'),
(49, 'administrator.template.idcard.edit', 'Idcard Template Edit', 'Admin Only', '2019-10-01 17:48:26'),
(50, 'administrator.template.idcard.update', 'Idcard Template Edit', 'Admin Only', '2019-10-01 17:48:26'),
(51, 'administrator.template.idcard.destroy', 'Idcard Template Delete', 'Admin Only', '2019-10-01 17:48:26'),
(52, 'settings.sms_gateway.index', 'SMS Gateway View', 'Admin Only', '2019-10-01 17:48:26'),
(53, 'settings.sms_gateway.create', 'SMS Gateway Create', 'Admin Only', '2019-10-01 17:48:26'),
(54, 'settings.sms_gateway.store', 'SMS Gateway Create', 'Admin Only', '2019-10-01 17:48:26'),
(55, 'settings.sms_gateway.edit', 'SMS Gateway Edit', 'Admin Only', '2019-10-01 17:48:26'),
(56, 'settings.sms_gateway.update', 'SMS Gateway Edit', 'Admin Only', '2019-10-01 17:48:26'),
(57, 'settings.sms_gateway.destroy', 'SMS Gateway Delete', 'Admin Only', '2019-10-01 17:48:26'),
(58, 'settings.academic_calendar.index', 'Academic Calendar View', 'Admin Only', '2019-10-01 17:48:26'),
(59, 'settings.academic_calendar.create', 'Academic Calendar Create', 'Admin Only', '2019-10-01 17:48:26'),
(60, 'settings.academic_calendar.store', 'Academic Calendar Create', 'Admin Only', '2019-10-01 17:48:26'),
(61, 'settings.academic_calendar.edit', 'Academic Calendar Edit', 'Admin Only', '2019-10-01 17:48:26'),
(62, 'settings.academic_calendar.update', 'Academic Calendar Edit', 'Admin Only', '2019-10-01 17:48:26'),
(63, 'settings.academic_calendar.destroy', 'Academic Calendar Delete', 'Admin Only', '2019-10-01 17:48:26'),
(64, 'academic.class_destroy', 'Class Delete', 'Academic', '2019-10-01 17:48:26'),
(65, 'academic.class', 'Class View', 'Academic', '2019-10-01 17:48:26'),
(66, 'academic.class_store', 'Class Create', 'Academic', '2019-10-01 17:48:26'),
(67, 'academic.class_create', 'Class Create', 'Academic', '2019-10-01 17:48:26'),
(68, 'academic.class_edit', 'Class Edit', 'Academic', '2019-10-01 17:48:26'),
(69, 'academic.class_status', 'Class Edit', 'Academic', '2019-10-01 17:48:26'),
(70, 'academic.class_update', 'Class Edit', 'Academic', '2019-10-01 17:48:26'),
(71, 'academic.section_destroy', 'Section Delete', 'Academic', '2019-10-01 17:48:26'),
(72, 'academic.section', 'Section View', 'Academic', '2019-10-01 17:48:26'),
(73, 'academic.section_store', 'Section Create', 'Academic', '2019-10-01 17:48:26'),
(74, 'academic.section_create', 'Section Create', 'Academic', '2019-10-01 17:48:26'),
(75, 'academic.section_edit', 'Section Edit', 'Academic', '2019-10-01 17:48:26'),
(76, 'academic.section_status', 'Section Edit', 'Academic', '2019-10-01 17:48:26'),
(77, 'academic.section_update', 'Section Edit', 'Academic', '2019-10-01 17:48:26'),
(78, 'academic.subject_destroy', 'Subject Delete', 'Academic', '2019-10-01 17:48:26'),
(79, 'academic.subject', 'Subject View', 'Academic', '2019-10-01 17:48:26'),
(80, 'academic.subject_store', 'Subject Create', 'Academic', '2019-10-01 17:48:26'),
(81, 'academic.subject_create', 'Subject Create', 'Academic', '2019-10-01 17:48:26'),
(82, 'academic.subject_edit', 'Subject Edit', 'Academic', '2019-10-01 17:48:26'),
(83, 'academic.subject_status', 'Subject Edit', 'Academic', '2019-10-01 17:48:26'),
(84, 'academic.subject_update', 'Subject Edit', 'Academic', '2019-10-01 17:48:26'),
(85, 'student.store', 'Student Create', 'Academic', '2019-10-01 17:48:26'),
(86, 'student.index', 'Student View', 'Academic', '2019-10-01 17:48:26'),
(87, 'student.list_by_fitler', 'Student View', 'Academic', '2019-10-01 17:48:26'),
(88, 'student.create', 'Student Create', 'Academic', '2019-10-01 17:48:26'),
(89, 'student.status', 'Student Edit', 'Academic', '2019-10-01 17:48:26'),
(90, 'student.destroy', 'Student Delete', 'Academic', '2019-10-01 17:48:26'),
(91, 'student.update', 'Student Edit', 'Academic', '2019-10-01 17:48:26'),
(92, 'student.show', 'Student View', 'Academic', '2019-10-01 17:48:26'),
(93, 'student.edit', 'Student Edit', 'Academic', '2019-10-01 17:48:26'),
(94, 'teacher.index', 'Teacher View', 'Academic', '2019-10-01 17:48:26'),
(95, 'teacher.store', 'Teacher Create', 'Academic', '2019-10-01 17:48:26'),
(96, 'teacher.create', 'Teacher Create', 'Academic', '2019-10-01 17:48:26'),
(97, 'teacher.status', 'Teacher Edit', 'Academic', '2019-10-01 17:48:26'),
(98, 'teacher.destroy', 'Teacher Delete', 'Academic', '2019-10-01 17:48:26'),
(99, 'teacher.update', 'Teacher Edit', 'Academic', '2019-10-01 17:48:26'),
(100, 'teacher.show', 'Teacher View', 'Academic', '2019-10-01 17:48:26'),
(101, 'teacher.edit', 'Teacher Edit', 'Academic', '2019-10-01 17:48:26'),
(102, 'student_attendance.index', 'Student Attendance View', 'Academic', '2019-10-01 17:48:26'),
(103, 'student_attendance.store', 'Student Attendance Create', 'Academic', '2019-10-01 17:48:26'),
(104, 'student_attendance.create', 'Student Attendance Create', 'Academic', '2019-10-01 17:48:26'),
(105, 'student_attendance.status', 'Student Attendance Edit', 'Academic', '2019-10-01 17:48:26'),
(106, 'student_attendance.create_file', 'Student Attendance Create', 'Academic', '2019-10-01 17:48:26'),
(107, 'student_attendance.file_queue_status', 'Student Attendance Create', 'Academic', '2019-10-01 17:48:26'),
(108, 'class_profile.index', 'Class Profile View', 'Website', '2019-10-01 17:48:26'),
(109, 'class_profile.store', 'Class Profile Create', 'Website', '2019-10-01 17:48:26'),
(110, 'class_profile.create', 'Class Profile Create', 'Website', '2019-10-01 17:48:26'),
(111, 'class_profile.show', 'Class Profile View', 'Website', '2019-10-01 17:48:26'),
(112, 'class_profile.update', 'Class Profile Edit', 'Website', '2019-10-01 17:48:26'),
(113, 'class_profile.destroy', 'Class Profile Delete', 'Website', '2019-10-01 17:48:26'),
(114, 'class_profile.edit', 'Class Profile Edit', 'Website', '2019-10-01 17:48:26'),
(115, 'event.index', 'Event View', 'Website', '2019-10-01 17:48:26'),
(116, 'event.store', 'Event Create', 'Website', '2019-10-01 17:48:26'),
(117, 'event.create', 'Event Create', 'Website', '2019-10-01 17:48:26'),
(118, 'event.destroy', 'Event Delete', 'Website', '2019-10-01 17:48:26'),
(119, 'event.show', 'Event View', 'Website', '2019-10-01 17:48:26'),
(120, 'event.update', 'Event Edit', 'Website', '2019-10-01 17:48:26'),
(121, 'event.edit', 'Event Edit', 'Website', '2019-10-01 17:48:26'),
(122, 'teacher_profile.index', 'Teacher Profile View', 'Website', '2019-10-01 17:48:26'),
(123, 'teacher_profile.store', 'Teacher Profile Create', 'Website', '2019-10-01 17:48:26'),
(124, 'teacher_profile.create', 'Teacher Profile Create', 'Website', '2019-10-01 17:48:26'),
(125, 'teacher_profile.update', 'Teacher Profile Edit', 'Website', '2019-10-01 17:48:26'),
(126, 'teacher_profile.show', 'Teacher Profile View', 'Website', '2019-10-01 17:48:26'),
(127, 'teacher_profile.destroy', 'Teacher Profile Delete', 'Website', '2019-10-01 17:48:26'),
(128, 'teacher_profile.edit', 'Teacher Profile Edit', 'Website', '2019-10-01 17:48:26'),
(129, 'site.about_content', 'Site About Content Edit', 'Website', '2019-10-01 17:48:26'),
(130, 'site.about_content', 'Site About Content Edit', 'Website', '2019-10-01 17:48:26'),
(131, 'site.about_content_image', 'Site About Content Edit', 'Website', '2019-10-01 17:48:26'),
(132, 'site.about_content_image', 'Site About Content Edit', 'Website', '2019-10-01 17:48:26'),
(133, 'site.about_content_image_delete', 'Site About Content Delete', 'Website', '2019-10-01 17:48:26'),
(134, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2019-10-01 17:48:26'),
(135, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2019-10-01 17:48:26'),
(136, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2019-10-01 17:48:26'),
(137, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2019-10-01 17:48:26'),
(138, 'site.dashboard', 'Site Dashboard View', 'Website', '2019-10-01 17:48:26'),
(139, 'site.faq_delete', 'Site FAQ Delete', 'Website', '2019-10-01 17:48:26'),
(140, 'site.faq', 'Site FAQ Create', 'Website', '2019-10-01 17:48:26'),
(141, 'site.faq', 'Site FAQ Create', 'Website', '2019-10-01 17:48:26'),
(142, 'site.gallery', 'Site Gallery View', 'Website', '2019-10-01 17:48:26'),
(143, 'site.gallery_image', 'Site Gallery Create', 'Website', '2019-10-01 17:48:26'),
(144, 'site.gallery_image', 'Site Gallery Create', 'Website', '2019-10-01 17:48:26'),
(145, 'site.gallery_image_delete', 'Site Gallery Delete', 'Website', '2019-10-01 17:48:26'),
(146, 'site.service', 'Site Service Edit', 'Website', '2019-10-01 17:48:26'),
(147, 'site.service', 'Site Service Edit', 'Website', '2019-10-01 17:48:26'),
(148, 'site.settings', 'Site Settings Edit', 'Website', '2019-10-01 17:48:26'),
(149, 'site.settings', 'Site Settings Edit', 'Website', '2019-10-01 17:48:26'),
(150, 'site.statistic', 'Site Statistic Edit', 'Website', '2019-10-01 17:48:26'),
(151, 'site.statistic', 'Site Statistic Edit', 'Website', '2019-10-01 17:48:26'),
(152, 'site.subscribe', 'Site Subscriber View', 'Website', '2019-10-01 17:48:26'),
(153, 'site.testimonial', 'Site Testimonial View', 'Website', '2019-10-01 17:48:26'),
(154, 'site.testimonial_delete', 'Site Testimonial Delete', 'Website', '2019-10-01 17:48:26'),
(155, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2019-10-01 17:48:26'),
(156, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2019-10-01 17:48:26'),
(157, 'site.timeline', 'Site Timeline Create', 'Website', '2019-10-01 17:48:26'),
(158, 'site.timeline', 'Site Timeline Create', 'Website', '2019-10-01 17:48:26'),
(159, 'site.timeline_delete', 'Site Timeline Delete', 'Website', '2019-10-01 17:48:26'),
(160, 'slider.index', 'Slider View', 'Website', '2019-10-01 17:48:26'),
(161, 'slider.store', 'Slider Create', 'Website', '2019-10-01 17:48:26'),
(162, 'slider.create', 'Slider Create', 'Website', '2019-10-01 17:48:26'),
(163, 'slider.destroy', 'Slider Delete', 'Website', '2019-10-01 17:48:26'),
(164, 'slider.update', 'Slider Edit', 'Website', '2019-10-01 17:48:26'),
(165, 'slider.show', 'Slider View', 'Website', '2019-10-01 17:48:26'),
(166, 'slider.edit', 'Slider Edit', 'Website', '2019-10-01 17:48:26'),
(167, 'hrm.employee.index', 'Employee View', 'HRM', '2019-10-01 17:48:26'),
(168, 'hrm.employee.store', 'Employee Create', 'HRM', '2019-10-01 17:48:26'),
(169, 'hrm.employee.create', 'Employee Create', 'HRM', '2019-10-01 17:48:26'),
(170, 'hrm.employee.status', 'Employee Edit', 'HRM', '2019-10-01 17:48:26'),
(171, 'hrm.employee.destroy', 'Employee Delete', 'HRM', '2019-10-01 17:48:26'),
(172, 'hrm.employee.update', 'Employee Edit', 'HRM', '2019-10-01 17:48:26'),
(173, 'hrm.employee.show', 'Employee View', 'HRM', '2019-10-01 17:48:26'),
(174, 'hrm.employee.edit', 'Employee Edit', 'HRM', '2019-10-01 17:48:26'),
(175, 'hrm.leave.index', 'Leave View', 'HRM', '2019-10-01 17:48:26'),
(176, 'hrm.leave.store', 'Leave Create', 'HRM', '2019-10-01 17:48:26'),
(177, 'hrm.leave.create', 'Leave Create', 'HRM', '2019-10-01 17:48:26'),
(178, 'hrm.leave.destroy', 'Leave Delete', 'HRM', '2019-10-01 17:48:26'),
(179, 'hrm.leave.update', 'Leave Edit', 'HRM', '2019-10-01 17:48:26'),
(180, 'hrm.leave.show', 'Leave View', 'HRM', '2019-10-01 17:48:26'),
(181, 'hrm.leave.edit', 'Leave Edit', 'HRM', '2019-10-01 17:48:26'),
(182, 'hrm.policy', 'Policy View', 'HRM', '2019-10-01 17:48:26'),
(183, 'hrm.policy', 'Policy Create', 'HRM', '2019-10-01 17:48:26'),
(184, 'hrm.work_outside.index', 'Work Outside View', 'HRM', '2019-10-01 17:48:26'),
(185, 'hrm.work_outside.store', 'Work Outside Create', 'HRM', '2019-10-01 17:48:26'),
(186, 'hrm.work_outside.create', 'Work Outside Create', 'HRM', '2019-10-01 17:48:26'),
(187, 'hrm.work_outside.destroy', 'Work Outside Delete', 'HRM', '2019-10-01 17:48:26'),
(188, 'hrm.work_outside.update', 'Work Outside Edit', 'HRM', '2019-10-01 17:48:26'),
(189, 'hrm.work_outside.show', 'Work Outside View', 'HRM', '2019-10-01 17:48:26'),
(190, 'hrm.work_outside.edit', 'Work Outside Edit', 'HRM', '2019-10-01 17:48:26'),
(191, 'employee_attendance.index', 'Employee Attendance View', 'HRM', '2019-10-01 17:48:26'),
(192, 'employee_attendance.store', 'Employee Attendance Create', 'HRM', '2019-10-01 17:48:26'),
(193, 'employee_attendance.create', 'Employee Attendance Create', 'HRM', '2019-10-01 17:48:26'),
(194, 'employee_attendance.status', 'Employee Attendance Edit', 'HRM', '2019-10-01 17:48:26'),
(195, 'employee_attendance.create_file', 'Employee Attendance Create', 'HRM', '2019-10-01 17:48:26'),
(196, 'employee_attendance.file_queue_status', 'Employee Attendance Create', 'HRM', '2019-10-01 17:48:26'),
(197, 'exam.index', 'Exam View', 'Exam', '2019-10-01 17:48:26'),
(198, 'exam.create', 'Exam Create', 'Exam', '2019-10-01 17:48:26'),
(199, 'exam.store', 'Exam Create', 'Exam', '2019-10-01 17:48:26'),
(200, 'exam.edit', 'Exam Edit', 'Exam', '2019-10-01 17:48:26'),
(201, 'exam.update', 'Exam Edit', 'Exam', '2019-10-01 17:48:26'),
(202, 'exam.status', 'Exam Edit', 'Exam', '2019-10-01 17:48:26'),
(203, 'exam.destroy', 'Exam Delete', 'Exam', '2019-10-01 17:48:26'),
(204, 'exam.grade.index', 'Grade View', 'Exam', '2019-10-01 17:48:26'),
(205, 'exam.grade.create', 'Grade Create', 'Exam', '2019-10-01 17:48:26'),
(206, 'exam.grade.store', 'Grade Create', 'Exam', '2019-10-01 17:48:26'),
(207, 'exam.grade.edit', 'Grade Edit', 'Exam', '2019-10-01 17:48:26'),
(208, 'exam.grade.update', 'Grade Edit', 'Exam', '2019-10-01 17:48:26'),
(209, 'exam.grade.destroy', 'Grade Delete', 'Exam', '2019-10-01 17:48:26'),
(210, 'exam.rule.index', 'Grade View', 'Exam', '2019-10-01 17:48:26'),
(211, 'exam.rule.create', 'Grade Create', 'Exam', '2019-10-01 17:48:26'),
(212, 'exam.rule.store', 'Grade Create', 'Exam', '2019-10-01 17:48:26'),
(213, 'exam.rule.edit', 'Grade Edit', 'Exam', '2019-10-01 17:48:26'),
(214, 'exam.rule.update', 'Grade Edit', 'Exam', '2019-10-01 17:48:26'),
(215, 'exam.rule.destroy', 'Grade Delete', 'Exam', '2019-10-01 17:48:26'),
(216, 'marks.index', 'Marks View', 'Exam', '2019-10-01 17:48:26'),
(217, 'marks.create', 'Marks Create', 'Exam', '2019-10-01 17:48:26'),
(218, 'marks.store', 'Marks Create', 'Exam', '2019-10-01 17:48:26'),
(219, 'marks.edit', 'Marks Edit', 'Exam', '2019-10-01 17:48:26'),
(220, 'marks.update', 'Marks Edit', 'Exam', '2019-10-01 17:48:26'),
(221, 'result.index', 'Result View', 'Exam', '2019-10-01 17:48:26'),
(222, 'result.create', 'Result Create', 'Exam', '2019-10-01 17:48:26'),
(223, 'result.delete', 'Result Delete', 'Exam', '2019-10-01 17:48:26'),
(224, 'report.student_monthly_attendance', 'Student Monthly Attendance View', 'Report', '2019-10-01 17:48:26'),
(225, 'report.student_list', 'Student List View', 'Report', '2019-10-01 17:48:26'),
(226, 'report.employee_list', 'Employee List View', 'Report', '2019-10-01 17:48:26'),
(227, 'report.employee_monthly_attendance', 'Employee Monthly Attendance View', 'Report', '2019-10-01 17:48:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`),
  KEY `roles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `deletable`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Admin', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(2, 'Teacher', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(3, 'Student', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(4, 'Parents', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(5, 'Accountant', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(6, 'Librarian', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(7, 'Receptionist', 0, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
CREATE TABLE IF NOT EXISTS `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  KEY `roles_permissions_role_id_foreign` (`role_id`),
  KEY `roles_permissions_permission_id_foreign` (`permission_id`),
  KEY `roles_permissions_created_by_index` (`created_by`),
  KEY `roles_permissions_updated_by_index` (`updated_by`),
  KEY `roles_permissions_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 9, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 10, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 11, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 12, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 13, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 14, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 15, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 16, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 17, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 18, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 19, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 20, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 21, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 22, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 23, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 24, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 25, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 26, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 27, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 28, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 29, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 30, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 31, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 32, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 33, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 34, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 35, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 36, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 37, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 38, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 39, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 40, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 41, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 42, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 43, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 44, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 45, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 46, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 47, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 48, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 49, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 50, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 51, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 52, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 53, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 54, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 55, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 56, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 57, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 58, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 59, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 60, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 61, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 62, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 63, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 64, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 65, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 66, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 67, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 68, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 69, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 70, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 71, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 72, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 73, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 74, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 75, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 76, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 77, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 78, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 79, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 80, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 81, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 82, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 83, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 84, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 85, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 86, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 87, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 88, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 89, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 90, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 91, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 92, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 93, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 94, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 95, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 96, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 97, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 98, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 99, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 100, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 101, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 102, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 103, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 104, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 105, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 106, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 107, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 108, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 109, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 110, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 111, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 112, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 113, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 114, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 115, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 116, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 117, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 118, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 119, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 120, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 121, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 122, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 123, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 124, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 125, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 126, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 127, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 128, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 129, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 130, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 131, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 132, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 133, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 134, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 135, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 136, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 137, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 138, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 139, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 140, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 141, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 142, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 143, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 144, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 145, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 146, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 147, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 148, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 149, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 150, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 151, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 152, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 153, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 154, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 155, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 156, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 157, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 158, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 159, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 160, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 161, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 162, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 163, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 164, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 165, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 166, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 167, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 168, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 169, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 170, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 171, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 172, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 173, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 174, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 175, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 176, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 177, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 178, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 179, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 180, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 181, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 182, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 183, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 184, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 185, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 186, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 187, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 188, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 189, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 190, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 191, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 192, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 193, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 194, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 195, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 196, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 197, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 198, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 199, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 200, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 201, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 202, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 203, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 204, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 205, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 206, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 207, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 208, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 209, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 210, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 211, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 212, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 213, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 214, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 215, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 216, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 217, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 218, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 219, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 220, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 221, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 222, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 223, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 224, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 225, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 226, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(1, 227, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(2, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(3, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(4, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(5, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(6, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 2, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 3, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 4, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 5, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 6, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 7, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL),
(7, 8, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sliders_created_by_index` (`created_by`),
  KEY `sliders_updated_by_index` (`updated_by`),
  KEY `sliders_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'First slider image', 'This is subtitle 1', '1.jpg', 1, '2019-10-01 16:50:02', '2019-10-01 16:50:02', NULL, 0, 0, NULL),
(2, 'Second slider image', 'This is subtitle 2', '2.jpg', 2, '2019-10-01 16:50:02', '2019-10-01 16:50:02', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `name`, `dob`, `gender`, `photo`, `class_id`, `email`, `phone_no`, `note`, `present_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mose Thiel', '07/04/2004', '1', NULL, 0, 'wwalter@example.com', '+3902326859940', '', '616 Arely Street\nElianemouth, IA 96749-0937', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(2, 'Leonor Lynch III', '17/02/2014', '1', NULL, 0, 'bcarter@example.org', '+4296800402286', '', '390 Celestine Plaza Apt. 555\nPort Mohamed, WI 42799', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(3, 'Aric Hansen', '02/07/2007', '1', NULL, 0, 'plittel@example.com', '+6414296090229', '', '71849 Hadley Summit\nVonRuedenburgh, HI 77452-1072', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(4, 'Brooke Kshlerin', '08/03/2015', '1', NULL, 0, 'zreilly@example.com', '+3329629857806', '', '30413 Jovan Harbor Apt. 224\nNew Noemiechester, LA 45842', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(5, 'Glenna Feil', '29/08/2010', '2', NULL, 0, 'rasheed.legros@example.net', '+3815682199095', '', '7404 Ledner Forest\nLake Wyatthaven, MT 55336-4365', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(6, 'Willa Hartmann', '03/07/2005', '1', NULL, 0, 'justyn.carroll@example.net', '+8864328332847', '', '949 Toy Mountain\nNorth Lazaro, OR 83963', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(7, 'Dr. Krystina Kulas V', '13/01/2009', '2', NULL, 0, 'lilian56@example.com', '+1697819635732', '', '22661 Alysha Mission Apt. 241\nWest Ceasarmouth, MT 13551', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(8, 'Mrs. Gerda Maggio', '02/12/2009', '1', NULL, 0, 'veum.tito@example.net', '+6968146436389', '', '73602 Ashton Parks\nLake Horace, SD 11929-1191', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(9, 'Kaylie DuBuque II', '14/04/2006', '2', NULL, 0, 'gwen22@example.com', '+6398198579377', '', '8699 Dickinson Hollow\nEast Elsafort, MA 63735', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(10, 'Prof. Raquel Cassin', '15/03/2006', '1', NULL, 0, 'torp.maud@example.net', '+8499298020663', '', '62586 Sonny Course\nRogahnport, ME 02501', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(11, 'Michaela Flatley', '22/04/2010', '2', NULL, 0, 'edgardo10@example.org', '+3637344572517', '', '76227 Batz Orchard\nSouth Leopoldohaven, TX 19194', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(12, 'Ottilie Hauck', '18/11/2016', '2', NULL, 0, 'green.rodriguez@example.org', '+1763723090551', '', '1305 Renner Ranch Suite 008\nBoehmmouth, OR 76543', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(13, 'Gerald Heaney V', '09/11/2004', '2', NULL, 0, 'meredith.kuphal@example.com', '+7443066568977', '', '286 Adrienne Island\nSouth Jakobville, UT 33660-0366', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(14, 'Katharina Ebert', '27/05/2007', '1', NULL, 0, 'barton.medhurst@example.net', '+9199967512876', '', '8218 Theresia Falls Apt. 975\nWest Elenaton, MT 63301-9274', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52'),
(15, 'Miss Rae Predovic I', '26/08/2007', '2', NULL, 0, 'imccullough@example.org', '+9029538855878', '', '515 Aimee Orchard\nSouth Felipeton, CA 37763', '1', '2019-10-01 16:50:51', '2019-10-01 16:50:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_attendances`
--

DROP TABLE IF EXISTS `student_attendances`;
CREATE TABLE IF NOT EXISTS `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `name` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `staying_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_attendances_academic_year_id_foreign` (`student_id`),
  KEY `student_attendances_class_id_foreign` (`class_id`),
  KEY `student_attendances_registration_id_foreign` (`name`),
  KEY `student_attendances_created_by_index` (`created_by`),
  KEY `student_attendances_updated_by_index` (`updated_by`),
  KEY `student_attendances_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `student_id`, `class_id`, `name`, `attendance_date`, `in_time`, `out_time`, `staying_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, '2019-09-16', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, '2019-09-16', '2019-09-16 00:00:00', '2019-09-16 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, '2019-09-16', '2019-09-16 08:00:00', '2019-09-16 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 1, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 2, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 3, '2019-09-17', '2019-09-17 08:00:00', '2019-09-17 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 4, '2019-09-17', '2019-09-17 00:00:00', '2019-09-17 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 5, '2019-09-17', '2019-09-17 08:00:00', '2019-09-17 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 1, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 2, '2019-09-18', '2019-09-18 00:00:00', '2019-09-18 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 3, '2019-09-18', '2019-09-18 08:00:00', '2019-09-18 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 4, '2019-09-18', '2019-09-18 08:00:00', '2019-09-18 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 5, '2019-09-18', '2019-09-18 08:00:00', '2019-09-18 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 1, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 2, '2019-09-19', '2019-09-19 00:00:00', '2019-09-19 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 3, '2019-09-19', '2019-09-19 08:00:00', '2019-09-19 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 4, '2019-09-19', '2019-09-19 08:00:00', '2019-09-19 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 5, '2019-09-19', '2019-09-19 08:00:00', '2019-09-19 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 1, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 2, '2019-09-21', '2019-09-21 08:00:00', '2019-09-21 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 3, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 4, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 5, '2019-09-21', '2019-09-21 00:00:00', '2019-09-21 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 1, '2019-09-22', '2019-09-22 00:00:00', '2019-09-22 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 2, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 3, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 4, '2019-09-22', '2019-09-22 08:00:00', '2019-09-22 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 5, '2019-09-22', '2019-09-22 00:00:00', '2019-09-22 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(31, 1, 1, 1, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(32, 1, 1, 2, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(33, 1, 1, 3, '2019-09-23', '2019-09-23 00:00:00', '2019-09-23 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(34, 1, 1, 4, '2019-09-23', '2019-09-23 00:00:00', '2019-09-23 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(35, 1, 1, 5, '2019-09-23', '2019-09-23 08:00:00', '2019-09-23 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(36, 1, 1, 1, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(37, 1, 1, 2, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(38, 1, 1, 3, '2019-09-24', '2019-09-24 00:00:00', '2019-09-24 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(39, 1, 1, 4, '2019-09-24', '2019-09-24 00:00:00', '2019-09-24 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(40, 1, 1, 5, '2019-09-24', '2019-09-24 08:00:00', '2019-09-24 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(41, 1, 1, 1, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(42, 1, 1, 2, '2019-09-25', '2019-09-25 08:00:00', '2019-09-25 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(43, 1, 1, 3, '2019-09-25', '2019-09-25 08:00:00', '2019-09-25 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(44, 1, 1, 4, '2019-09-25', '2019-09-25 08:00:00', '2019-09-25 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(45, 1, 1, 5, '2019-09-25', '2019-09-25 00:00:00', '2019-09-25 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(46, 1, 1, 1, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(47, 1, 1, 2, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(48, 1, 1, 3, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(49, 1, 1, 4, '2019-09-26', '2019-09-26 08:00:00', '2019-09-26 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(50, 1, 1, 5, '2019-09-26', '2019-09-26 00:00:00', '2019-09-26 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(51, 1, 1, 1, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(52, 1, 1, 2, '2019-09-28', '2019-09-28 00:00:00', '2019-09-28 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(53, 1, 1, 3, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(54, 1, 1, 4, '2019-09-28', '2019-09-28 08:00:00', '2019-09-28 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(55, 1, 1, 5, '2019-09-28', '2019-09-28 00:00:00', '2019-09-28 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(56, 1, 1, 1, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(57, 1, 1, 2, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(58, 1, 1, 3, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(59, 1, 1, 4, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(60, 1, 1, 5, '2019-09-29', '2019-09-29 08:00:00', '2019-09-29 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(61, 1, 1, 1, '2019-09-30', '2019-09-30 08:00:00', '2019-09-30 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(62, 1, 1, 2, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(63, 1, 1, 3, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(64, 1, 1, 4, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(65, 1, 1, 5, '2019-09-30', '2019-09-30 00:00:00', '2019-09-30 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(66, 1, 1, 1, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(67, 1, 1, 2, '2019-10-01', '2019-10-01 08:00:00', '2019-10-01 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(68, 1, 1, 3, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(69, 1, 1, 4, '2019-10-01', '2019-10-01 08:00:00', '2019-10-01 13:00:00', '05:00:00', '', '1', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL),
(70, 1, 1, 5, '2019-10-01', '2019-10-01 00:00:00', '2019-10-01 00:00:00', '00:00:00', '', '0', '2019-10-01 16:50:52', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_class_id_foreign` (`class_id`),
  KEY `subjects_teacher_id_foreign` (`teacher_id`),
  KEY `subjects_created_by_index` (`created_by`),
  KEY `subjects_updated_by_index` (`updated_by`),
  KEY `subjects_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `class_id`, `teacher_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Non eos vel.', '186', '1', 6, 3, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(2, 'Id excepturi veniam.', '133', '1', 3, 3, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(3, 'Id consequuntur eos eligendi.', '159', '1', 3, 5, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(4, 'Consequuntur provident officia.', '153', '1', 7, 5, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(5, 'Nihil unde delectus.', '101', '1', 10, 2, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(6, 'Dolore recusandae exercitationem debitis.', '105', '1', 3, 3, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(7, 'Est non ratione.', '121', '1', 4, 3, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(8, 'Consequatur inventore sed sequi.', '141', '1', 3, 4, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(9, 'Nostrum sequi cum.', '145', '1', 7, 4, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(10, 'Ex quibusdam velit.', '171', '1', 3, 5, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(11, 'Bangla 1st', '101', '1', 1, 3, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(12, 'Bangla 2nd', '102', '1', 1, 2, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(13, 'English 1st', '107', '1', 1, 3, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(14, 'English 2nd', '108', '1', 1, 2, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(15, 'Math', '111', '1', 1, 5, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(16, 'Computer', '112', '1', 1, 4, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL);

--
-- Bẫy `subjects`
--
DROP TRIGGER IF EXISTS `subject_ai`;
DELIMITER $$
CREATE TRIGGER `subject_ai` AFTER INSERT ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'insert', NULL, d.* 
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `subject_au`;
DELIMITER $$
CREATE TRIGGER `subject_au` AFTER UPDATE ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'update', NULL, d.*
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_profiles`
--

DROP TABLE IF EXISTS `teacher_profiles`;
CREATE TABLE IF NOT EXISTS `teacher_profiles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `qualification` longtext COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_profiles_created_by_index` (`created_by`),
  KEY `teacher_profiles_updated_by_index` (`updated_by`),
  KEY `teacher_profiles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `name`, `designation`, `image`, `description`, `qualification`, `facebook`, `google`, `twitter`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Fakir Chand', 'Head Master', '1.jpg', 'Super cool boy!', 'M.A in English', '#', '#', '#', '2019-10-01 16:50:02', '2019-10-01 16:50:02', NULL, 0, 0, NULL),
(2, 'Nosimon Beagum', 'Class Teacher', '2.jpg', '', 'Hons in English', '#', '#', '#', '2019-10-01 16:50:02', '2019-10-01 16:50:02', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_by_index` (`created_by`),
  KEY `users_updated_by_index` (`updated_by`),
  KEY `users_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone_no`, `password`, `remember_token`, `force_logout`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Admin', 'admin', 'datnv1997@gmail.com', '01659501670', '$2y$10$MOnzkHj74WfxRORGdfMG5uAJGbMLw6Ch2hc5.yz5nXTRns5BSHYCK', 'LqlyEbG998MpabFnxgk1OS0b7b7jEEl7v1vR8GRimyZVRwoaTlqaP3IdPirz', 0, '1', '2019-10-01 16:48:26', '2019-10-13 14:43:22', NULL, 0, 1, NULL),
(2, 'Miss Demetris Dare', 'queenie39', 'bogisich.terrill@example.net', NULL, '$2y$10$33F7fhxCx3VKcqM4jfU.xeDxyTTCldFUmtfhOJQSh8reoLI7Vd9Vm', 'N820x5wPgN', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(3, 'Kelley Nienow', 'soberbrunner', 'runte.dayne@example.net', NULL, '$2y$10$JCVpIsu.cjUq93WIdSXxBeb8.lC21nYicXA8RKnCKoQ54ga2xJIuS', 'WOZZg7FQBi', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(4, 'Audrey Dibbert', 'cesar.king', 'schmitt.scot@example.com', NULL, '$2y$10$NCWzuKwcsI5uPREx1yKXlOM28qckNbtyJCjVnUNzEGL3ZwivqUi3O', 'Fxe8eOYwh5', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(5, 'Kaylah Stiedemann', 'hallie.parisian', 'dejon36@example.com', NULL, '$2y$10$qhzRiFEsOgVcH4ZjnHea/eJP0UWqDEmqha1INJOHPQk9dwcj.1vza', 'HtNwspU9zL', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(6, 'Mr. Dustin Schaden', 'aglae17', 'marks.eulah@example.net', NULL, '$2y$10$LWInqpqgvbiKYYtXRy3syep/w43ABpXpHGgn42AjUTeZr1FH.i75S', '0gtQrk6KJi', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(7, 'Mellie Reynolds', 'spfannerstill', 'berge.lilla@example.com', NULL, '$2y$10$jJ2894pd0/XmOOqi0n1Td.65zTTlLI/DzbQhr9pmiC.HjTO6SjSGu', 'JXKfeUTDBX', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(8, 'Emmitt Nienow V', 'runolfsson.maureen', 'anita.will@example.com', NULL, '$2y$10$jecVcHkjdhBmYyld9Iozd.MLCx6QScNIohVIiuGq5ubMTe2tdrHBe', 'NmmhlF03iI', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(9, 'Dr. Darian Lockman V', 'noah.mraz', 'briana.leffler@example.org', NULL, '$2y$10$MDCtoaO7e6V/VhuiNltiBeTcDyQmzXXthDxuJc2zo3QSES4/5xc2q', 'wF34Gbklmy', 0, '1', '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(10, 'Cristina Sporer', 'marks.maddison', 'qprosacco@example.net', NULL, '$2y$10$R/vYj2VsETQ0cC92dns3PuDenwku1IsBk5qxhDwmotsKKLFJs88RW', 'i2OllDwcmL', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(11, 'Shaniya Reynolds', 'mwisoky', 'gutmann.bethel@example.com', NULL, '$2y$10$s33jBtY7546zNy4VYfKnZO.jlBhsh.5IRNbfxaHbR3YSojcGzCbEa', 'd4TJXFfbLA', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(12, 'Bertram Feeney II', 'pfannerstill.pink', 'vonrueden.leola@example.net', NULL, '$2y$10$QYucleM0hgtzZLfTimSCXe5UjRHPfgpaZpLMtelJIha1DUNhY11se', 'ilPu4hkAb7', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(13, 'Tess Jast', 'jennings52', 'wwalter@example.com', NULL, '$2y$10$MRcTLELeItGvwqS26.0dk.W8iLs1FqRBlF2W6wiZ3Ns7HkPdqTP92', 'xqRwp6BM7q', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(14, 'Keon Metz IV', 'yrosenbaum', 'bcarter@example.org', NULL, '$2y$10$ykKoG7otyl/1e3CWO/mr1eFDBcFebrdeikVvocl1U9E8WoWq4Jbu6', 'VPwIQkUyI7', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(15, 'Virgie Prohaska', 'coralie55', 'plittel@example.com', NULL, '$2y$10$aoJJe0QsSqQSSuiluSbas.MWKTbBGEhjlJWJtqn14tjoQQiS/UkpG', 'qinGhQFSmA', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(16, 'Isaias Haley Jr.', 'breana.pacocha', 'zreilly@example.com', NULL, '$2y$10$7Rg4DClB2C7ugYRgGrYJre8gu1dkMXiuvpMyLdeduse/7ISX6wT5u', 'TGHKNk3DO7', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(17, 'Mr. Triston Greenholt DVM', 'dane.rohan', 'rasheed.legros@example.net', NULL, '$2y$10$nbA8m45a5wny06wwTn6lDeXq7YyXV3r2ToXlm8AA4bMWxSn1QSE7.', 'Cp6B5nN0HT', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(18, 'Antonietta Wolff IV', 'swatsica', 'justyn.carroll@example.net', NULL, '$2y$10$hqBRRiIz0SdMi9rj12n.DueKr/fUn50E1em8JUAjYjy.h9nW1Dis.', 'f21SyCuKud', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(19, 'Tressa Cummings', 'kunde.tevin', 'lilian56@example.com', NULL, '$2y$10$FupRFaJz5NrP9b2IPfPV2O.gWVCQ58IMiBd3pBnVUrw15ypzJFigS', '3eK6rTLlCR', 0, '1', '2019-10-01 16:50:51', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(20, 'Jaeden Krajcik', 'windler.steve', 'veum.tito@example.net', NULL, '$2y$10$6DhT2DRAbUtRvYp1RWtbFexPBm9Q1PAUXtMwoLhJ1n3TlAKd96k02', 'FnfL32nbSX', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(21, 'Earnestine Romaguera', 'aliza36', 'gwen22@example.com', NULL, '$2y$10$aFKA4YUWjrJo2hjUNtiY9egYqSjTK8M.IG08cpk/ZQSxrFn1lXb6C', 'ysoGeVweV1', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(22, 'Dr. Jacques Schinner', 'bertrand.leffler', 'torp.maud@example.net', NULL, '$2y$10$aPyOS/5MBqmncRsBxKNtY.5Bm3KK2a.bcYML0vtT7KIyTCsT/gDCm', 'OpS6mzJL9a', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(23, 'Brent Bergnaum', 'murray.crystal', 'edgardo10@example.org', NULL, '$2y$10$bo1O/EHxLKyCvsQeNfWg9.Cy/fdM6QEfEojTbv4P7deBNnugqo7qC', 'lqiTFLOmiJ', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(24, 'Dr. Magdalena Dare', 'orrin.prohaska', 'green.rodriguez@example.org', NULL, '$2y$10$gljDMxcPrFt.YXx6Ufv/C.rSyJpgo1Q4wxbRNdngW8qL1c/FgLyEe', 'IcuIAQAqQm', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(25, 'Margot Hansen V', 'elliot.brown', 'meredith.kuphal@example.com', NULL, '$2y$10$JnGXd5oM0LJl8b4dkjs3fOw38VjUDVyIQOxAPyREV0Z3LSdw.y5YW', 'stprzMt7vP', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(26, 'Javonte Feil', 'lesly.renner', 'barton.medhurst@example.net', NULL, '$2y$10$mBSeBabIjqYAWhKX6R2lTO1btkctLm2GN/0RH91309VhGFw2MkAxe', 'DpzLUhHRD0', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(27, 'Merlin Strosin', 'gardner.senger', 'imccullough@example.org', NULL, '$2y$10$3ocCvl3Cnr7Q5vN4OXDaieh7.C0LKgLDOTacQ3ic4e/gr6n2PwkDm', 'I1IGLJU6Qi', 0, '1', '2019-10-01 16:50:52', '2019-10-01 16:50:52', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
CREATE TABLE IF NOT EXISTS `users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  KEY `users_permissions_user_id_foreign` (`user_id`),
  KEY `users_permissions_permission_id_foreign` (`permission_id`),
  KEY `users_permissions_created_by_index` (`created_by`),
  KEY `users_permissions_updated_by_index` (`updated_by`),
  KEY `users_permissions_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  KEY `user_roles_created_by_index` (`created_by`),
  KEY `user_roles_updated_by_index` (`updated_by`),
  KEY `user_roles_deleted_by_index` (`deleted_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2019-10-01 16:48:26', '2019-10-01 16:48:26', NULL, 0, 0, NULL),
(2, 2, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(3, 5, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(4, 4, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(5, 2, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(6, 2, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(7, 2, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(8, 2, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(9, 2, '2019-10-01 16:50:50', '2019-10-01 16:50:50', NULL, 1, 0, NULL),
(10, 5, '2019-10-01 16:50:50', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(11, 6, '2019-10-01 16:50:50', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(12, 7, '2019-10-01 16:50:50', '2019-10-01 16:50:51', NULL, 1, 0, NULL),
(13, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(14, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(15, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(16, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(17, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(18, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(19, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(20, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(21, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(22, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(23, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(24, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(25, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(26, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL),
(27, 3, '2019-10-01 16:50:51', '2019-10-01 16:50:52', NULL, 1, 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
