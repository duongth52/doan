-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2019 lúc 06:21 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoryIds` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `subDescription`, `description`, `images`, `categoryIds`, `created_at`, `updated_at`) VALUES
(39, 'Phòng khám nhi', 'Tận tình giúp đỡ', NULL, 'uploads/categories/bgn-slider-01.jpg', 5, '2019-12-15 23:49:39', '2019-12-22 11:59:14'),
(41, 'Bác sĩ Hồng Dương', '10 năm kinh nghiệm', NULL, 'uploads/categories/doctor.jpg', 7, '2019-12-16 00:42:41', '2019-12-22 11:51:04'),
(43, 'Đỗ Minh Hiếu', 'Kinh nghiệm 15 năm', NULL, 'uploads/articles/doctor.jpg', 7, '2019-12-22 11:45:31', '2019-12-22 11:45:31'),
(44, 'Tật khúc xạ', 'Chữa cùng chuyên khoa giàu kinh nghiệm', NULL, 'uploads/articles/bgn-slider-03.jpg', 5, '2019-12-22 12:02:01', '2019-12-22 12:02:01'),
(45, 'Bác sĩ Thành', 'Chuyên môn 10 năm kinh nghiệm', NULL, 'uploads/articles/bsThanh.jpg', 7, '2019-12-23 01:31:52', '2019-12-23 01:31:52'),
(46, 'Bệnh sởi', 'Bệnh sởi là bệnh chưa có thuốc điều trị đặc hiệ', '<h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 27px;\">1. Bệnh sởi có thể tự khỏi không?</h2><div class=\"rich-text\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bệnh sởi là bệnh chưa có thuốc điều trị đặc hiệu. Có tới 90% các bệnh nhân sởi có thể tự khỏi, chỉ có 10 % ca bệnh có biến chứng nặng.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bản chất của&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/dau-hieu-nhan-biet-va-phong-tranh-benh-soi-trong-mua-dich/\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\"><span style=\"font-weight: 700;\">bệnh sởi</span></a>&nbsp;là một bệnh lành tính, bệnh có thể tự khỏi sau 7 - 10 ngày mà không để lại biến chứng nguy hiểm. Chỉ trên những cơ địa đặc biệt mới có nguy cơ cao xảy ra các biến chứng. Nếu trường hợp bệnh nhẹ, trẻ em bị sởi nên nằm cách ly tại nhà. Sau 3-4 ngày phát ban xong thì sẽ dần dần hồi phục. Trường hợp xảy ra biến chứng như viêm phổi, viêm cơ tim hay viêm não do phản ứng kháng nguyên, bội nhiễm vi khuẩn....cha mẹ cần nhanh chóng đưa trẻ vào viện để được điều trị kịp thời.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Tiêm&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/tai-sao-phai-tiem-2-mui-vac-xin-soi/\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\"><span style=\"font-weight: 700;\">vắc xin sởi</span></a>&nbsp;là biện pháp phòng bệnh chủ động giúp cơ thể sinh ra kháng thể chống lại virus sởi. Cơ thể đã bắt đầu hình thành miễn dịch sau khi tiêm vắc xin từ 7-10 ngày, và đạt được miễn dịch có thể bảo vệ được là sau 3-4 tuần. Vì vậy, người dân, đặc biệt là trẻ nhỏ từ 9 tháng tuổi nên tiêm phòng để phòng bệnh hiệu quả.</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 27px;\">2. Tại sao bệnh sởi có khả năng trở thành dịch?</h2><figure class=\"post-image full has-zoomable loaded-img\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center; color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><img alt=\"benh-soi-co-tu-khoi-khong-1\" class=\"full uploaded\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20190624_060407_170829_benh-soi.max-1800x1800.jpg\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20190624_060407_170829_benh-soi.max-1800x1800.jpg\" lazy=\"loaded\" style=\"border: 0px; max-width: 100%; opacity: 1; border-radius: 5px; width: 420px;\"><figcaption class=\"caption\" style=\"font-size: 12px; margin: 10px auto 0px;\"><div class=\"rich-text\">Tại sao bệnh sởi có khả năng trở thành dịch?</div></figcaption></figure><div class=\"rich-text\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Nguyên nhân thứ nhất là do bệnh viện tuyến cao quá tải, khó kiểm soát dịch. Bệnh nhi bị bệnh sởi sẽ lây chéo cho các bệnh nhi khác, vì thế dịch bệnh bùng phát rất nhanh.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Chương trình tiêm chủng mở rộng chỉ bao phủ mới khoảng 90-95 %, mỗi một năm vẫn còn khoảng 5-10% không được được tiêm. Hơn nữa, mặc dù vắc xin sởi rất có hiệu lực nhưng chỉ đáp ứng miễn dịch trong khoảng 85-90 %. Tích lũy lại trong 3 - 4 năm thì có những người chưa được tiêm hoặc tiêm mà không sinh ra được miễn dịch cũng là con số tương đối lớn. Khi có mầm bệnh xuất hiện, những người này đều rất dễ bị lây nhiễm.</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 27px;\">3. Bệnh sởi lây bệnh qua những con đường nào?</h2><div class=\"rich-text\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bệnh sởi là một bệnh truyền nhiễm có thể lây truyền qua các đường sau:</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bệnh thường lây trực tiếp qua đường hô hấp: Siêu vi sởi có thể tồn tại ở mũi và cổ họng của bệnh nhân. khi bệnh nhân ho, hắt hơi, nói chuyện, những giọt nước nhỏ xíu có chứa siêu vi sẽ bắn ra không khí và người khác có thể hít vào hoặc những giọt này có thể rơi xuống một nơi nào đó như mặt bàn, điện thoại người không mắc bệnh sờ vào những nơi này và đưa tay lên mũi hay miệng, sẽ bị lây bệnh Họ thường đã có thể lây bệnh cho người khác 4 ngày trước khi vết đỏ xuất hiện.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bệnh cũng có khả năng lây gián tiếp nhưng rất ít gặp bởi virus sởi dễ bị diệt ở ngoại cảnh.</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 27px;\">4. Dấu hiệu của bệnh sởi</h2><figure class=\"post-image full has-zoomable loaded-img\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center; color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><img alt=\"benh-soi-co-tu-khoi-khong-2\" class=\"full uploaded\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20190624_060445_127917_20190405_132435_026.max-1800x1800.jpg\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20190624_060445_127917_20190405_132435_026.max-1800x1800.jpg\" lazy=\"loaded\" style=\"border: 0px; max-width: 100%; opacity: 1; border-radius: 5px; width: 420px;\"><figcaption class=\"caption\" style=\"font-size: 12px; margin: 10px auto 0px;\"><div class=\"rich-text\">Giai đoạn khởi phát (giai đoạn viêm long) kéo dài từ 2 - 4 ngày với triệu chứng sốt cao</div></figcaption></figure><div class=\"rich-text\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Hầu hết những người mắc sởi đều có các biểu hiện đặc trưng là sốt, viêm long đường hô hấp trên, viêm kết mạc và phát ban. Bệnh sởi diễn biến qua các giai đoạn sau:</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\">Giai đoạn ủ bệnh: kéo dài từ 7- 21 ngày, trung bình là 10 ngày</li><li style=\"margin: 0px 0px 15px;\">Giai đoạn khởi phát (giai đoạn viêm long) kéo dài từ 2 - 4 ngày với các triệu chứng sốt cao, viêm long đường hô hấp trên, viêm kết mạc, đôi khi có viêm thanh quản cấp, có thể có hạt Koplik phía trong miệng ngang hàm trên.</li><li style=\"margin: 0px 0px 15px;\">Giai đoạn toàn phát kéo dài từ 2-5 ngày: Sau sốt 3-4 ngày người bệnh có biểu hiện phát ban hồng, ban bắt đầu lan từ sau tai, trán xuống ngực, lưng và cuối cùng xuống tới đùi và bàn chân.</li><li style=\"margin: 0px 0px 15px;\">Giai đoạn hồi phục: Nốt phát ban chuyển sang màu xám, bong vảy để lại vết thâm, vằn da hổ và mất dần.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Để ngăn ngừa sởi bùng phát thành dịch, trẻ mắc sởi cần được cách ly, tránh lây bệnh sang người lành. Khi tiếp xúc với người bệnh hoặc người nghi ngờ mắc sởi, cần đeo khẩu trang nếu phải tiếp xúc; vệ sinh tay sạch sẽ trước và sau khi tiếp xúc; giữ gìn vệ sinh môi trường và nơi xung quanh sạch sẽ, thoáng mát</p></div>', 'uploads/articles/benh.png', 6, '2019-12-23 01:39:09', '2019-12-23 01:39:09'),
(47, 'Bệnh sốt xuất huyết', 'Bệnh truyền nhiễm cấp tính do một loại siêu vi trùng', '<div class=\"detail-header\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><h1 style=\"font-size: 32px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Helvetica, Arial, san-serif; line-height: 1.3; color: inherit;\">Sốt xuất huyết ở người lớn: Triệu chứng và cách điều trị</h1><span aria-hidden=\"true\" class=\"fa fa-calendar\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit;\"></span>&nbsp;10/10/2019<div class=\"full-question\" style=\"font-weight: 700; margin: 0px 0px 15px;\"></div><div class=\"question-images \" style=\"margin: 0px 0px 15px;\"><figure class=\"post-image full loaded-img has-zoomable\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center;\"><img src=\"https://vinmec-prod.s3.amazonaws.com/images/20191009_101459_081111_sot-xuat-huyet-khi-ma.max-800x800.jpg\" alt=\"Sốt xuất huyết là gì?\" class=\"full uploaded \" style=\"border: 0px; max-width: 100%; border-radius: 5px; width: 420px;\"></figure></div></div><div class=\"detail-body clearfix\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><div class=\"streamfield\"><div class=\"block-content cms\"><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Sốt xuất huyết là một trong những căn bệnh truyền nhiễm phổ biến, xuất hiện theo mùa và nếu không có biện pháp điều trị kịp thời sẽ gây ra biến chứng nguy hiểm đến tính mạng của người bệnh. Bệnh sốt xuất huyết ở người lớn và trẻ nhỏ thường có những triệu chứng cảnh báo khá giống nhau.</span></p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">1. Bệnh sốt xuất huyết là gì?</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/dau-hieu-sot-xuat-huyet-nguoi-lon/?location=all\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\"><span style=\"font-weight: 700;\">Sốt xuất huyết ở người lớn</span></a>&nbsp;là bệnh truyền nhiễm cấp tính do một loại siêu vi trùng có tên là&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/virus-dengue-gay-benh-sot-xuat-huyet-co-may-loai/?location=all\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\"><span style=\"font-weight: 700;\">Dengue</span></a>&nbsp;gây ra. Đây là căn bệnh có thể lây truyền từ người này sang người khác nếu như bị muỗi vằn (có nhiều khoang trắng ở chân và lưng) mang mầm bệnh đốt. So với người lớn thì trẻ em là đối tượng dễ bị mắc bệnh hơn cả.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bệnh sốt xuất huyết có thể khiến cho cơ thể người bệnh trở nên đau nhức, đặc biệt là ở cơ và các khớp.<span style=\"font-weight: 700;\">&nbsp;Sốt xuất huyết dạng nhẹ</span>&nbsp;có thể gây phát ban, sốt cao, dạng nặng thì có thể gây chảy máu, giảm huyết áp đột ngột và khiến người bệnh tử vong nhanh chóng.</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">2. Triệu chứng sốt xuất huyết ở người lớn</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Triệu chứng sốt xuất huyết ở người lớn</span>&nbsp;có nhiều điểm tương đồng với sốt xuất huyết ở trẻ con. Khi bị nhiễm phải loại virus gây bệnh, người bệnh sẽ gặp phải một trong 2 trường hợp là sốt xuất huyết biểu hiện ra bên ngoài hoặc&nbsp;<span style=\"font-weight: 700;\">xuất huyết nội tạng</span>.</p></div><figure class=\"post-image full has-zoomable loaded-img\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center;\"><img alt=\"Vết xuất huyết dưới da khi người bệnh mắc sốt xuất huyết\" class=\"full uploaded\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20190416_171610_103941_33.max-1800x1800.jpg\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20190416_171610_103941_33.max-1800x1800.jpg\" lazy=\"loaded\" style=\"border: 0px; max-width: 100%; opacity: 1; border-radius: 5px; width: 420px;\"><figcaption class=\"caption\" style=\"font-size: 12px; margin: 10px auto 0px;\"><div class=\"rich-text\">Phát ban là một trong các triệu chứng sốt xuất huyết ở người lớn</div></figcaption></figure><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\"><span style=\"font-weight: 700;\">Triệu chứng sốt xuất huyết ở người lớn dạng cổ điển (thể nhẹ)</span></li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Trong trường hợp này, bệnh&nbsp;<span style=\"font-weight: 700;\">sốt xuất huyết ở người lớn</span>&nbsp;sẽ có triệu chứng rầm rộ hơn ở trẻ em, thường xuất hiện các biểu hiện điển hình và không có biến chứng. Bắt đầu bằng triệu chứng sốt (trong vòng 4-7 ngày tính từ sau khi bị truyền bệnh bởi muỗi) và kèm theo các biểu hiện như:</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\">Đau phía sau mắt</li><li style=\"margin: 0px 0px 15px;\">Đau nhức đầu nghiêm trọng</li><li style=\"margin: 0px 0px 15px;\">Đau khớp và cơ</li><li style=\"margin: 0px 0px 15px;\">Sốt cao, có thể lên đến 40,5 độ C</li><li style=\"margin: 0px 0px 15px;\">Phát ban</li><li style=\"margin: 0px 0px 15px;\">Buồn nôn và ói mửa</li><li style=\"margin: 0px 0px 15px;\"><span style=\"font-weight: 700;\">Dạng sốt xuất huyết gây xuất huyết nội tạng</span></li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Người bệnh có thể bị xuất huyết nội tạng (đường tiêu hóa và xuất huyết não),</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">triệu chứng sốt xuất huyết ở người lớn</span>&nbsp;gây xuất huyết đường tiêu hóa sẽ bao gồm biểu hiện đau đầu bình thường và sốt nhẹ, không phát ban. Sau khoảng 2 ngày, người bệnh sẽ đi ngoài ra máu, phân có màu đen hoặc đi ngoài ra máu tươi, trên da bắt đầu xuất hiện các chấm xuất huyết, người mệt mỏi, da xanh tái...</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Trường hợp xuất huyết não sẽ rất khó nhận biết vì<span style=\"font-weight: 700;\">&nbsp;triệu chứng sốt xuất huyết ở người lớn</span>&nbsp;sẽ không rõ ràng, có thể người bệnh chỉ bị sốt, đau đầu, liệt chân, tay hoặc liệt nửa người và sau đó bị hôn mê, dẫn đến tử vong.</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\"><span style=\"font-weight: 700;\">Triệu chứng</span>&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/nhung-dieu-can-tranh-khi-bi-sot-xuat-huyet-dengue/?location=all\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\"><span style=\"font-weight: 700;\">sốt xuất huyết dengue</span></a><span style=\"font-weight: 700;\">&nbsp;(hội chứng sốc dengue)</span></li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Đây là thể bệnh dạng nặng nhất của bệnh<span style=\"font-weight: 700;\">&nbsp;sốt xuất huyết ở người lớn</span>, bao gồm tất cả các triệu chứng của bệnh sốt xuất huyết thể nhẹ cộng với triệu chứng chảy máu, huyết tương thoát khỏi mạch máu, chảy máu ồ ạt, hạ huyết áp...</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Trường hợp này thường xảy ra ở người bệnh trong lần nhiễm bệnh sau, khi cơ thể đã có miễn dịch chủ động hoặc thụ động với một loại kháng nguyên virus, sau khoảng 2 - 5 ngày mắc bệnh thì bệnh sẽ có tiến triển nặng, dạng bệnh này có thể xảy ra ở trẻ và gây tử vong nhanh chóng.</p></div><figure class=\"post-image full\" style=\"margin: 10px auto; max-width: 420px; text-align: center;\"><img alt=\"bệnh do muỗi\" class=\"full uploaded\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20190416_154237_554056_muoi.max-1800x1800.jpg\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20190416_154237_554056_muoi.max-1800x1800.jpg\" lazy=\"loaded\" style=\"border: 0px; max-width: 100%; opacity: 1; border-radius: 5px; width: 420px;\"><figcaption class=\"caption\" style=\"font-size: 12px; margin: 10px auto 0px;\"><div class=\"rich-text\">Bệnh sốt xuất huyết lây truyền từ người này sang người khác qua đường trung gian là muỗi vằn</div></figcaption></figure><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">3. Cách điều trị bệnh sốt xuất huyết ở người lớn</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Thực tế, có nhiều người chưa hiểu hết về bệnh&nbsp;<span style=\"font-weight: 700;\">sốt xuất huyết ở người lớn và cách điều trị</span>&nbsp;như thế nào để ngăn ngừa biến chứng. Theo đánh giá của giới chuyên môn thì sốt xuất huyết là căn bệnh có nguy cơ gây biến chứng cao và khả năng ảnh hưởng đến tính mạng của người bệnh là rất lớn. Do vậy, việc xác định mức độ nặng nhẹ của bệnh là rất cần thiết để có thể đưa ra phác đồ điều trị phù hợp.</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\">Giai đoạn điều trị sốt xuất huyết ở nhà: Khi phát hiện biểu hiện sốt từ 2 - 7 ngày, người bệnh có thể điều trị ở nhà và biện pháp điều trị duy nhất là bù nước cho người bệnh.</li><li style=\"margin: 0px 0px 15px;\">Giai đoạn nhập viện thời gian ngắn (12-24 giờ): Cần phải đưa người bệnh nhập viện ngay khi biện pháp bù nước bằng đường uống không mang lại kết quả và người bệnh xuất hiện các điểm&nbsp;<span style=\"font-weight: 700;\">xuất huyết dưới da hoặc niêm mạc</span>.</li><li style=\"margin: 0px 0px 15px;\">Giai đoạn nhập viện thời gian dài (&gt;24 giờ): Bệnh nhân sốt xuất huyết cần phải nhập viện điều trị ngay khi có biểu hiện chân tay lạnh, sốt li bì, mạch yếu, viêm họng, khó thở...</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Sốt xuất huyết hiện nay chưa có thuốc điều trị, phương pháp điều trị chủ yếu là điều trị triệu chứng, khi bệnh&nbsp;<span style=\"font-weight: 700;\">sốt xuất huyết ở người lớn</span>&nbsp;thuộc thể nhẹ thì có thể chăm sóc tại nhà, cho bệnh nhân nghỉ ngơi và uống nhiều nước, sử dụng các món ăn mềm và có nước, dễ tiêu hóa, hạ sốt với&nbsp;<a href=\"https://www.vinmec.com/vi/tin-tuc/thong-tin-suc-khoe/paracetamol-la-gi/?location=all\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\"><span style=\"font-weight: 700;\">Paracetamol</span></a>, lau mát khi sốt cao. Người bệnh cần tuân thủ tuyệt đối theo hướng dẫn của bác sĩ, tự theo dõi sát tại nhà, có thể đến bệnh viện thực hiện các xét nghiệm cần thiết (nếu có thể).</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">4. Phòng ngừa sốt xuất huyết ở người lớn như thế nào?</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Sốt xuất huyết là căn bệnh có thể lây truyền từ người này sang người khác qua đường trung gian là muỗi vằn, chính vì thế, biện pháp phòng ngừa&nbsp;<span style=\"font-weight: 700;\">sốt xuất huyết ở người lớn</span>&nbsp;và trẻ nhỏ hiệu quả nhất chính là:</p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\">Vệ sinh nơi ở, môi trường sống xung quanh sạch sẽ.</li><li style=\"margin: 0px 0px 15px;\">Không nên trữ nước trong nhà.</li><li style=\"margin: 0px 0px 15px;\">Tiêu diệt muỗi vằn bằng cách đốt nhang muỗi, vợt muỗi, phun thuốc diệt muỗi.</li><li style=\"margin: 0px 0px 15px;\">Phát quang bụi rậm và ngủ màn để tránh bị muỗi đốt.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Sốt xuất huyết</span>&nbsp;là căn bệnh nguy hiểm với nguy cơ biến chứng rất cao, do vậy, để bảo vệ sức khỏe của bản thân và những người thân yêu thì mỗi người hãy chủ động tìm hiểu về căn bệnh này và có biện pháp phòng ngừa hiệu quả.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Bệnh viện Đa khoa Quốc tế Vinmec là một trong những bệnh viện không những đảm bảo chất lượng chuyên môn với đội ngũ y bác sĩ đầu ngành, hệ thống trang thiết bị công nghệ hiện đại mà còn nổi bật với dịch vụ khám, tư vấn và chữa bệnh toàn diện, chuyên nghiệp; không gian khám chữa bệnh văn minh, lịch sự, an toàn và tiệt trùng tối đa.</p></div></div></div></div>', 'uploads/articles/benh2.jpg', 6, '2019-12-23 01:44:27', '2019-12-23 01:44:27'),
(48, 'Bệnh viêm kết mạc do virus', 'Bệnh viêm kết mạc do virus (đau mắt đỏ)', '<h1 style=\"font-size: 32px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Helvetica, Arial, san-serif; line-height: 1.3; color: inherit;\">Bệnh viêm kết mạc do virus (đau mắt đỏ) dễ lây mạnh, cảnh giác trong mùa xuân hè</h1><span aria-hidden=\"true\" class=\"fa fa-calendar\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit;\"></span> 02/05/2019<div class=\"full-question\" style=\"font-weight: 700; margin: 0px 0px 15px;\"></div><div class=\"question-images \" style=\"margin: 0px 0px 15px;\"><figure class=\"post-image full loaded-img has-zoomable\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center;\"><img src=\"https://vinmec-prod.s3.amazonaws.com/images/20190503_035454_655159_viem_ket_mac.max-800x800.jpg\" alt=\"viêm kết mạc\" class=\"full uploaded \" style=\"border: 0px; max-width: 100%; border-radius: 5px; width: 420px;\"></figure></div></div><div class=\"detail-body clearfix\" style=\"color: rgb(51, 51, 51); font-family: Helvetica, Arial, san-serif; font-size: 15px;\"><div class=\"streamfield\"><div class=\"block-content cms\"><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Bài viết được tư vấn chuyên môn bởi BSCK I Lê Thị Phương Thảo - Đơn nguyên Mắt - Bệnh viện Đa khoa Quốc tế Vinmec Times City.</span></p></div><div class=\"profile-widget\" style=\"display: inline-block; padding: 0px 32px 0px 56px; position: relative; width: 753.328px;\"><div class=\"body\" style=\"background: rgb(246, 246, 246); float: left; min-height: 160px; padding: 24px 24px 16px 80px; position: relative; width: 665.328px;\"><div class=\"profile-widget-top\"><a class=\"avatar\" href=\"https://www.vinmec.com/danh-sach/bac-si/le-thi-phuong-thao-51205/mat\" style=\"background-image: url(\"https://vinmec-prod.s3.amazonaws.com/images/06_03_2019_04_43_48_535440.jpeg\"); background-position: 50% 50%; background-size: cover; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all; border: 1px solid rgb(241, 241, 241); height: 112px; left: -56px; position: absolute; top: 24px; width: 112px; z-index: 1; border-radius: 4px;\"></a><h4 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 4px; font-size: 18px; padding-right: 230px;\"><a href=\"https://www.vinmec.com/danh-sach/bac-si/le-thi-phuong-thao-51205/mat\" style=\"color: rgb(51, 51, 51); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\">Lê Thị Phương Thảo</a></h4></div><div class=\"btn-group\" style=\"position: absolute; display: inline-block; font-size: 12px; line-height: 1.5; right: 24px; top: 24px;\"><a href=\"https://www.vinmec.com/danh-sach/bac-si/le-thi-phuong-thao-51205/mat#!dat-kham\" class=\"btn btn-sm btn-primary btn-curvy\" style=\"background-color: rgb(21, 127, 192); transition: all 0.1s ease 0s, visibility 0s ease 0s; margin-bottom: 8px; font-weight: 400; white-space: nowrap; touch-action: manipulation; cursor: pointer; background-image: none; border-color: rgb(0, 102, 166); padding: 5px 15px; font-size: 12px; float: left; outline: none; margin-left: 8px; border-radius: 40px !important;\">Đăng ký khám</a></div><div class=\"speciality-address\" style=\"float: left; width: 561.328px;\"><div class=\"speciality\" style=\"float: left; padding-left: 20px; position: relative; width: 280.656px;\"><span style=\"font-weight: 700; display: inline-block; font-size: 13px; margin-bottom: 4px; width: 260.656px;\"><span aria-hidden=\"true\" class=\"fa fa-fw fa-stethoscope\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit; width: 1.28571em; left: 0px; position: absolute; top: 4px;\"></span>Chuyên khoa</span> <span style=\"color: rgb(119, 119, 119); display: inline-block; font-size: 12px; margin-right: 4px; position: relative; width: 260.656px;\"><a href=\"https://www.vinmec.com/vi/danh-sach/bac-si/?specialities=nhan-khoa\" style=\"color: rgb(119, 119, 119); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\">Mắt</a></span></div><div class=\"place\" style=\"float: left; padding-left: 20px; position: relative; width: 280.656px;\"><span style=\"font-weight: 700; display: inline-block; font-size: 13px; margin-bottom: 4px; width: 260.656px;\"><span aria-hidden=\"true\" class=\"fa fa-fw fa-hospital-o\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit; width: 1.28571em; left: 0px; position: absolute; top: 4px;\"></span>Nơi công tác</span> <span style=\"color: rgb(119, 119, 119); display: inline-block; font-size: 12px; margin-right: 4px; position: relative; width: 260.656px;\"><a href=\"https://www.vinmec.com/khoa-lien-chuyen-khoa-benh-vien-da-khoa-quoc-te-vinmec-times-city-29404/rang-ham-mat\" target=\"_blank\" style=\"color: rgb(119, 119, 119); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all;\">Khoa Liên Chuyên Khoa - Bệnh viện Đa khoa Quốc tế Vinmec Times City</a></span></div></div><a href=\"https://www.vinmec.com/danh-sach/bac-si/le-thi-phuong-thao-51205/mat\" style=\"color: rgb(0, 102, 166); transition-duration: 0.1s; transition-timing-function: ease; transition-property: all; font-size: 13px; float: right;\">Xem đầy đủ <span aria-hidden=\"true\" class=\"fa fa-angle-right\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit;\"></span></a></div></div><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Bệnh viêm kết mạc do virus (đau mắt đỏ) là tình trạng xảy ra viêm ở lớp màng trong suốt trên bề mặt của nhãn cầu (lòng trắng) và kết mạc mi. Bệnh gây đau, sưng, ngứa, đỏ mắt, chảy nước mắt, mắt nhiều gỉ, có thể giảm thị lực... Bệnh dễ lây lan, đặc biệt là vào mùa hè, có thể bùng phát thành ổ dịch lớn trong thời gian ngắn. Bất cứ ai cũng có thể mắc bệnh, từ trẻ em, người lớn tới người già. Cơ thể con người không sản sinh ra miễn dịch trọn đời với bệnh viêm kết mạc, vì thế mỗi người có thể bị viêm kết mạc nhiều lần.</span></p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">1. Viêm kết mạc có phải là đau mắt đỏ không?</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Viêm kết mạc do virus hay dân gian còn gọi là đau mắt đỏ. Bệnh do virus nhóm Adeno gây ra. Virus có thể tồn tại trên bề mặt các đồ dùng, dụng cụ trong vòng 35 ngày, có thể lây qua việc tiếp xúc với nước bọt, gỉ mắt của người bệnh... Vì thế, bệnh rất dễ lây nhiễm, nhất là với những người trong cùng gia đình, người thường xuyên tiếp xúc với người bệnh.</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">2. Triệu chứng, biểu hiện của bệnh viêm kết mạc do virus</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Có thể sốt nhẹ, đau họng, có thể nổi hạch, mắt đỏ có thể 1 hoặc 2 mắt, nhiều gỉ mắt, cảm giác mắt cộm rát, nóng và ngứa, sợ ánh sáng.... Thậm chí có bệnh nhân còn bị chảy nước mắt, thị lực giảm.</p></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">3. Điều trị</h2><figure class=\"post-image full has-zoomable loaded-img\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center;\"><img alt=\"nhỏ mắt\" class=\"full uploaded\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20190502_035525_994935_nho_mat.max-1800x1800.jpg\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20190502_035525_994935_nho_mat.max-1800x1800.jpg\" lazy=\"loaded\" style=\"border: 0px; max-width: 100%; opacity: 1; border-radius: 5px; width: 420px;\"><figcaption class=\"caption\" style=\"font-size: 12px; margin: 10px auto 0px;\"><div class=\"rich-text\">Không tự ý sử dụng các loại thuốc điều trị viêm kết mạc khi chưa được sự hướng dẫn của bác sĩ</div></figcaption></figure><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">Khi có các triệu chứng mắt biểu hiện bất thường, người bệnh nên đi khám bác sĩ mắt ngay để kịp thời điều trị, tránh những biến chứng nếu để muộn. Tuyệt đối không tự điều trị theo các cách truyền miệng, hoặc trên mạng, không xông lá trầu, không xông các loại lá, không đắp hành củ, không nhỏ sữa mẹ... vào mắt. Không tự mua thuốc điều trị khi không có chỉ định của bác sĩ vì có thể sẽ làm bệnh nặng hơn. Việc điều trị không đúng bệnh, không đúng thuốc dẫn tới những hậu quả khôn lường: Giảm thị lực, viêm loét giác mạc, thậm chí mù lòa.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Đối với bệnh viêm kết mạc do virus cần điều trị toàn thân và điều trị tại mắt</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Điều trị toàn thân</span></p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\">Ăn uống đủ chất dinh dưỡng: Tinh bột, chất xơ, chất đạm, chất béo. Không nên kiêng khem quá mức dẫn đến suy nhược cơ thể khiến bệnh lâu khỏi. Cần nâng cao thể trạng, miễn dịch cơ thể: Có thể uống bổ sung vitamin tổng hợp hoặc các loại sinh tố trái cây cam, chanh, bưởi... trừ những thức ăn cơ thể người bệnh có tiền sử dị ứng.</li><li style=\"margin: 0px 0px 15px;\">Nên đeo khẩu trang y tế. Nên cách ly hợp lý vì bệnh lây qua đường tiếp xúc</li><li style=\"margin: 0px 0px 15px;\">Ngủ đủ giấc để mắt có đủ thời gian nghỉ ngơi giúp bệnh mau lành</li><li style=\"margin: 0px 0px 15px;\">Hạn chế tối đa các thiết bị điện tử trong thời gian bị bệnh</li><li style=\"margin: 0px 0px 15px;\">Nên đeo kính chắn gió, bụi. Tránh tiếp xúc với các loại khói: khói hương, khói bếp, khói than củi, khói xe vì dễ gây kích thích cho mắt....</li><li style=\"margin: 0px 0px 15px;\">Tránh bơi hoặc dây nước bẩn vào mắt bị bệnh</li><li style=\"margin: 0px 0px 15px;\">Không day, dụi mắt vì sẽ làm tổn thương giác mạc (tròng đen) sẽ ảnh hưởng đến thị lực và bệnh trở nên nghiêm trọng hơn.</li></ul><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"><span style=\"font-weight: 700;\">Điều trị tại mắt</span></p><ul style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 20px;\"><li style=\"margin: 0px 0px 15px;\">Dùng thuốc điều trị theo đơn đã kê của bác sĩ mắt, tùy tình trạng bệnh và các tổn thương tại mắt mà bác sĩ sẽ kê đơn phù hợp đối với từng bệnh nhân như kháng sinh, kháng viêm, nước mắt nhân tạo... Thuốc tra mắt có thể là dạng nước, dạng hỗn dịch, dạng mỡ, hoặc gel</li><li style=\"margin: 0px 0px 15px;\">Cần tuân thủ thời gian, liều lượng, số lần dùng thuốc theo đúng chỉ định của bác sĩ</li><li style=\"margin: 0px 0px 15px;\">Tuân thủ đúng cách tra thuốc: Không chạm đầu thuốc vào mắt. Đối với thuốc nước nhỏ từ 1-2 giọt; thuốc mỡ, gel khoảng 1cm vào cùng đồ mi dưới. Tránh tra ra ngoài mắt gây lèm nhèm, khó chịu.</li><li style=\"margin: 0px 0px 15px;\">Luôn khám lại theo lịch hẹn của bác sĩ để kiểm soát tiến triển của bệnh. Nếu có những bất thường như các triệu chứng mắt nặng hơn, đau hơn, sưng hơn, chảy nước hồng, chảy máu hoặc dùng thuốc thấy có bất thường cần phải khám lại ngay hoặc gọi điện thoại cho bác sĩ của bạn để được tư vấn kịp thời.</li></ul></div><h2 style=\"font-family: Helvetica, Arial, san-serif; font-weight: 500; line-height: 1.3; color: inherit; margin-bottom: 10px; font-size: 27px;\">4. Phòng bệnh viêm kết mạc do virus</h2><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Giữ gìn vệ sinh cá nhân và mắt sạch sẽ, rửa mắt bằng nước muối sinh lý 0.9% hàng ngày.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Dùng khăn riêng. Cần rửa tay sạch sẽ bằng xà phòng sau khi đụng chạm vào đồ dùng công cộng hoặc nguy cơ tiếp xúc với người bệnh.</p></div><figure class=\"post-image full has-zoomable loaded-img\" style=\"margin: 10px auto; clear: both; cursor: pointer; position: relative; width: auto; max-width: 420px; text-align: center;\"><img alt=\"rửa tay sạch sẽ bằng xà phòng\" class=\"full uploaded\" data-src=\"https://vinmec-prod.s3.amazonaws.com/images/20190502_035814_677169_rua_tay.max-1800x1800.jpg\" src=\"https://vinmec-prod.s3.amazonaws.com/images/20190502_035814_677169_rua_tay.max-1800x1800.jpg\" lazy=\"loaded\" style=\"border: 0px; max-width: 100%; opacity: 1; border-radius: 5px; width: 420px;\"><figcaption class=\"caption\" style=\"font-size: 12px; margin: 10px auto 0px;\"><div class=\"rich-text\">Rửa tay sạch sẽ bằng xà phòng</div></figcaption></figure><div class=\"rich-text\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\"></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Tránh để nước bẩn, bụi hoặc các loại hóa chất (dầu gội, sữa tắm...) dính vào mắt</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Ăn uống đủ chất dinh dưỡng, bổ sung vitamin C từ các loại trái cây</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Hạn chế tiếp xúc tại nơi công cộng, tránh bệnh lây lan. Nên đeo khẩu trang y tế nhất là khi vào mùa dịch.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Nếu đi bơi nên chọn những bể bơi sạch, đạt tiêu chuẩn. Chú ý sử dụng kính bơi và ngay sau khi bơi nên rửa mắt nhiều bằng dung dịch nước muối sinh lý NaCl 0.9%.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Đặc biệt đối với người nhà bệnh nhân đau mắt đỏ: Phòng bệnh như đã nêu trên, tuyệt đối không tự động dùng cùng thuốc của người bệnh hoặc khác thuốc để phòng trước mặc dù mắt không có triệu chứng hoặc có triệu chứng mà chưa được khám bác sĩ. Thực hiện được chế độ cách ly qua đường tiếp xúc vẫn là tốt nhất. Ví dụ: Đeo khẩu trang kể cả ở trong nhà, không ôm hôn người khác - đặc biệt là các em bé, rửa tay bằng xà phòng hoặc bằng dung dịch sát khuẩn tay nhanh trước vào sau khi nhỏ thuốc mắt hoặc động vào mắt bệnh.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px;\">● Vệ sinh nhà cửa sạch sẽ, mở cửa thông gió. Giữ gìn môi trường sống sạch sẽ thì nguy cơ mắc bệnh truyền nhiễm cộng đồng sẽ giảm.</p></div></div></div></div>\">', 'uploads/articles/benh3.jpg', 6, '2019-12-23 01:46:52', '2019-12-23 01:47:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_time` int(11) UNSIGNED DEFAULT NULL,
  `id_khoa` int(11) UNSIGNED DEFAULT NULL,
  `id_doctor` int(11) UNSIGNED DEFAULT NULL,
  `id_patient` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('nam','nu') COLLATE utf8mb4_unicode_ci DEFAULT 'nam',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `book_date` date DEFAULT NULL,
  `count_destroy` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`id`, `id_time`, `id_khoa`, `id_doctor`, `id_patient`, `email`, `phone`, `name`, `birthday`, `gender`, `note`, `book_date`, `count_destroy`, `email_verified_at`, `status`, `created_at`, `updated_at`) VALUES
(99, 1, 1, NULL, NULL, 'duongth52@wru.vn', '09780196999', 'Trịnh Hồng Dương', '2019-12-01', 'nu', 'Đau nhức tai.', '2019-12-26', NULL, NULL, '1', '2019-12-25 00:42:49', '2019-12-25 00:42:49'),
(100, 1, 1, NULL, NULL, 'datnv1997@gmail.com', '09780196999', 'Nguyễn Văn Đạt', '2019-12-02', 'nu', 'Đau đầu', '2019-12-26', NULL, NULL, '1', '2019-12-25 00:44:22', '2019-12-25 00:44:22'),
(101, 2, 1, NULL, NULL, 'cuccuhuhu@gmail.com', '0907866656', 'Lê Thế Anh Nhân', '2019-12-02', 'nam', 'Đau tai', '2019-12-26', NULL, NULL, '1', '2019-12-25 00:45:29', '2019-12-25 00:45:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `images`, `created_at`, `updated_at`) VALUES
(5, 'Tin nổi bật', 'không có mô tả', '', '2019-12-15 23:50:09', '2019-12-15 23:50:09'),
(6, 'Tin tức', 'no mô tả', '', '2019-12-16 00:35:22', '2019-12-16 00:35:22'),
(7, 'bác sĩ', 'bac sinh -nhan vien', '', '2019-12-16 00:41:58', '2019-12-22 11:52:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nhi', NULL, '2019-11-23 15:26:29', NULL),
(2, 'Sản', NULL, '2019-11-23 15:26:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_11_16_162757_create_khoa_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patient`
--

CREATE TABLE `patient` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('nam','nu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nam',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `patient`
--

INSERT INTO `patient` (`id`, `name`, `phone`, `birthday`, `address`, `description`, `email`, `password`, `gender`, `email_verified_at`, `status`, `created_at`, `updated_at`) VALUES
(3, 'nguyễn Đức vũ', '0978019996', '2019-12-01', 'nguyễn Đức vũ', 'Tiểu sử: Đau dạ dày', 'vund52@wru.vn', '$2y$10$DsO4E.yQTFJAhs.9EhYeA.R2fHwIO7WkOeK8A7Czx3I9vTf8ohFFq', 'nu', NULL, '1', '2019-12-17 11:30:32', '2019-12-25 01:09:36'),
(5, 'Hong Duong', '09780196999', '2019-12-02', 'Nguyễn Cảnh Dị', 'Tiểu sử: dị ứng thời tiết', 'datnv1997@gmail.com', '$2y$10$pJQKe5qnbRWPWbkq4QLvD.k3SG42JMT87fEaZzTigZd0oUBbIbD/u', 'nam', NULL, '1', '2019-12-20 09:00:36', '2019-12-25 01:10:43'),
(8, 'Ngyễn Văn Đạt', '09867821221', '2019-12-05', 'Tam Trinh', NULL, 'datnv@gmail.com', '$2y$10$ASLzhvjLm16kR/Jo3f2VxemzsZNtDJCsNptpsal7/.Kqn/AUlv2LC', 'nam', NULL, '1', '2019-12-25 01:11:44', '2019-12-25 01:11:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result`
--

CREATE TABLE `result` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_doctor` int(11) UNSIGNED DEFAULT NULL,
  `id_patient` int(11) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_result` text COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `prescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `result`
--

INSERT INTO `result` (`id`, `id_doctor`, `id_patient`, `description`, `content_result`, `prescription`, `status`, `created_at`, `updated_at`) VALUES
(2, 9, 3, 'Viêm tai giữa', 'tên bệnh sa', '<p>đơn thuốc A</p>', '1', '2019-12-19 09:22:01', '2019-12-25 00:35:55'),
(16, 9, 3, 'Đau mắt đỏ', 'gggggh', '<p>hgyg</p>', '1', '2019-12-21 23:51:52', '2019-12-25 00:36:14'),
(17, 9, 3, 'viêm họng', 'iu', '<p>yuy7gh</p>', '1', '2019-12-21 23:52:47', '2019-12-25 00:36:51'),
(20, 9, 3, 'Sốt xuất huyết', 'sadÁ', '<p>DSAFDS</p>', '1', '2019-12-21 23:55:07', '2019-12-25 00:37:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timeslot`
--

CREATE TABLE `timeslot` (
  `id` int(1) UNSIGNED NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `timeslot`
--

INSERT INTO `timeslot` (`id`, `time`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, '8:00', 10, '1', '2019-11-28 15:35:46', NULL),
(2, '10:00', 10, '1', '2019-11-28 15:36:14', NULL),
(3, '11:00', 10, '1', '2019-12-01 17:13:30', NULL),
(4, '13:00', 10, '1', '2019-12-01 17:13:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_khoa` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('nam','nu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nam',
  `role` enum('superadmin','admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `id_khoa`, `name`, `phone`, `birthday`, `image`, `address`, `email`, `gender`, `role`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, NULL, 'Nguyễn Đức Vũ', '0978029699', '2019-12-10', NULL, NULL, 'nguyen@gmaill.com', 'nam', 'superadmin', NULL, '$2y$10$WZjL3jg9P7lYXFyypPT3TOlBwVzblqjwjHHNXQF68X276DhZISvna', '1', NULL, NULL, '2019-12-25 01:03:12'),
(9, NULL, 'Hong Duong', NULL, NULL, NULL, NULL, 'duongth@gmail.com', 'nam', 'superadmin', NULL, '$2y$10$m1dHUF0Ays2vqwC8RRvKK.wW7L5ol20Gw9sQHgB6vVmXrgWvt3Ed.', '1', NULL, '2019-12-10 10:05:35', '2019-12-10 10:05:35'),
(12, NULL, 'Trịnh Hồng Dương', '09780196999', '2028-12-19', NULL, 'Hà Nội', 'duongth180297@gmail.com', 'nam', 'user', NULL, NULL, '1', NULL, '2019-12-22 11:30:54', '2019-12-25 01:03:29'),
(13, NULL, 'Đỗ Minh Hiếu', '09780196999', '2015-12-19', NULL, 'Hà Nội', 'datnv1997@gmail.com', 'nam', 'user', NULL, NULL, '1', NULL, '2019-12-24 13:32:11', '2019-12-25 01:03:53');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles-categoris` (`categoryIds`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_doctor` (`id_doctor`),
  ADD KEY `booking-timeslot` (`id_time`),
  ADD KEY `booking_khoa` (`id_khoa`),
  ADD KEY `booking_patient` (`id_patient`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_doctor` (`id_doctor`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Chỉ mục cho bảng `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles-categoris` FOREIGN KEY (`categoryIds`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking-timeslot` FOREIGN KEY (`id_time`) REFERENCES `timeslot` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_doctor` FOREIGN KEY (`id_doctor`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_khoa` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `id_doctor` FOREIGN KEY (`id_doctor`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `id_patient` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
