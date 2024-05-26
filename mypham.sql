-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2024 lúc 02:23 PM
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
-- Cơ sở dữ liệu: `mypham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_password` varchar(100) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_phone` varchar(20) NOT NULL,
  `account_type` int(11) NOT NULL,
  `account_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_password`, `account_email`, `account_phone`, `account_type`, `account_status`) VALUES
(1, 'Admin', '25d55ad283aa400af464c76d713c07ad', 'admin@gmail.com', '0987654321', 2, 0),
(2, 'hung', 'e10adc3949ba59abbe56e057f20f883e', 'hung@gmail.com', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_author` varchar(100) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_summary` text NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(100) NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`article_id`, `article_author`, `article_title`, `article_summary`, `article_content`, `article_image`, `article_date`, `article_status`) VALUES
(1, 'Test', 'Làm đẹp da cực dễ dàng nếu nàng nắm được 3 bí kíp', '<p><em>Đ&atilde; mang danh l&agrave; &quot; Ph&aacute;i Đẹp&quot; n&ecirc;n c&aacute;c c&ocirc; g&aacute;i đều mong muốn muốn xinh tươi hết mức c&oacute; thể trong mắt người đối diện. Đ&acirc;y &acirc;u cũng l&agrave; điều dễ hiểu. Tuy nhi&ecirc;n trong c&ocirc;ng cuộc l&agrave;m đẹp, kh&ocirc;ng &iacute;t lần c&aacute;c c&ocirc; g&aacute;i cảm thấy nản l&ograve;ng v&agrave; thiếu ki&ecirc;n nhẫn. H&atilde;y nắm vững c&aacute;c b&iacute; quyết sau đ&acirc;y để l&agrave;m đẹp, c&aacute;c n&agrave;ng nh&eacute;!&nbsp;</em></p>\r\n', '<h3><strong>Dinh Dưỡng</strong></h3>\r\n\r\n<p>L&agrave;n da l&agrave; sự phản &aacute;nh của sức khỏe b&ecirc;n trong mỗi người ch&uacute;ng ta. N&ecirc;n nếu bạn lơ l&agrave; trong việc dinh dưỡng cũng như c&oacute; chế độ sinh hoạt nghỉ ngơi hợp l&iacute; th&igrave; l&agrave;n da sẽ b&aacute;o động nh&eacute; Một chế độ ăn qu&aacute; nhiều đồ ngọt kh&ocirc;ng chỉ khiến ban b&eacute;o l&ecirc;n tr&ocirc;ng thấy m&agrave; c&ograve;n l&agrave;m da dễ d&agrave;ng sinh mụn hơn. Việc thuộc nằm l&ograve;ng c&aacute;c loại thức ăn l&agrave;m đẹp da c&ograve;n gi&uacute;p bạn kiến tạo sức khỏe cũng như v&oacute;c d&aacute;ng ng&agrave;y một đẹp hơn. C&ograve;n chần chờ g&igrave; nữa, h&atilde;y ch&uacute; &yacute; đến chế độ ăn ph&ugrave; hợp cho từng loại da:</p>\r\n\r\n<p><strong>Đối với l&agrave;n da nhờn dễ sinh mụn:</strong></p>\r\n\r\n<p>- H&atilde;y kết th&acirc;n với kẽm ( c&oacute; nhiều trong h&agrave;u, thịt b&ograve; nạc, gan nấu ch&iacute;n).</p>\r\n\r\n<p>- C&aacute;c kho&aacute;ng chất như Magi&ecirc;, vitamin A, B6 cũng gi&uacute;p ngừa mụn tốt hơn. H&atilde;y ch&uacute; &yacute; ăn c&aacute;c loại rau củ quả c&oacute; m&agrave;u xanh đậm như b&ocirc;ng cải xanh, rau muống, ớt chu&ocirc;ng, c&agrave; rốt. Nếu th&iacute;ch ăn c&aacute;c loại hải sản th&igrave; h&atilde;y ăn sản phẩm chế biến vừa phải như hấp, luộc. Điều n&agrave;y gi&uacute;p giữ lại nguồn dưỡng chất cũng như tr&aacute;nh việc lạm d&ugrave;ng dầu mỡ.</p>\r\n\r\n<p><strong>Đối với l&agrave;n da kh&ocirc;:</strong></p>\r\n\r\n<p>- H&atilde;y ch&uacute; &yacute; bổ sung vitamin E. Vitamin E c&oacute; nhiều trong đậu phộng, bơ, c&aacute;c loại đậu.</p>\r\n\r\n<p>- Dầu c&aacute; omega 3 c&oacute; trong c&aacute;c loại c&aacute; biển như c&aacute; hồi, mỡ c&aacute;. Omega-6 trong c&aacute;c loại hạt. Selenium,&nbsp;Isoflavones c&oacute; trong đậu n&agrave;nh. C&aacute;c chất n&agrave;y đều tốt cho sức khỏe l&agrave;n da, m&aacute;i t&oacute;c, v&agrave; kể cả sức khỏe thị gi&aacute;c.</p>\r\n\r\n<p>C&aacute;c n&agrave;ng nhớ c&acirc;n bằng chế độ dinh dưỡng nh&eacute;. C&aacute;c loại hoa quả tươi gi&agrave;u chất chống oxy h&oacute;a cũng sẽ rất tốt cho l&agrave;n da.</p>\r\n', '1684338205_problem-perfumes-natural-alternatives.jpg', '2024-04-07', 1),
(2, 'Thanh Thanh', 'Hãy nắm vững những bí kíp này để tránh chọn sai mỹ phẩm.', '<p><em>Y&ecirc;u c&aacute;i đẹp l&agrave; thưởng thức, tạo ra c&aacute;i đẹp l&agrave; nghệ thuật.&nbsp;&nbsp;</em></p>\r\n', '<h3><strong>H&atilde;y nắm vững những b&iacute; k&iacute;p n&agrave;y để tr&aacute;nh chọn sai mỹ phẩm</strong></h3>\r\n\r\n<p>Nếu chị em ta được lấy lại sồ tiền để bỏ ra cho việc mua c&aacute;c sản phẩm trang điểm kh&ocirc;ng ph&ugrave; hợp m&agrave;u da, c&oacute; thể ch&uacute;ng ta đ&atilde; trở n&ecirc;n rất gi&agrave;u c&oacute;. Việc kiểm tra m&agrave;u sắc-&nbsp;&nbsp;swatching kh&ocirc;ng phải l&uacute;c n&agrave;o cũng dễ d&agrave;ng - sự kết hợp giữa &aacute;nh s&aacute;ng tốt, vị tr&iacute; v&agrave; mắt nh&igrave;n sắc sảo l&agrave; điều cần thiết để chọn m&agrave;u sắc ph&ugrave; hợp với bạn. Kh&ocirc;ng phải l&uacute;c n&agrave;o v&ugrave;ng ph&iacute;a sau c&aacute;nh tay cũng l&agrave; v&ugrave;ng swatch tốt nhất. V&igrave; vậy, ch&uacute;ng t&ocirc;i đ&atilde; phải mời Chuy&ecirc;n gia trang điểm Sephora Pro Shawn Lumaban chia sẻ những lời khuy&ecirc;n chuy&ecirc;n m&ocirc;n của m&igrave;nh. Kiểm tra ch&uacute;ng trong b&agrave;i viết sau.</p>\r\n\r\n<h3><strong>Son M&ocirc;i</strong></h3>\r\n\r\n<p>Cho d&ugrave; bạn l&agrave; người say m&ecirc; son m&ocirc;i hay người mới, bạn c&oacute; thể nhận thấy rằng son trong thỏi thường sẽ kh&ocirc;ng giống nhau khi thoa l&ecirc;n m&ocirc;i. Đ&oacute; l&agrave; l&yacute; do tại sao việc swatch son hay kiểm tra c&aacute;c mẫu m&agrave;u l&agrave; rất quan trọng để t&igrave;m ra ứng cử vi&ecirc;n s&aacute;ng gi&aacute;.&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; lựa chọn tốt nhất để kiểm tra son tr&ecirc;n m&ocirc;i thực tế của bạn, nhưng kh&ocirc;ng phải l&uacute;c n&agrave;o cũng c&oacute; thể l&agrave;m c&aacute;ch n&agrave;y.&nbsp; V&igrave; vậy, b&agrave;n tay của bạn l&agrave; lựa chọn tốt tiếp theo. Nhưng tr&aacute;i với những g&igrave; bạn c&oacute; thể đ&atilde; được dạy trong qu&aacute; khứ, cổ tay hoặc mu b&agrave;n tay của bạn kh&ocirc;ng phải l&agrave; vị tr&iacute; ph&ugrave; hợp.&nbsp;</p>\r\n\r\n<p>Lumaban cho biết m&agrave;u swatch son tr&ecirc;n khu vực hơi hồng của đầu ng&oacute;n tay của bạn thực sự l&agrave; nơi tốt nhất để kiểm tra son m&ocirc;i. &quot;N&oacute; c&oacute; m&agrave;u sắc tương tự như đ&ocirc;i m&ocirc;i của ch&uacute;ng ta,&quot; anh giải th&iacute;ch. &quot;Sau đ&oacute;, sau khi xem, bạn c&oacute; thể giữ ng&oacute;n tay tr&ecirc;n m&ocirc;i để xem m&agrave;u son c&oacute; hợp với m&agrave;u da của bạn kh&ocirc;ng v&agrave; dễ d&agrave;ng cảm nhận kết cấu v&agrave; lớp son khi kh&ocirc; lại.</p>\r\n\r\n<h3><strong>Kem nền v&agrave; kem che khuyết điểm.&nbsp;&nbsp;</strong></h3>\r\n\r\n<p>Thay v&igrave; kiểm tra phấn nền hoặc kem che khuyết điểm ở mu b&agrave;n tay, h&atilde;y thoa một ch&uacute;t sản phẩm dọc theo phần dưới của m&aacute; đến đường viền h&agrave;m của bạn.C&aacute;ch n&agrave;y sẽ gi&uacute;p bạn xem liệu phấn nền c&oacute; ph&ugrave; hợp với t&ocirc;ng m&agrave;u da cổ v&agrave; mặt của bạn kh&ocirc;ng. V&igrave; bạn muốn kem nền sẽ tiệp m&agrave;u cả mặt v&agrave; cổ.</p>\r\n\r\n<p>Lumaban cho biết th&ecirc;m rằng &aacute;nh s&aacute;ng tổng hợp trong hầu hết c&aacute;c cửa h&agrave;ng c&oacute; thể đ&aacute;nh lừa thị gi&aacute;c. Do đ&oacute; h&atilde;y nh&igrave;n v&agrave;o phấn nền hoặc kem che khuyết điểm dưới &aacute;nh s&aacute;ng tự nhi&ecirc;n l&agrave; v&ocirc; c&ugrave;ng quan trọng. &quot;Điều n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể chỉ cần một cửa sổ, hoặc tốt hơn nữa, b&ecirc;n ngo&agrave;i v&agrave;o ban ng&agrave;y,&quot; Lumaban n&oacute;i.</p>\r\n', '1713189759_q3.jpg', '2024-04-15', 1),
(3, 'Thanh Thanh', 'Thành phần cấu tạo của mỹ phẩm', '<p><em>Một số th&agrave;nh phần cấu tạo của mỹ phẩm, chọn mỹ phẩm theo th&agrave;nh phần. Sản phẩm ph&ugrave; hợp với l&agrave;n da.</em></p>\r\n', '<h3><strong>Th&agrave;nh phần cấu tạo&nbsp;của mỹ phẩm</strong></h3>\r\n\r\n<p>Hiện nay, c&oacute; h&agrave;ng ng&agrave;n lại mỹ phẩm kh&aacute;c nhau tr&ecirc;n thị trường, tất cả ch&uacute;ng đều c&oacute; c&aacute;ch phối hợp th&agrave;nh phần kh&aacute;c nhau. Ri&ecirc;ng tại Mỹ đ&atilde; c&oacute; khoảng 12,500 loại h&oacute;a chất được cho ph&eacute;p sử dụng trong sản xuất c&aacute;c sản phẩm chăm s&oacute;c cơ thể.<br />\r\nMột sản phẩm c&oacute; thể chứ từ 15 đến 50 th&agrave;nh phần. Một ng&agrave;y mỗi phụ nữ c&oacute; thể sử dụng từ 9-15 sản phẩm chăm s&oacute;c cơ thể, nếu t&iacute;nh lu&ocirc;n nước hoa, mỗi ng&agrave;y c&oacute; khoảng 515 chất h&oacute;a học tiếp x&uacute;c với da họ th&ocirc;ng qua việc sử dụng mỹ phẩm.&nbsp;</p>\r\n\r\n<p>Nhưng ch&iacute;nh x&aacute;c l&agrave; ch&uacute;ng ta đ&atilde; đưa những g&igrave; l&ecirc;n da m&igrave;nh? Những c&aacute;i t&ecirc;n d&agrave;i tr&ecirc;n nh&atilde;n th&agrave;nh phần c&oacute; nghĩa l&agrave; g&igrave; v&agrave; n&oacute; c&oacute; t&aacute;c dụng như thế n&agrave;o? Mặc d&ugrave; mỗi sản phẩm đều c&oacute; c&ocirc;ng thức kh&aacute;c nhau, nhưng hầu như c&aacute;c mỹ phẩm chứa những th&agrave;nh phần th&ocirc;ng dụng sau: nước, chất nhũ h&oacute;a, chất bảo quản, chất l&agrave;m đặc, chất l&agrave;m mềm da, phẩm m&agrave;u, m&ugrave;i hương v&agrave; chất ổn định pH.</p>\r\n\r\n<h3><strong>Nước</strong></h3>\r\n\r\n<p>Nếu sản phẩm của bạn đựng trong chai, rất c&oacute; khả năng l&agrave; th&agrave;nh phần đầu ti&ecirc;n trong list sẽ l&agrave; nước. H2O l&agrave; dạng nước cơ bản xuất hiện hầu như trong tất cả c&aacute;c mỹ phẩm bao gồm kem, lotion, makeup, lăn khử m&ugrave;i, dầu gội đầu v&agrave; dầu xả. Nước đ&oacute;ng một vai tr&ograve; quan trọng trong qu&aacute; tr&igrave;nh b&agrave;o chế, như l&agrave; một chất h&ograve;a tan, h&ograve;a tan c&aacute;c th&agrave;nh phần kh&aacute;c v&agrave; gi&uacute;p đồng nhất nhũ tương.</p>\r\n\r\n<p>Nước được sử dụng trong mỹ phẩm kh&ocirc;ng giống như nước m&agrave; bạn sử dụng từ v&ograve;i h&agrave;ng ng&agrave;y. N&oacute; phải l&agrave; nước si&ecirc;u tinh khiết nghĩa l&agrave; kh&ocirc;ng c&oacute; vi khuẩn, chất độc hoặc c&aacute;c chất &ocirc; nhiễm kh&aacute;c. Bởi l&yacute; do đ&oacute; m&agrave; tr&ecirc;n nh&atilde;n ch&uacute;ng ta thường thấy nước cất, nước tinh khiết hoặc aqua.</p>\r\n\r\n<h3><strong>Chất nhũ h&oacute;a</strong></h3>\r\n\r\n<p>Chất nhũ h&oacute;a l&agrave; những chất gi&uacute;p giữ c&aacute;c th&agrave;nh phần kh&ocirc;ng giống nhau (như l&agrave; dầu v&agrave; nước) kh&ocirc;ng bị t&aacute;ch lớp. Rất nhiều mỹ phẩm được sản xuất dựa tr&ecirc;n sự nhũ h&oacute;a nghĩa l&agrave; một lượng nhỏ dầu ph&acirc;n t&aacute;n v&agrave;o nước hoặc l&agrave; một lượng nhỏ nước ph&acirc;n t&aacute;n trong dầu. V&igrave; dầu v&agrave; nước kh&ocirc;ng h&ograve;a lẫn v&agrave;o nhau d&ugrave; cho bạn ra sức lắc, trộn hoặc khuấy như thế n&agrave;o đi nữa.</p>\r\n\r\n<p>Chất nhũ h&oacute;a được th&ecirc;m v&agrave;o hỗn hợp đ&oacute; để thay đổi sức căng bề mặt giữa dầu v&agrave; nước, tại ra một thể đồng nhất. C&aacute;c chất nhũ h&oacute;a thường được sử dụng trong mỹ phẩm như l&agrave; polusorbate, laureth-4 v&agrave; kali cetyl sulfate</p>\r\n\r\n<h3><strong>Chất bảo quản</strong></h3>\r\n\r\n<p>Chất bảo quản l&agrave; một th&agrave;nh phần rất quan trọng. Chất bảo quản được th&ecirc;m v&agrave;o mỹ phẩm để k&eacute;o d&agrave;i thời gian sử dụng của sản phẩm v&agrave; ngăn ngừa sự ph&aacute;t triển của c&aacute;c vi sinh vật như l&agrave; vi khuẩn, nấm những t&aacute;c nh&acirc;n c&oacute; thể l&agrave;m hư hỏng sản phẩm v&agrave; g&acirc;y hại cho người sử dụng. V&igrave; hầu hết vi sinh vật đều sống trong m&ocirc;i trường nước n&ecirc;n c&aacute;c chất bảo quản được sử dụng cũng phải tan trong nước.</p>\r\n\r\n<p>C&aacute;c chất bảo quản sử dụng trong mỹ phẩm c&oacute; thể l&agrave; tự nhi&ecirc;n hoặc nh&acirc;n tạo v&agrave; được sử dụng dưới c&aacute;c dạng kh&aacute;c nhau t&ugrave;y v&agrave;o c&ocirc;ng thức của sản phẩm. Một số y&ecirc;u cấu nồng độ trong khoảng 0,01% trong khi một số kh&aacute;c lại cao hơn 5%. Một số chất bảo quản thường được sử dụng l&agrave; paraben, benzyl alcohol, acid salicylic, formaldehyde v&agrave; tetrasodium EDTA.</p>\r\n\r\n<p>Người ti&ecirc;u d&ugrave;ng khi mua những sản phẩm &ldquo;kh&ocirc;ng c&oacute; chất bảo quản&rdquo; cần biết rằng những sản phẩm n&agrave;y c&oacute; hạn sử dụng rất ngắn v&agrave; cần lưu &yacute; khi c&oacute; bất cứ thay đổi n&agrave;o xảy ra về m&agrave;u sắc, m&ugrave;i&hellip;</p>\r\n\r\n<h3><strong>Chất l&agrave;m đặc</strong></h3>\r\n\r\n<p>C&aacute;c chất l&agrave;m đặc gi&uacute;p cho sản phẩm c&oacute; một độ đặc đồng nhất nhất định. Ch&uacute;ng c&oacute; thể thuộc 4 nh&oacute;m sau:</p>\r\n\r\n<p>Chất l&agrave;m đặc lipid thường c&oacute; dạng rắn ở nhiệt độ ph&ograve;ng nhưng c&oacute; thể ở dạng lỏng v&agrave; c&oacute; thể th&ecirc;m v&agrave;o c&aacute;c mỹ phẩm dạng nhũ tương. Ch&uacute;ng hoạt động bằng c&aacute;ch đưa thể trạng đặc tự nhi&ecirc;n của ch&uacute;ng v&agrave;o c&ocirc;ng thức b&agrave;o chế. Một số chất l&agrave;m đặc như cetyl alcohol, acid stearic v&agrave; s&aacute;p carnauba.</p>\r\n\r\n<p>Chất l&agrave;m đặc từ tự nhi&ecirc;n, ch&uacute;ng l&agrave; c&aacute;c polymer tan trong nước, trương phồng l&ecirc;n v&agrave; l&agrave;m tăng độ nhớt của sản phẩm. Mốt số chất như l&agrave; hydroxyethyl cellulose, guar gum, xanthan gum v&agrave; gelatin. C&aacute;c loại mỹ phẩm qu&aacute; đặc c&oacute; thể được pha lo&atilde;ng với dung m&ocirc;i như l&agrave; nước hoặc alcohol.</p>\r\n\r\n<p>Chất kho&aacute;ng l&agrave;m đặc cũng c&oacute; nguồn gốc tự nhi&ecirc;n, cũng giống như những chất l&agrave;m đặc kh&aacute;c, ch&uacute;ng tan trong nước v&agrave; dầu l&agrave;m tăng độ nhớt của sản phẩm nhưng đem lại một kết quả kh&aacute;c với khi sử dụng gum. Một số chất kho&aacute;ng l&agrave;m đặc th&ocirc;ng thường như magnesium aluminium silicate, silica v&agrave; bentonite.</p>\r\n\r\n<p>Nh&oacute;m cuối c&ugrave;ng l&agrave; chất l&agrave;m đặc tổng hợp. Ch&uacute;ng thường được sử dụng trong c&aacute;c sản phẩm lotion v&agrave; kem. Những chất l&agrave;m đặc nh&acirc;n tạo phổ biến như carbomer, polymer acid acrylic tan trong nước v&agrave; c&oacute; thể sử dụng trong c&aacute;c gel l&agrave;m sạch da. Một số chất l&agrave;m đặc kh&aacute;c như cetyl palmitate v&agrave; ammonium acryloyldimethyltaurate.</p>\r\n\r\n<h3><strong>Chất l&agrave;m mềm</strong></h3>\r\n\r\n<p>C&aacute;c chất l&agrave;m mềm da bằng c&aacute;ch ngăn mất nước. Ch&uacute;ng được sử dụng trong nhiều sản phẩm như l&agrave; son m&ocirc;i, lotion v&agrave; kem. Một số chất l&agrave;m mềm từ tự nhi&ecirc;n v&agrave; tổng hợp như l&agrave; s&aacute;p ong, dầu oliu, dầu dừa v&agrave; lanoin, petrolatum, dầu kho&aacute;ng, glycerin, kẽm oxid, butyl stearate v&agrave; diflycol laurate.</p>\r\n\r\n<h3><strong>C&aacute;c phẩm m&agrave;u</strong></h3>\r\n\r\n<p>Một bờ m&ocirc;i đỏ, m&agrave;u mắt kh&oacute;i hay m&aacute; hồng, ch&uacute;ng l&agrave; mục ti&ecirc;u của nhiều mỹ phẩm nhằm l&agrave;m nổi bật hoặc cải thiện m&agrave;u tự nhi&ecirc;n của cơ thể. Một lượng lớn c&aacute;c chất được sử dụng để cung cấp c&aacute;c dải m&agrave;u cho c&aacute;c sản phẩm trang điểm. C&aacute;c th&agrave;nh phần kho&aacute;ng như l&agrave; oxid sắt, mangan, oxid crom v&agrave; bột than. C&aacute;c phẩm m&agrave;u tự nhi&ecirc;n c&oacute; thể được l&agrave;m từ thực vật như l&agrave; bột củ cải t&iacute;a, hoặc từ động vật như c&aacute;n.</p>\r\n', '1713189279_3.jpg', '2024-04-15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Chanel'),
(2, 'Gucci'),
(3, 'Louis Vuitton'),
(4, 'Dior'),
(5, 'Khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Son ', 'Son là một sản phẩm trang điểm được sử dụng để tô màu và làm đẹp cho môi'),
(2, 'Kem chống nắng', 'Kem chống nắng là một sản phẩm chăm sóc da được thiết kế để bảo vệ da khỏi tác động của tia UV từ ánh nắng mặt trời.'),
(3, 'Sữa rửa mặt', 'Sữa rửa mặt là một sản phẩm dùng để làm sạch da mặt, loại bỏ bụi bẩn, dầu thừa, và tạp chất khác một cách nhẹ nhàng.'),
(4, 'Nước hoa ', 'Nước hoa là một sản phẩm được tạo ra từ sự pha trộn của các hợp chất hương thơm tự \r\nnhiên, hòa quyện với các dung môi và chất cố định khác tạo ra một hương thơm dễ chịu và lâu phai trên da.'),
(5, 'Kem dưỡng da', 'Kem dưỡng da là một sản phẩm chăm sóc da  để làm sáng da, giảm sạm da, đồng thời cung cấp độ ẩm và dưỡng chất cần thiết cho làn da. '),
(6, 'Serum', 'Serum là một sản phẩm chăm sóc da có dạng lỏng, nhẹ và nhanh chóng hấp thụ vào da.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `article_id`, `comment_name`, `comment_email`, `comment_content`, `comment_date`, `comment_status`) VALUES
(1, 3, 'hung', 'hung@gmail.com', 'bài viết hay quá', '2024-05-20', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_gender` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `account_id`, `customer_name`, `customer_gender`, `customer_email`, `customer_phone`, `customer_address`) VALUES
(1, 2, 'hung', 1, 'hung@gmail.com', '0827527765', 'Số 18 , Đường Nguyễn Trãi, Tp Vinh, Nghệ an');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delivery_note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `account_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `delivery_note`) VALUES
(1975, 1, 'anh', '0498646487', 'Số 11 , Đường Nguyễn Trãi, Tp Vinh, Nghệ an', 'Đơn hàng mua trực tiếp'),
(2206, 1, 'oanh', '0298646263', 'Số 30 , Đường Nguyễn Trãi, Tp Vinh, Nghệ an', 'Đơn hàng mua trực tiếp'),
(3513, 2, 'hung', '0827527765', 'Số 18 , Đường Nguyễn Trãi, Tp Vinh, Nghệ an', ''),
(3802, 2, 'hung', '0827527765', 'Số 18 , Đường Nguyễn Trãi, Tp Vinh, Nghệ an', ''),
(9334, 2, 'hung', '0827527765', 'Số 18 , Đường Nguyễn Trãi, Tp Vinh, Nghệ an', 'giao nhanh nha');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `evaluate_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `evaluate_rate` int(11) NOT NULL,
  `evaluate_content` text NOT NULL,
  `evaluate_date` varchar(50) NOT NULL,
  `evaluate_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`evaluate_id`, `account_id`, `product_id`, `account_name`, `evaluate_rate`, `evaluate_content`, `evaluate_date`, `evaluate_status`) VALUES
(1, 2, 4, 'hung', 5, 'sản phẩm dùng rất tốt', '2024-05-20 19:46:32', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `staf_name` varchar(50) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` varchar(20) NOT NULL,
  `inventory_note` varchar(100) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `account_id`, `staf_name`, `supplier_name`, `supplier_phone`, `inventory_note`, `inventory_code`, `inventory_date`, `total_amount`, `inventory_status`) VALUES
(1, 0, 'Thanh', 'MyShop', '0983766345', 'Nhập thêm hàng', '9774', '2024-05-20', 30000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_detail_id` int(11) NOT NULL,
  `inventory_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price_import` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_detail_id`, `inventory_code`, `product_id`, `product_quantity`, `product_price_import`) VALUES
(1, '9774', 22, 10, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `metrics`
--

CREATE TABLE `metrics` (
  `metric_id` int(11) NOT NULL,
  `metric_date` date NOT NULL,
  `metric_order` int(11) NOT NULL,
  `metric_sales` varchar(100) NOT NULL,
  `metric_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `metrics`
--

INSERT INTO `metrics` (`metric_id`, `metric_date`, `metric_order`, `metric_sales`, `metric_quantity`) VALUES
(1, '2024-05-19', 2, '10911500', 5),
(2, '2024-05-20', 1, '989800', 1),
(3, '2024-05-21', 1, '1470000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `account_id`, `delivery_id`, `total_amount`, `order_type`, `order_status`) VALUES
(1, 7122, '2024-05-20 19:45:33', 2, 3513, 6110000, 1, 3),
(2, 5253, '2024-05-20 19:47:34', 1, 1975, 4801500, 5, 3),
(3, 1168, '2024-05-20 19:48:48', 2, 9334, 1405800, 1, 0),
(4, 4758, '2024-05-20 19:59:20', 2, 3802, 989800, 1, 5),
(5, 4576, '2024-05-21 19:22:26', 1, 2206, 1470000, 5, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_code` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `order_code`, `product_id`, `product_quantity`, `product_price`, `product_sale`) VALUES
(1, 7122, 10, 2, 3250000, 6),
(2, 5253, 19, 3, 1650000, 3),
(3, 1168, 12, 1, 1420000, 1),
(4, 4758, 13, 1, 1010000, 2),
(5, 4576, 21, 1, 1500000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `quantity_sales` int(11) NOT NULL,
  `product_price_import` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `product_brand`, `product_quantity`, `quantity_sales`, `product_price_import`, `product_price`, `product_sale`, `product_description`, `product_image`, `product_status`) VALUES
(1, 'Nước Hoa Louis Spell On You ', 4, 3, 13, 2, 6560000, 7250000, 6, '<p>Thương hiệu: Louis Vuitton.</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p.</p>\r\n\r\n<p>Dung t&iacute;ch: 100ml.</p>\r\n\r\n<p>Nồng độ: EDP.</p>\r\n\r\n<p>Nh&oacute;m hương: Floral-Hương hoa cỏ.</p>\r\n\r\n<p>Độ lưu hương: 3-6 giờ.</p>\r\n\r\n<p>Độ tỏa hương: Gần-trong khoảng 1 c&aacute;nh tay.&nbsp;</p>\r\n\r\n<p>𝐍𝐮̛𝐨̛́𝐜 𝐡𝐨𝐚 𝐋𝐕 𝐒𝐩𝐞𝐥𝐥 𝐨𝐧 𝐲𝐨𝐮</p>\r\n\r\n<p>Spell On You mang đ&ecirc;́n mùi hương quy&ecirc;́n rũ, tươi m&aacute;t. Với thi&ecirc;́t k&ecirc;́ m&acirc;̃u chai b&ecirc;n ngoài, LV th&ecirc;̉ hi&ecirc;̣n màu h&ocirc;̀ng như sự ng&acirc;y thơ h&ocirc;̀n nhi&ecirc;n v&agrave; gợi cảm của người phụ nữ đẹp&nbsp;</p>\r\n\r\n<p>Ph&aacute;t triển từ sự quyến rũ x&aacute;c thịt v&agrave; ấn tượng th&acirc;n mật, Spell on You c&oacute; một luồng kh&iacute; mạnh mẽ như th&ocirc;i mi&ecirc;n, giống như một điệp kh&uacute;c kh&oacute; qu&ecirc;n.</p>\r\n', '1713188371_h6.jpg', 1),
(2, 'Nước Hoa Califonia Dream Louis Vuitton', 4, 3, 7, 5, 7500000, 9000000, 8, '<p>Thương hiệu:&nbsp;Louis Vuitton</p>\r\n\r\n<p>Giới t&iacute;nh: Nữ</p>\r\n\r\n<p>Thể t&iacute;ch: 100ml</p>\r\n\r\n<p>M&ugrave;i Hương: Benzoin (An tức hương), Xạ hương., Quả qu&yacute;t, Hạt v&ocirc;ng vang (Ambrette), Quả</p>\r\n\r\n<p>Th&agrave;nh phần: Quả qu&yacute;t, Hạt v&ocirc;ng vang (Ambrette), Quả</p>\r\n\r\n<p>- Si&ecirc;u phẩm của sự đẳng cấp l&agrave; đ&acirc;y: Nước Hoa nữ Califonia Dream Louis Vuitton 100ml</p>\r\n\r\n<p>- Nước Hoa nữ Califonia Dream Louis Vuitton 100ml mang đến một m&ugrave;i hương phương Đ&ocirc;ng nồng n&agrave;n v&agrave; ấm &aacute;p, khắc họa lại cảnh ho&agrave;ng h&ocirc;n lung linh đầy sức h&uacute;t tr&ecirc;n bầu trời miền T&acirc;y nước Mỹ.</p>\r\n\r\n<p>- N&oacute; l&agrave; sự pha trộn đầy tinh tế của Qu&yacute;t, L&ecirc;, Xạ hương, An tức hương, C&acirc;y v&ocirc;ng vang, biến những nốt hương b&igrave;nh thường vốn c&oacute; của một l&agrave;ng qu&ecirc; y&ecirc;n b&igrave;nh trở th&agrave;nh loại nước hoa cao cấp ph&aacute; vỡ mọi định nghĩa. Ngắm m&agrave;n đ&ecirc;m bu&ocirc;ng xuống. Ch&igrave;m đắm trong những sắc m&agrave;u. Đứng trước ch&acirc;n trời v&agrave; tận hưởng hương thơm &oacute;ng &aacute;nh lấp l&aacute;nh n&agrave;y. Người pha chế Jacques Cavallier Belletrud đ&atilde; giữ lấy khoảnh khắc ho&agrave;ng h&ocirc;n tr&ecirc;n đất California m&atilde;i m&atilde;i trong hương thơm nước hoa n&agrave;y, v&igrave; thế m&agrave; n&oacute; đ&atilde; được đặt t&ecirc;n 𝐂𝐚𝐥𝐢𝐟𝐨𝐧𝐢𝐚 𝐃𝐫𝐞𝐚𝐦.</p>\r\n\r\n<p>- Hương đầu: Quả qu&yacute;t.</p>\r\n\r\n<p>- Hương giữa: Hạt v&ocirc;ng vang (Ambrette), Quả l&ecirc;.</p>\r\n\r\n<p>- Hương cuối: Benzoin (An tức hương), Xạ hương.</p>\r\n', '1713188350_h5.jpg', 1),
(3, 'Nước Hoa Nữ GUCCI BLOOM EDP', 4, 2, 38, 7, 2500000, 3000000, 5, '<p>Thương hiệu: Gucci</p>\r\n\r\n<p>Giới t&iacute;nh: Nữ</p>\r\n\r\n<p>Thể t&iacute;ch: 100ml</p>\r\n\r\n<p>Nồng độ hương: EDP</p>\r\n\r\n<p>M&ugrave;i Hương: Chi ng&acirc;n, Nh&agrave;i, Huệ</p>\r\n\r\n<p>Th&agrave;nh phần: Chi ng&acirc;n, Nh&agrave;i, Huệ</p>\r\n\r\n<p>Nước Hoa Nữ GUCCI BLOOM EDP 100ML | PXH Authentic</p>\r\n\r\n<p>L&agrave; một cơn gi&oacute; m&aacute;t của m&ugrave;a xu&acirc;n, tr&agrave;n ngập sức sống. Gucci Bloom giống một b&ocirc;ng hoa nhỏ b&eacute; đang từ từ nở rộ, tr&agrave;n ngập giữa một vườn hoa trắng muốt đầy trang nh&atilde;. Ch&acirc;n thật với hương thơm của l&aacute; c&acirc;y v&agrave;o buổi sớm mai, chất chứa những giọt sương c&ograve;n đọng lại v&agrave;o đ&ecirc;m h&ocirc;m trước. Gucci Bloom mộc mạc, trần trụi, đem lại cảm gi&aacute;c hồi xu&acirc;n, mang t&ocirc;i trở về với qu&aacute; khứ, vui đ&ugrave;a c&ugrave;ng những c&aacute;nh hoa trong vườn, nh&acirc;m nhi ly nước chanh m&aacute;t lạnh trong một ng&agrave;y nắng n&oacute;ng. Chi ng&acirc;n, Nh&agrave;i v&agrave; Huệ như ho&agrave; quyện v&agrave;o gi&oacute;, tạo n&ecirc;n một điệu nhảy của c&aacute;nh hoa , mang đến những khoảnh khắc k&igrave; diệu, kh&aacute;c biệt v&agrave; kh&ocirc;ng hề g&acirc;y buồn ch&aacute;n. Gỗ đ&agrave;n hương v&agrave; Vani h&ograve;a quyện với nhau như một cặp đ&ocirc;i đang khi&ecirc;u vũ, trong veo đầy thơ mộng. Gucci Bloom l&agrave; một giấc mộng của m&ugrave;a xu&acirc;n, mơ m&agrave;ng dưới b&oacute;ng c&acirc;y cổ thụ, nhưng biết h&eacute; nở v&agrave; tỏa hương khi cần.</p>\r\n\r\n<p>Nh&oacute;m hương Hoa huệ, Hoa nh&agrave;i, Hoa kim ng&acirc;n</p>\r\n\r\n<p>Phong c&aacute;ch Quyến rũ, Sang trọng, Qu&yacute; ph&aacute;i</p>\r\n\r\n<p>Nốt hương đầu : L&aacute; c&acirc;y</p>\r\n\r\n<p>Nốt hương giữa : Chi ng&acirc;n, Nh&agrave;i, Huệ</p>\r\n\r\n<p>Nốt hương cuối : Gỗ đ&agrave;n hương, Vani</p>\r\n', '1713188309_h4.jpg', 1),
(4, 'Nước Hoa Chanel Eau Tendre ', 4, 1, 2, 6, 2500000, 3100000, 3, '<p>Thương hiệu: Chanel</p>\r\n\r\n<p>Giới t&iacute;nh: Nữ</p>\r\n\r\n<p>Thể t&iacute;ch: 100ml</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>CHANEL CHANCE EAU TENDRE 100ml</p>\r\n\r\n<p>Chance Eau Tendre l&agrave; phi&ecirc;n bản nước hoa mới của thương hiệu Channel, mang lại luồng gi&oacute; ho&agrave;n to&agrave;n mới cho c&aacute;c d&ograve;ng sản phẩm nh&agrave; Chanel. M&ugrave;i hương n&agrave;y tinh tế mang đậm chất thơ , tuy nhẹ nh&agrave;ng nhưng vẫn to&aacute;t l&ecirc;n được vẻ sống động như những l&agrave;n s&oacute;ng xanh &ecirc;m dịu.</p>\r\n\r\n<p>Cảm nhận đầu ti&ecirc;n về Chance Eau Tendre l&agrave; hương thơm nồng n&agrave;n của bưởi v&agrave; mộc qua, nhờ v&agrave;o hương mộc qua m&agrave; hương đầu kh&ocirc;ng qu&aacute; gắt. Hương bưởi tạo cảm gi&aacute;c thanh m&aacute;t, thoang thoảng hương hoa nồng n&agrave;n của huệ dạ hương. M&ugrave;i hương đầu thơm ng&aacute;t v&agrave; ấn tượng nhưng sẽ phai đi sau v&agrave;i ph&uacute;t. L&uacute;c n&agrave;y, hương tr&aacute;i c&acirc;y sẽ lắng dần đi, chỉ c&ograve;n đọng hương hoa tươi m&aacute;t. Sau c&ugrave;ng tất cả nốt hương bưởi v&agrave; mộc qua c&ugrave;ng h&ograve;a quyện với tinh dầu hoa nh&agrave;i, rồi trầm ấm l&ecirc;n bởi m&ugrave;i hương đẫy đ&agrave; m&agrave; nữ t&iacute;nh của xạ hương trắng.</p>\r\n', '1713188154_h3.jpg', 1),
(5, 'Nước Hoa Dior Sauvage Elixir ', 4, 4, 11, 5, 2800000, 3600000, 7, '<p>Thương hiệu: Dior&nbsp;</p>\r\n\r\n<p>Giới t&iacute;nh: Nam</p>\r\n\r\n<p>Nồng độ hương: EDP</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng xịt</p>\r\n\r\n<p>Thể t&iacute;ch: 60ml</p>\r\n\r\n<p>Sauvage Elixir l&agrave; 1 chai nước hoa mang m&ugrave;i hương mới kh&aacute;c biệt ho&agrave;n to&agrave;n so với 2 em cũ bản EDT &amp; EDP .</p>\r\n\r\n<p>C&oacute; lẽ việc chia nhỏ từng note hương kh&ocirc;ng phải l&agrave; c&aacute;ch đ&uacute;ng đắn để đ&aacute;nh gi&aacute; về Elixir , mở đầu với một c&uacute; t&aacute;t cực mạnh của 1 tổ hợp m&ugrave;i gia vị cay (quế- bạch đậu khấu) v&agrave; oải hương đủ khiến bạn phải wow l&ecirc;n v&agrave; sau hiệu ứng tuyệt vời đến mức v&ocirc; l&yacute; n&agrave;y k&eacute;o d&agrave;i cả giờ trước khi được dịu đi để nhường chỗ cho một m&ugrave;i gỗ kh&oacute;i cực kỳ phong ph&uacute;, c&oacute; chiều s&acirc;u v&agrave; nam t&iacute;nh k&eacute;o d&agrave;i trong &iacute;t nhất 8 giờ. N&oacute; chắc chắn sẽ kh&ocirc;ng giống với những g&igrave; bạn đ&atilde; từng trải nghiệm bởi những d&ograve;ng nước hoa kh&aacute;c .</p>\r\n\r\n<p>D&ugrave;ng 2-3 shot Elixir v&agrave;o buổi s&aacute;ng v&agrave; bạn sẽ sở hữu n&oacute; cho tới tận đ&ecirc;m khuya, toả hương trong b&aacute;n k&iacute;nh 2 m&eacute;t . Với hương thơm của oải hương cay nồng của quế, bạch đậu khấu DRY DOWN khi xuất hiện Long di&ecirc;n hương ngọt mềm .</p>\r\n\r\n<p>M&ugrave;i hương đặc trưng:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Hương đầu: Quế, Bạch Đậu Khấu, Nhục Đậu Khấu v&agrave; Quả Bưởi.</p>\r\n\r\n<p>&nbsp; &nbsp; Hương giữa: Hoa Oải Hương.</p>\r\n\r\n<p>&nbsp; &nbsp; Hương cuối: Gỗ Đ&agrave;n Hương, Cam Thảo, Hổ Ph&aacute;ch, Cỏ Vetiver Haiti v&agrave; C&acirc;y Hoắc Hương.</p>\r\n\r\n<p>&nbsp; &nbsp; Phong C&aacute;ch : Nam t&iacute;nh, hấp dẫn, quyền lực.</p>\r\n', '1683367983_nuoc-hoa-dior-1.jpg', 1),
(6, 'Nước hoa Gucci Flora Gorgeous', 4, 2, 16, 9, 1000000, 1500000, 4, '<p>Nước Hoa Unisex Gucci Flora Gorgeous Jasmine 100ml</p>\r\n\r\n<p>Thương hiệu: Gucci</p>\r\n\r\n<p>Xuất xứ: Anh, Đức, Ph&aacute;p</p>\r\n\r\n<p>Nh&oacute;m hương: Hương hoa nh&agrave;i, Hoa mộc lan, Qu&yacute;t hồng</p>\r\n\r\n<p>Phong c&aacute;ch: Sang trọng, Thanh lịch, Gợi cảm</p>\r\n\r\n<p>Hương đầu: Qu&yacute;t &Yacute;, Cam Bergamot, Ti&ecirc;u đen.</p>\r\n\r\n<p>Hương giữa: Hoa nh&agrave;i, Hoa nh&agrave;i Sambac, Hoa mộc lan, Hoa hồng Damask.</p>\r\n\r\n<p>Hương cuối: Nhựa hương Benzoin, Gỗ đ&agrave;n hương &Uacute;c, Hoắc hương.</p>\r\n\r\n<p>Tiếp nối th&agrave;nh c&ocirc;ng của Flora Gorgeous Gardenia, Gucci tiếp tục cho ra mắt phi&ecirc;n bản tiếp theo của d&ograve;ng Gucci Flora Gorgeous, với chủ điểm l&agrave; một người chị em của Gardenia (Hoa d&agrave;nh d&agrave;nh), ấy l&agrave; Jasmine (Hoa nh&agrave;i). Nh&agrave;i v&agrave; D&agrave;nh d&agrave;nh c&oacute; những đặc điểm cơ bản kh&aacute; giống nhau trong m&ugrave;i hương, c&ugrave;ng nằm trong nh&oacute;m hoa trắng, v&agrave; Nh&agrave;i thực tế cũng đ&atilde; xuất hiện trong phi&ecirc;n bản m&agrave;u hồng được ra mắt năm 2021. Vậy Gucci Flora Gorgeous Jasmine mới được ra mắt năm 2022 sẽ c&oacute; những g&igrave; th&uacute; vị d&agrave;nh cho ch&uacute;ng ta?</p>\r\n\r\n<p>Đ&uacute;ng như t&ecirc;n gọi của m&ugrave;i hương, Hoa nh&agrave;i l&agrave; chủ thể được t&ocirc; vẽ xinh đẹp trong Flora Gorgeous Jasmine. Nh&agrave;i tươi thắm, tinh kh&ocirc;i v&agrave; gợi cảm, ngọt ng&agrave;o như những g&igrave; ta c&oacute; thể tưởng tượng về một tiểu thư chuẩn mực. Nh&agrave;i của Flora Gorgeous Jasmine được t&ocirc; vẽ đậm n&eacute;t tới mức ta c&oacute; thể tận hưởng hương thơm dễ chịu n&agrave;y từ đầu tới cuối của m&ugrave;i hương, nhưng vẫn đủ gi&uacute;p ta nhận biết được sắc th&aacute;i đem tới từ c&aacute;c vệ tinh xung quanh b&ocirc;ng hoa dễ thương n&agrave;y, bằng việc chuyển biến của m&ugrave;i hương.</p>\r\n\r\n<p>Nh&agrave;i được chuyển qua từ trạng th&aacute;i chua ngọt mọng nước của những nốt hương Cam chanh, cho tới c&aacute;i t&ecirc; ngọt ấm &aacute;p của Nhựa hương h&ograve;a trộn với những rung động nhẹ nh&agrave;ng từ Đ&agrave;n hương, khiến Hoa nh&agrave;i vừa dễ thương, vừa sống động trong Flora Gorgeous Jasmine.</p>\r\n', '1713188113_h1.jpg', 1),
(7, 'Son kem Chanel Rouge Allure Laque', 1, 1, 36, 4, 650000, 850000, 3, '<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Hạn sử dụng: 36 th&aacute;ng</p>\r\n\r\n<p>Thể t&iacute;ch: 5.5ml</p>\r\n\r\n<p>Chanel Rouge Allure Laque tự h&agrave;o với c&ocirc;ng thức kh&ocirc;ng tr&ocirc;i tuyệt vời, gi&uacute;p phụ nữ trang điểm với những t&ocirc;ng m&agrave;u y&ecirc;u th&iacute;ch một c&aacute;ch nổi bật, mang lại kết quả m&agrave;u sắc sang trọng, thoải m&aacute;i như kh&ocirc;ng trọng lượng v&agrave; dễ d&agrave;ng ứng dụng. Kết quả đ&oacute; l&agrave;m cho Chanel Rouge Allure Laque trở th&agrave;nh một kiểu cổ điển thực sự với sự ph&ugrave; hợp sẽ duy tr&igrave; qua việc đeo mặt nạ. 🤩</p>\r\n\r\n<p>Chống tr&ocirc;i v&agrave; chống nước, son n&agrave;y mang lại &aacute;nh b&oacute;ng satin đặc trưng, m&agrave;u sắc v&agrave; độ ẩm trong v&ograve;ng 12 giờ. Độ mềm mại v&agrave; đ&agrave;n hồi của n&oacute; c&ugrave;ng với cảm gi&aacute;c thoải m&aacute;i k&eacute;o d&agrave;i 10 giờ tr&ecirc;n đ&ocirc;i m&ocirc;i.</p>\r\n\r\n<p>HƯỚNG DẪN SỬ DỤNG</p>\r\n\r\n<p>Thoa trực tiếp l&ecirc;n m&ocirc;i bằng cọ. Để c&oacute; đ&ocirc;i m&ocirc;i ho&agrave;n hảo định h&igrave;nh, sử dụng phần bằng phẳng của cọ để thoa sản phẩm v&agrave;o giữa m&ocirc;i, sau đ&oacute; sử dụng đỉnh mảnh để định h&igrave;nh cung mũi v&agrave; g&oacute;c m&ocirc;i. Đối với kết quả mạnh mẽ hơn, đợi cho lớp một kh&ocirc; một ch&uacute;t rồi &aacute;p dụng lớp thứ hai.</p>\r\n', '1713187955_a2.jpg', 1),
(8, 'Son Dưỡng N°1 De Chanel Lip', 1, 1, 19, 1, 1100000, 1650000, 2, '<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Trọng lượng: 3g</p>\r\n\r\n<p>Thể t&iacute;ch: 3ml</p>\r\n\r\n<p>Hạn sử dụng: 36 th&aacute;ng</p>\r\n\r\n<p>Son dưỡng Chanel N&deg;1 De Lip And Cheek Balm Wake up pink l&agrave; d&ograve;ng son cao cấp đến từ thương hiệu Chanel nổi tiếng. Ngay từ khi c&oacute; mặt tr&ecirc;n thị trường, son Chanel N&deg;1 De Lip And Cheek Balm lu&ocirc;n được t&iacute;n đồ son m&ocirc;i săn đ&oacute;n. Thiết kế Son Chanel N&deg;1 De Lip And Cheek Balm wake up pink tinh tế</p>\r\n\r\n<p>Son Chanel N&deg;1 De Lip And Cheek Balm wake up pink c&oacute; thiết kế h&igrave;nh hũ tr&ograve;n đơn giản lớp chiếc nắp đen huyền b&iacute;. Điểm nhấn thương hiệu c&ograve;n thể hiện qua logo thương hiệu Chanel nổi bật tr&ecirc;n nắp son. Với hũ son n&agrave;y bạn c&oacute; thể tiện lợi để trong t&uacute;i x&aacute;ch mang theo b&ecirc;n m&igrave;nh khi đi bất cứ đ&acirc;u.&nbsp;Thoa kết cấu bằng c&aacute;ch vỗ nhẹ l&ecirc;n m&ocirc;i, hoặc ấn bằng ng&oacute;n tay hoặc k&eacute;o căng tr&ecirc;n m&ocirc;i.</p>\r\n\r\n<p>Hưỡng dẫn sử dụng:</p>\r\n\r\n<p>Sử dụng ng&oacute;n tay: Lấy vật liệu bằng ng&oacute;n tay của bạn, &aacute;p dụng kết cấu v&agrave; trộn bằng c&aacute;ch chạm.</p>\r\n\r\n<p>Sử dụng cọ son: Để c&oacute; một ứng dụng ch&iacute;nh x&aacute;c hơn, h&atilde;y sử dụng Brush Retractable Corrector Duo Brush N&deg;105. Lấy vật liệu trực tiếp bằng đầu tr&ograve;n, thoa v&agrave;o giữa m&aacute; của bạn, sau đ&oacute; k&eacute;o căng kết cấu bằng c&aacute;ch chạm.&nbsp;Sử dụng đầu dẹt của Retractable Corrector Duo Brush N&deg;105 để thoa son ch&iacute;nh x&aacute;c hơn.</p>\r\n', '1713186825_s1.jpg', 1),
(9, 'Kem Dưỡng Da Tay Chanel', 5, 1, 30, 0, 800000, 1170000, 2, '<p>Xuất Xứ: Ph&aacute;p</p>\r\n\r\n<p>Dung T&iacute;ch: 50ml</p>\r\n\r\n<p>Chăm s&oacute;c cơ thể: Giữ Ẩm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kem Dưỡng Da Tay Chanel La&nbsp;Cr&egrave;me Main 50ml l&agrave; d&ograve;ng sản phẩm cao cấp đến từ thương hiệu Chanel nổi tiếng. Với c&ocirc;ng thức vượt trội Chanel La&nbsp;Cr&egrave;me Main hỗ trợ dưỡng da tay mềm mại v&agrave; mịn m&agrave;ng hơn.</p>\r\n\r\n<p>Ưu điểm của Chanel La&nbsp;Cr&egrave;me Main - Hỗ trợ phục hồi nu&ocirc;i dưỡng l&agrave;n da tay mềm mại.</p>\r\n\r\n<p>- Hỗ trợ cung cấp dưỡng chất cải thiện nhăn, kh&ocirc;, n&acirc;ng cao độ đ&agrave;n hồi, cho l&agrave;n da l&aacute;ng mịn hơn. - Hỗ trợ l&agrave;m đều m&agrave;u da tay.</p>\r\n\r\n<p>- Chất kem mềm mịn, dễ thẩm thấu v&agrave;o da.</p>\r\n\r\n<p>- Kem có độ dưỡng ẩm cao nhưng lại không gây cảm giác bết dính.</p>\r\n\r\n<p>- Cảm gi&aacute;c sử dụng mềm mại, kh&ocirc; tho&aacute;ng. Sản phẩm c&oacute; hương thơm dễ chịu tạo cảm gi&aacute;c v&ocirc; c&ugrave;ng thư gi&atilde;n.</p>\r\n', '1713186742_t1.jpg', 1),
(10, 'Kem dưỡng Chanel LE BLANC', 5, 1, 18, 2, 2900000, 3250000, 6, '<p>Kem dưỡng Chanel LE BLANC Cr&egrave;me Riche Healthy Light Creator</p>\r\n\r\n<p>Thương hiệu: CHANEL</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Dung t&iacute;ch: 50g</p>\r\n\r\n<p>L&agrave; một loại kem l&agrave;m trắng 3 trong 1 đột ph&aacute;, gi&uacute;p tăng cường v&agrave; khuếch đại &aacute;nh s&aacute;ng tinh khiết l&agrave;nh mạnh cho l&agrave;n da của bạn. N&oacute; hoạt động tr&ecirc;n 3 kh&iacute;a cạnh ch&iacute;nh của sức khỏe l&agrave;n da để hồi sinh l&agrave;n da, điều chỉnh sản xuất melanin v&agrave; phục hồi lipid da thiết yếu, tăng cường sức sống v&agrave; độ s&aacute;ng. C&ocirc;ng thức với CHANEL độc quyền TXC &trade;, chiết xuất hoa ume qu&yacute; gi&aacute; v&agrave; dầu hoa ume, n&oacute; hoạt động to&agrave;n diện với da để cho ph&eacute;p độ s&aacute;ng tự nhi&ecirc;n của n&oacute; nở rộ v&agrave; ph&aacute;t triển. Kết cấu kem sang trọng của kem phong ph&uacute; tăng cường bao phủ l&agrave;n da trong sự thoải m&aacute;i l&acirc;u d&agrave;i, cho n&oacute; mịn m&agrave;ng v&agrave; mềm mại khi chạm v&agrave;o. Thậm ch&iacute;, ngậm nước, mịn m&agrave;ng v&agrave; rạng rỡ, l&agrave;n da được dưỡng ẩm v&agrave; nu&ocirc;i dưỡng mạnh mẽ. Nước da b&ugrave;ng nổ với một &aacute;nh s&aacute;ng tinh khiết l&agrave;nh mạnh.</p>\r\n\r\n<p>Lợi &iacute;ch:</p>\r\n\r\n<p>Da khỏe v&agrave; đẹp: ho&agrave;n hảo, đồng đều, mờ v&agrave; s&aacute;ng. Tăng cường hydrat h&oacute;a v&agrave; nu&ocirc;i dưỡng, l&agrave;n da đầy đặn, thoải m&aacute;i, mềm mại v&agrave; mịn m&agrave;ng v&agrave; nếp nhăn giảm r&otilde; rệt. B&acirc;y giờ ho&agrave;n to&agrave;n c&oacute; thể phản chiếu &aacute;nh s&aacute;ng, l&agrave;n da nở rộ với sự rạng rỡ mới.</p>\r\n', '1713186647_k2.jpg', 1),
(11, 'Kem Chống Nắng Chanel', 2, 1, 30, 0, 1100000, 1500000, 3, '<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Hạn sử dụng: 24 th&aacute;ng</p>\r\n\r\n<p>Chỉ số chống nắng: 50</p>\r\n\r\n<p>Thể t&iacute;ch: 30ml</p>\r\n\r\n<p>Loại Da: Mọi loại da</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng kem</p>\r\n\r\n<p>KEM CHỐNG NẮNG CHANEL UV ESSENTIEL 30 ML</p>\r\n\r\n<p>H&Agrave;NG CH&Iacute;NH H&Atilde;NG NHẬP KHẨU TỪ PH&Aacute;P PARIS VỀ K&Egrave;M THEO BILL PH&Aacute;P STORE PARIS.</p>\r\n\r\n<p>BẢO VỆ TO&Agrave;N DIỆN CHỐNG TIA UV - CHỐNG T&Aacute;C NH&Acirc;N &Ocirc; NHIỄM</p>\r\n\r\n<p>SPF 50/PA+++&nbsp;</p>\r\n\r\n<p>CHANEL n&acirc;ng tầm khả năng ph&ograve;ng vệ tự nhi&ecirc;n của da với kem chống nắng UV ESSENTIEL thế hệ mới tăng cường sức mạnh của lớp m&agrave;n bảo vệ, được s&aacute;ng tạo t&ugrave;y theo nhu cầu h&agrave;ng ng&agrave;y của l&agrave;n da. C&ocirc;ng nghệ th&ocirc;ng minh v&agrave; mạnh mẽ th&iacute;ch ứng với tần suất tiếp x&uacute;c của da với t&aacute;c nh&acirc;n g&acirc;y hại b&ecirc;n ngo&agrave;i. Sản phẩm gi&uacute;p bảo vệ da từ b&ecirc;n trong lẫn b&ecirc;n ngo&agrave;i khỏi tia cực t&iacute;m (UVA, UVB, tia hồng ngoại v&agrave; &aacute;nh s&aacute;ng trong nh&agrave;), t&aacute;c nh&acirc;n &ocirc; nhiễm m&ocirc;i trường v&agrave; gốc tự do. Hiện c&oacute; 2 mức SPF, UV ESSENTIEL th&iacute;ch ứng với nhu cầu của mỗi phụ nữ, dựa tr&ecirc;n phong c&aacute;ch sống, loại da, c&aacute;c thay đổi về kh&iacute; hậu.</p>\r\n\r\n<p>SPF 50 / PA +++: Lớp bảo vệ chuy&ecirc;n s&acirc;u ngay cả khi nắng gắt. Được khuyến kh&iacute;ch đối với l&agrave;n da d&ugrave; đẹp nhất trong điều kiện thời tiết nắng vừa.</p>\r\n\r\n<p>SPF 30 / PA +++: Lớp bảo vệ l&yacute; tưởng cho tiết trời nắng vừa cho đến nắng gắt. Được khuyến kh&iacute;ch đối với l&agrave;n da d&ugrave; đẹp nhất trong điều kiện thời tiết nhiều m&acirc;y.</p>\r\n\r\n<p>C&aacute;ch sử dụng:&nbsp;</p>\r\n\r\n<p>Sử dụng như bước cuối trong chu tr&igrave;nh chăm s&oacute;c da trước khi trang điểm. Sử dụng tr&ecirc;n to&agrave;n bộ gương mặt, v&ugrave;ng cổ v&agrave; xương quai xanh. Thoa lại một lớp mới trong ng&agrave;y nếu tiếp x&uacute;c với &aacute;nh nắng để đảm bảo da lu&ocirc;n được bảo vệ.</p>\r\n', '1713186591_n1.jpg', 1),
(12, 'Kem Chống Nắng Chanel Sublimage', 2, 1, 29, 1, 1000000, 1420000, 1, '<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Chỉ số chống nắng: 50</p>\r\n\r\n<p>Thể t&iacute;ch: 30ml</p>\r\n\r\n<p>Loại Da: Mọi loại da</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>C&ocirc;ng Thức: Kem</p>\r\n\r\n<p>MỨC SPF CHỐNG NẮNG: SPF50+</p>\r\n\r\n<p>Kem chống nắng Chanel UV Sublimage La Protection UV SPF 50/PA+</p>\r\n\r\n<p>Kem dưỡng chứa th&agrave;nh phần chống l&atilde;o ho&aacute; gi&uacute;p kh&ocirc;i phục độ săn chắc cho da, cải thiện qu&aacute; tr&igrave;nh tuần ho&agrave;n, v&agrave; c&acirc;n bằng da Kem dưỡng ẩm c&oacute; kết cấu nhẹ, tươi m&aacute;t Nhờ v&agrave;o việc cung cấp của c&aacute;c chất dinh dưỡng v&agrave; độ ẩm gi&uacute;p cho da ng&agrave;y c&agrave;ng rạng rỡ. Giảm nếp nhăn vết nhăn.</p>\r\n', '1713186546_nn.jpg', 1),
(13, 'Sữa rửa mặt Channel – LA MOUSSE', 3, 1, 39, 1, 700000, 1010000, 2, '<p>Trọng lượng: 150g</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Th&agrave;nh Phần Hoạt T&iacute;nh: Kh&ocirc;ng hương liệu, Nguồn gốc thi&ecirc;n nhi&ecirc;n, Tự nhi&ecirc;n, Peptides, Kh&ocirc;ng chứa silicone</p>\r\n\r\n<p>Loại Da: Da mụn trứng c&aacute;, L&atilde;o h&oacute;a, Mọi loại da, Da hỗn hợp, Kh&ocirc;</p>\r\n\r\n<p>Chăm S&oacute;c Da: Mụn Trứng C&aacute;/ Th&acirc;m, Chống l&atilde;o h&oacute;a, Mụn đầu đen, Se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, Quầng th&acirc;m</p>\r\n\r\n<p>Dạng rửa mặt: Dạng sữa</p>\r\n\r\n<p>Thể t&iacute;ch: 150ml</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Lỏng</p>\r\n\r\n<p>Sữa rửa mặt Channel &ndash; LA MOUSSE 150ml</p>\r\n\r\n<p>Sữa rửa mặt tạo bọt si&ecirc;u mịn, l&agrave;m sạch, c&acirc;n bằng độ ẩm, k kh&ocirc; r&aacute;t da. Da trắng s&aacute;ng dần v&igrave; lớp tế b&agrave;o chết được loại bỏ h iệu q uả. Đồ Cha_nel th&igrave; qu&aacute; đỉnh rồi ahhhh. Phục vụ chị e những đồ cao cấp nhất lu&ocirc;n.</p>\r\n\r\n<p>◉ Bước kh&ocirc;ng thể thiếu n&agrave;y trở th&agrave;nh khoảnh khắc hạnh ph&uacute;c thuần khiết v&agrave; gi&uacute;p da sạch, mềm mại v&agrave; thoải m&aacute;i. Nước da s&aacute;ng l&ecirc;n với sự tươi m&aacute;t.</p>\r\n\r\n<p>B&aacute;c sĩ da liễu đ&atilde; thử nghiệm tr&ecirc;n tất cả c&aacute;c loại da v&agrave; đặc biệt l&agrave; tr&ecirc;n da ch&acirc;u &Aacute;. Kh&ocirc;ng g&acirc;y mụn.</p>\r\n\r\n<p>- Vi tảo xanh bảo vệ c&aacute;c tế b&agrave;o khỏi căng thẳng vi m&ocirc; do &ocirc; nhiễm.&nbsp;</p>\r\n\r\n<p>- Chiết xuất salicornia biển t&aacute;c dụng giữ ẩm tăng cường cho da</p>\r\n', '1713186472_r1.jpg', 1),
(14, 'Serum Chanel số 1', 6, 1, 20, 0, 2500000, 2900000, 4, '<p>Loại Da: Mọi loại da</p>\r\n\r\n<p>Thể t&iacute;ch: 30ml</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>C&ocirc;ng Thức: Serum</p>\r\n\r\n<p>SERUM CHANEL SỐ N&deg;1 DE CHANEL REVITALIZING SERUM 30 ML</p>\r\n\r\n<p>NGĂN NGỪA V&Agrave; KHẮC PHỤC SỰ XUẤT HIỆN CỦA 5 DẤU HIỆU L&Atilde;O H&Oacute;A. H&Agrave;NG CH&Iacute;NH H&Atilde;NG TỪ PH&Aacute;P PARIS SEPHORA NHẬP VỀ.</p>\r\n\r\n<p>C&aacute;ch sử dụng:</p>\r\n\r\n<p>CHANEL đ&atilde; ph&aacute;t triển LE GESTE REVITALISANT N&deg;1 DE CHANEL, một kỹ thuật sử dụng được thiết kế ri&ecirc;ng để cải thiện hiệu quả của tinh chất.</p>\r\n\r\n<p>Xoay nắp của tinh chất ngược chiều kim đồng hồ v&agrave; lấy lượng sản phẩm vừa đủ bằng ống nhỏ giọt c&oacute; chức năng tự l&agrave;m đầy.</p>\r\n\r\n<p>Thoa đều sản phẩm l&ecirc;n to&agrave;n bộ khu&ocirc;n mặt v&agrave; v&ugrave;ng xương quai xanh.</p>\r\n\r\n<p>Sau đ&oacute;, d&ugrave;ng ng&oacute;n tay c&aacute;i v&agrave; ng&oacute;n trỏ thực hiện c&aacute;c động t&aacute;c &ldquo;v&eacute;o v&agrave; xoay&rdquo; từ h&agrave;m l&ecirc;n đến mang tai, rồi từ kh&oacute;e miệng đến mang tai v&agrave; từ hai b&ecirc;n c&aacute;nh mũi l&ecirc;n mang tai. Lặp lại c&aacute;c động t&aacute;c v&eacute;o n&agrave;y tr&ecirc;n v&ugrave;ng xương quai xanh.</p>\r\n\r\n<p>Sau đ&oacute; sử dụng kem dưỡng N&deg;1 DE CHANEL v&agrave;o buổi s&aacute;ng v&agrave; buổi tối.</p>\r\n', '1713186383_s2.jpg', 1),
(15, 'Serum Dior Capture Youth', 6, 4, 30, 0, 3000000, 3870000, 2, '<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>Loại Da: L&atilde;o h&oacute;a, Mọi loại da, Da hỗn hợp, Kh&ocirc;, Nhạy cảm</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Dung t&iacute;ch: 10ml</p>\r\n\r\n<p>Tinh chất serum Dior Capture Youth, chống oxy h&oacute;a, l&atilde;o h&oacute;a da, trẻ h&oacute;a l&agrave;n da, hỗ trợ s&aacute;ng da&nbsp;</p>\r\n\r\n<p>Th&agrave;nh phần chủ chốt của sản phẩm n&agrave;y l&agrave; 0,2% c&aacute;c tế b&agrave;o da: tế b&agrave;o gốc c&oacute; t&aacute;c dụng t&aacute;i cung cấp năng lượng cho tế b&agrave;o g.ố.c v&agrave; t&aacute;i k&iacute;ch hoạt 6 chức năng thiết yếu của l&agrave;n da, cho một hiệu quả chống l&atilde;o ho&aacute; to&agrave;n diện.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, kết hợp với 4 lo&agrave;i hoa gồm lily trắng, hoa mẫu đơn, hoa nh&agrave;i v&agrave; hoa longoza cung cấp tổ hợp hoạt chất cần thiết để tế b&agrave;o gốc hoạt động bền bỉ.</p>\r\n\r\n<p>Ngo&agrave;i ra, sản phẩm c&ograve;n được bổ sung ph&acirc;n tử Lipopeptid l&ecirc;n men sinh học để th&uacute;c đẩy khả năng thẩm thấu, gi&uacute;p đưa dưỡng chất thấm s&acirc;u v&agrave;o trong da hơn 30%.</p>\r\n\r\n<p>- Hỗ trợ phục hồi m&agrave;ng tế b&agrave;o gốc tr&ecirc;n da.</p>\r\n\r\n<p>- Hỗ trợ l&agrave;m giảm sạm, n&aacute;m, t&agrave;n nhang tr&ecirc;n da.</p>\r\n\r\n<p>- Hỗ trợ l&agrave;m đều m&agrave;u da.</p>\r\n\r\n<p>- Hỗ trợ cung cấp độ ẩm cho da đ&agrave;n hồi v&agrave; săn chắc.</p>\r\n\r\n<p>- Hỗ trợ bổ sung dưỡng chất cho l&agrave;n da s&aacute;ng khỏe tự nhi&ecirc;n.</p>\r\n', '1713186358_s3.jpg', 1),
(16, 'Serum Prestige La Micro-Huile', 6, 4, 30, 0, 1100000, 1700000, 1, '<p>Trọng lượng: 500g</p>\r\n\r\n<p>Th&agrave;nh Phần Hoạt T&iacute;nh: Nguồn gốc thi&ecirc;n nhi&ecirc;n, Kh&ocirc;ng dầu, Tự nhi&ecirc;n, Vitamin C, Vitamin E</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Lỏng</p>\r\n\r\n<p>Loại Da: Mọi loại da</p>\r\n\r\n<p>Chăm S&oacute;c Da: Mụn Trứng C&aacute;/ Th&acirc;m, Mụn đầu đen, Se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, N&aacute;m/ t&agrave;n nhang, Lỗ ch&acirc;n l&ocirc;ng to</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>L&agrave; d&ograve;ng serum cao cấp gi&uacute;p chống l&atilde;o h&oacute;a, giảm nếp nhăn, gia tăng độ s&aacute;ng của da, với sự kỳ diệu mang t&iacute;nh c&aacute;ch mạng cung cấp hơn 20 vi chất dinh dưỡng cần thiết cho da (Kho&aacute;ng Chất, Nguy&ecirc;n Tố Vi Lượng, Omega 3, Vitamin E).</p>\r\n\r\n<p>DIOR PRESTIGE La Micro-Huile De Rose cung cấp hơn 20 chất dinh dưỡng vi lượng cần thiết cho da khỏe mạnh v&agrave; đẹp.</p>\r\n\r\n<p>Trong mỗi chai tinh chất chứa hơn 10.000 vi&ecirc;n ngọc trai hồng cung cấp c&aacute;c vi chất dinh dưỡng gi&uacute;p t&aacute;i tạo, nu&ocirc;i dưỡng l&agrave;n da một c&aacute;ch ho&agrave;n hảo c&ugrave;ng kết hợp với hoa hồng Granville Loire mang đến sức sống cho l&agrave;n da một c&aacute;ch tuyệt vời cũng như lời giải đ&aacute;p cho b&iacute; quyết duy tr&igrave; vẻ đẹp</p>\r\n\r\n<p>Vẻ bề ngo&agrave;i được dưỡng ẩm, căng mượt đồng nghĩa với việc nếp nhăn đc ngăn ngừa, da cải thiện r&otilde; sau 7 ng&agrave;y sử dụng.&nbsp;</p>\r\n\r\n<p>Thẩm thấu ngay v&agrave; lu&ocirc;n v&agrave;o da l&agrave;m nhiệm vụ điều chuy&ecirc;n s&acirc;u, đ&aacute;nh thức l&agrave;n da với đ&uacute;ng cam kết từ m&igrave;nh (l&agrave; 1 người d&ugrave;ng). L&agrave; bước tiền đề cho lớp kem dưỡng tiếp theo được đi thẳng s&acirc;u v&agrave;o từng vi điểm của da mặt.</p>\r\n', '1713186288_s4.jpg', 1),
(17, 'Serum IMAGE Skincare Ageless ', 6, 5, 30, 0, 2000000, 2600000, 3, '<p>Trọng lượng: 30g</p>\r\n\r\n<p>Th&agrave;nh Phần Hoạt T&iacute;nh: Hyaluronic Acid, Kh&ocirc;ng chứa paraben</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Lỏng</p>\r\n\r\n<p>Loại Da: Mọi loại da, Da hỗn hợp</p>\r\n\r\n<p>Chăm S&oacute;c Da: Chống l&atilde;o h&oacute;a, Da kh&ocirc;</p>\r\n\r\n<p>Thể t&iacute;ch: 30ml</p>\r\n\r\n<p>Xuất xứ: Mỹ</p>\r\n\r\n<p>Th&agrave;nh phần: Hyaluronic Acid</p>\r\n\r\n<p>Tinh chất 6 loại HA l&agrave;m đầy v&agrave; căng mịn da AGELESS Total Pure Hyaluronic 6 Filler 30ml</p>\r\n\r\n<p>C&ocirc;ng dụng:</p>\r\n\r\n<p>- Tinh chất l&agrave;m đầy c&ocirc; đặc chứa 6 loại ph&acirc;n tử Axit Hyaluronic với trọng lượng ph&acirc;n tử thấp v&agrave; cao gi&uacute;p l&agrave;m mờ sự xuất hiện của nếp nhăn, cung cấp độ ẩm ngay lập tức, cải thiện cấu tr&uacute;c nền da v&agrave; mang lại l&agrave;n da căng mịn.</p>\r\n\r\n<p>- Củng cố cấu tr&uacute;c nền lớp trung b&igrave;, k&iacute;ch th&iacute;ch sản sinh nguy&ecirc;n b&agrave;o sợi v&agrave; Hyaluronic nội sinh mới.</p>\r\n\r\n<p>Th&agrave;nh phần:</p>\r\n\r\n<p>- Panthenol: Dưỡng ẩm, củng cố h&agrave;ng r&agrave;o bảo vệ da</p>\r\n\r\n<p>- Vitamin E: Dưỡng ẩm, chống oxy h&oacute;a.</p>\r\n\r\n<p>- 6 loại ph&acirc;n tử hyaluronic acid: Gi&uacute;p giữ nước trong da suốt nhiều giờ v&agrave; l&agrave;m đầy r&atilde;nh nhăn ngay lập tức</p>\r\n\r\n<p>- 6 loại ph&acirc;n tử HA: Time Released/Cross-linked HA, Hyaluronic Acid Synergized by Silanol Technology, Hyaluronic Acid, Hydrolyzed Hyaluronic Acid, Sodium Hyaluronate LMW, Sodium Hyaluronate MWW.</p>\r\n\r\n<p>Hướng dẫn sử dụng:</p>\r\n\r\n<p>Sau khi rửa mặt, lau kh&ocirc; vừa phải, khi da c&ograve;n ẩm thoa 2-4 giọt, vỗ nhẹ khắp mặt cho sản phẩm thẩm thấu đều tr&ecirc;n da. Sử dụng 2 lần s&aacute;ng v&agrave; tối.</p>\r\n', '1713186234_s5.jpg', 1),
(18, 'Serum Obagi Daily Hydro Drops', 6, 5, 50, 0, 450000, 900000, 1, '<p>- Dung t&iacute;ch: 5ml</p>\r\n\r\n<p>- Hạn sử dụng: 3 năm kể từ NSX</p>\r\n\r\n<p>- Xuất xứ: Mỹ</p>\r\n\r\n<p>- Nơi sản xuất: Mỹ.</p>\r\n\r\n<p>Tinh chất dưỡng ẩm Obagi Daily Hydro-Drops Serum cấp ẩm tức th&igrave;, &ecirc;m dịu với l&agrave;n da nhờ &aacute;p dụng c&ocirc;ng nghệ vi lỏng Isoplentix hạn chế k&iacute;ch ứng. L&agrave;n da bạn sẽ trở n&ecirc;n mềm mại, ẩm mịn tức th&igrave;, đồng thời c&aacute;c nếp nhăn sẽ được cải thiện r&otilde; rệt. Sản phẩm đ&atilde; được kiểm nghiệm l&acirc;m s&agrave;ng kh&ocirc;ng g&acirc;y mụn, kh&ocirc;ng g&acirc;y dị ứng bởi c&aacute;c b&aacute;c sĩ da liễu. Thiết kế dạng mini 5ml nhỏ xinh, tiện lợi khi mang đi du lịch v&agrave; trải nghiệm sản phẩm lần đầu.</p>\r\n\r\n<p>C&Ocirc;NG DỤNG &amp; LỢI &Iacute;CH</p>\r\n\r\n<p>- Dưỡng ẩm, gi&uacute;p da mềm mại, đủ ẩm, kh&ocirc;ng bị mất nước qua da</p>\r\n\r\n<p>- Chống l&atilde;o ho&aacute;, giảm thiểu vẻ ngo&agrave;i của nếp nhăn</p>\r\n\r\n<p>- Dưỡng s&aacute;ng da, gi&uacute;p da đều m&agrave;u</p>\r\n\r\n<p>- Tăng cường sức đề kh&aacute;ng, củng cố sức khoẻ h&agrave;ng r&agrave;o bảo vệ da.</p>\r\n\r\n<p>- Chống oxy ho&aacute;.</p>\r\n\r\n<p>HƯỚNG DẪN SỬ DỤNG</p>\r\n\r\n<p>- D&agrave;nh cho loại da: Da hỗn hợp, da thường, da dầu, da kh&ocirc;, da nhạy cảm.</p>\r\n\r\n<p>- Vấn đề da khuy&ecirc;n d&ugrave;ng: Da thiếu nước, da l&atilde;o ho&aacute;, da c&oacute; nếp nhăn.</p>\r\n\r\n<p>- C&aacute;ch sử dụng:</p>\r\n\r\n<p>Bước 1: Mở nắp, ống drop sẽ tự lấy sản phẩm.</p>\r\n\r\n<p>Bước 2: Nhấn đầu ống drop để sản phẩm ra tay. Sau đ&oacute; thoa serum tr&ecirc;n da mặt, cổ v&agrave; v&ugrave;ng ngực để hạt dầu vi lỏng tan đều v&agrave; thấm v&agrave;o da. Sử dụng mỗi s&aacute;ng v&agrave; tối sau khi l&agrave;m sạch da.</p>\r\n\r\n<p>LƯU &Yacute;</p>\r\n\r\n<p>- Chỉ sử dụng ngo&agrave;i da.</p>\r\n\r\n<p>- Tr&aacute;nh xa tầm tay trẻ em. B</p>\r\n\r\n<p>ẢNG TH&Agrave;NH PHẦN</p>\r\n\r\n<p>- Th&agrave;nh phần ch&iacute;nh: Vitamin B3 (Niacinamide), chiết xuất tinh dầu hoa Hibiscus v&agrave; Abyssinian</p>\r\n\r\n<p>- Th&agrave;nh phần đầy đủ: xem tr&ecirc;n bao b&igrave; C&Aacute;CH BẢO QUẢN</p>\r\n\r\n<p>- Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p>- Bảo quản ở nhiệt độ ph&ograve;ng từ 15&deg;C&ndash;25&deg;C.</p>\r\n', '1713186174_s6.jpg', 1),
(19, 'Kem Dưỡng Dior Prestige La Crème', 5, 4, 37, 3, 1100000, 1650000, 3, '<p>Loại Da: L&atilde;o h&oacute;a, Mọi loại da, Da hỗn hợp, Sần, Ch&agrave;m</p>\r\n\r\n<p>Chăm S&oacute;c Da: Chống l&atilde;o h&oacute;a, Mụn đầu đen, Se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, Quầng th&acirc;m, Nếp nhăn</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Thể t&iacute;ch: 15ml</p>\r\n\r\n<p>Kem Dưỡng Dior Prestige La Creme Texture Essentielle 15ml</p>\r\n\r\n<p>Chiết xuất từ những tinh hoa của hoa hồng v&ugrave;ng De Granville, t&aacute;i sinh v&agrave; ho&agrave;n hảo h&oacute;a l&agrave;n da. Sản phẩm nằm trong d&ograve;ng sản phẩm cao cấp Prestige của thương hiệu Dior.</p>\r\n\r\n<p>Khả năng phục hồi v&agrave; t&aacute;i tạo da si&ecirc;u việt sẽ nhanh ch&oacute;ng trả lại cho bạn một l&agrave;n da trắng s&aacute;ng, ẩm mịn.</p>\r\n\r\n<p>Đảm bảo độ thẩm thấu tuyệt đối, tan nhanh ngay khi chạm v&agrave;o da nhưng vẫn lưu giữ suốt một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng g&acirc;y b&oacute;ng nhờn.</p>\r\n\r\n<p>Kết hợp với c&ocirc;ng nghệ bao phủ to&agrave;n diện gi&uacute;p nu&ocirc;i dưỡng da từ s&acirc;u b&ecirc;n trong cho l&agrave;n da căng mọng đầy sức sống.</p>\r\n', '1713187460_a1.jpg', 1),
(20, 'Kem Dưỡng Dior Prestige La Cream De Nuit', 5, 4, 20, 0, 4100000, 4900000, 0, '<p>Trọng lượng: 250g</p>\r\n\r\n<p>Loại Da: Mọi loại da</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>Thể t&iacute;ch: 50ml</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Kem dưỡng Dior Prestige La Cream De Nuit.</p>\r\n\r\n<p>- Hồi phục m&ocirc; da chuyển động vượt trội nhất v&agrave;o ban đ&ecirc;m, cực k&igrave; l&agrave; từ 10 giờ đến 2 giờ s&aacute;ng.</p>\r\n\r\n<p>- Để tận dụng ưu điểm khoảng ho&agrave;n cảnh nổi bật n&agrave;y, c&aacute;c chuy&ecirc;n gia kh&aacute;m ph&aacute; hợp l&yacute; tại Dior đ&atilde; tham khảo ra một c&aacute;ch để tạo cho c&aacute;c th&agrave;nh phần hoạt t&iacute;nh trong những item tiền tiến nhất của Dior Prestige chống l&atilde;o h&oacute;a lao lực chăm chỉ hơn khi ngủ.</p>\r\n\r\n<p>&nbsp;- Th&agrave;nh phần sao trong d&atilde;y l&agrave; Rose de Granville extract. Rose de Granville của thương hiệu l&agrave; một trong những loại hoa hồng vững bền với c&aacute;c đặc th&ugrave; t&aacute;i đưa đến l&ecirc;n tiếng lần đầu ti&ecirc;n được ph&aacute;t hiện ra thấy trong vườn ri&ecirc;ng của Christian Dior ở Ph&aacute;p. phần mềm của n&oacute; được cho l&agrave; cực mạnh mẽ v&agrave; tự t&iacute;n khi chồi được chọn v&agrave;o đầu m&ugrave;a xu&acirc;n, v&agrave; chỉ c&ograve;n c&ograve;n tồn tại 800 c&acirc;y bụi trong vườn Dior m&agrave; từ l&uacute;c chồi tận gốc rất c&oacute; thể được thu hoạch.</p>\r\n\r\n<p>- Chất tinh chiết từ ​​Rose de Granville l&agrave;m chậm qui tr&igrave;nh sinh đẻ IL6, tăng cường t&aacute;i tạo tế b&agrave;o, tạo cho da ph&aacute;t triển th&agrave;nh dẻo quẹo hơn .</p>\r\n\r\n<p>- Nintar de Nuit huyết thanh - c&oacute; độ đậm đặc cao mạnh hơn của Rose de Granville tinh chiết của hai item trong dải - được cấu tạo v&ocirc; c&ugrave;ng của kem dưỡng da nhẹ, hấp thụ tất tả v&agrave; kh&ocirc;ng lưu lại kết th&uacute;c c&ograve;n ở tr&ecirc;n da. sử dụng La Creme de Nuit đa dạng v&agrave; phong ph&uacute; v&agrave; phong ph&uacute; để tối ưu ẩm da v&agrave; đ&oacute;ng dấu c&aacute;c kho&aacute;ng ch&acirc;t trong huyết thanh. nếu qu&yacute; vị mến mộ c&aacute;c item dưỡng da giữ m&ugrave;i nặng hoa, bạn sẽ rất vui khi biết rằng cả serum v&agrave; kem đều phải chiếm hữu m&ugrave;i hoả hồng dịu nhẹ.</p>\r\n', '1713188882_k4.jpg', 1),
(21, 'Kem Dưỡng Ẩm Gucci', 5, 2, 33, 2, 1000000, 1500000, 2, '<p>Thương hiệu: GUCCI</p>\r\n\r\n<p>Sản phẩm duy nhất: Kem dưỡng ẩm chiết xuất Phyto</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>Loại đặc điểm kỹ thuật: Đặc điểm kỹ thuật b&igrave;nh thường</p>\r\n\r\n<p>Mỹ phẩm chuy&ecirc;n dụng: Kh&ocirc;ng</p>\r\n\r\n<p>Trọng lượng: 8g</p>\r\n\r\n<p>Chất kem GUCCI thực sự rất tinh tế. N&oacute; c&oacute; khung xe bằng v&agrave;ng, mặt số m&agrave;u xanh lam khảm hoa văn vỏ biển v&agrave; gương soi. N&oacute; rất cổ điển v&agrave; đẹp! 100% th&agrave;nh phần tự nhi&ecirc;n, bao gồm bơ hạt mỡ, dầu jojoba, dầu thầu dầu v&agrave; dầu hoa hồng đen, c&oacute; thể được thoa l&ecirc;n mặt v&agrave; bất kỳ bộ phận n&agrave;o tr&ecirc;n cơ thể để điều trị khẩn cấp. Kết cấu tinh tế v&agrave; nhẹ, chỉ c&oacute; độ ẩm tốt v&agrave; kh&ocirc;ng c&oacute; m&ugrave;i vị.</p>\r\n', '1713188734_k5.jpg', 1),
(22, 'Kem dưỡng trắng da SKII', 12, 15, 40, 0, 3000000, 3500000, 4, '<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>Thể t&iacute;ch: 50ml</p>\r\n\r\n<p>Xuất xứ: Nhật Bản</p>\r\n\r\n<p>Kem dưỡng trắng da SKII Cellumination Deep Surge EX 50g trắng hồng tự nhi&ecirc;n</p>\r\n\r\n<p>Kem dưỡng Cellumination Deep Surge EX được thừa kế c&ocirc;ng nghệ l&agrave;m trắng bậc nhất của SK-II mang lại &aacute;nh s&aacute;ng tự nhi&ecirc;n cho l&agrave;n da, giảm thiểu c&aacute;c sắc tố da kh&ocirc;ng đều m&agrave;u trong thời gian ngắn nhất.</p>\r\n\r\n<p>SK-II Cellumination Deep Surge EX - Kem dưỡng trắng s&acirc;u thuộc d&ograve;ng dưỡng trắng Cellumination. Với th&agrave;nh phần ch&iacute;nh l&agrave; Pitera&trade; huyền thoại v&agrave; hỗn hợp hạt l&agrave;m s&aacute;ng b&oacute;ng từ b&ecirc;n trong Aura White Cocktail gi&uacute;p kiểm so&aacute;t v&agrave; ngăn chặn qu&aacute; tr&igrave;nh sản xuất Melanin, ngăn ngừa đốm n&acirc;u v&agrave; sạm n&aacute;m ngay từ đầu, giảm thiểu sự mất c&acirc;n bằng m&agrave;u sắc giữa c&aacute;c tế b&agrave;o, phục hồi hiệu quả c&aacute;c v&ugrave;ng da kh&ocirc; r&aacute;p sẽ l&agrave;m da bạn s&aacute;ng đẹp mịn m&agrave;ng.</p>\r\n\r\n<p>Kem dưỡng SK-II Cellumination Deep Surge EX cung cấp độ ẩm s&acirc;u cho da bạn mượt m&agrave;, trắng s&aacute;ng v&agrave; đều m&agrave;u hơn. Qua mỗi lần sử dụng, bạn sẽ cảm thấy r&otilde; rệt sự giảm thiểu của m&agrave;u da sạm v&agrave; c&agrave;ng thấy l&agrave;n da trở l&ecirc;n s&aacute;ng b&oacute;ng tự nhi&ecirc;n hơn.</p>\r\n\r\n<p>Kết cấu kem:</p>\r\n\r\n<p>Chất kem dạng gel trong, lỏng mịn m&agrave;ng đặc thấm nhanh dễ d&agrave;ng sau khi apply l&ecirc;n mặt. L&agrave;n da bạn sẽ s&aacute;ng m&agrave;u hơn, glow da căng mọng hơn v&agrave; trẻ trung hơn chỉ sau v&agrave;i tuần sử dụng.</p>\r\n\r\n<p>SK-II Cellumination Deep Surge EX giảm sự h&igrave;nh th&agrave;nh của sắc tố Melanin, hạn chế việc sạm da, giải quyết được nỗi lo da sạm khi h&egrave; đến cho c&aacute;c c&ocirc; g&aacute;i.</p>\r\n\r\n<p>Kem c&oacute; m&ugrave;i thơm nhẹ nh&agrave;ng dễ chịu, thấm nhanh kh&ocirc;ng bết d&iacute;nh. M&ugrave;a h&egrave; cũng kh&ocirc;ng sợ nhờn v&igrave; kem b&ocirc;i xong l&agrave; thẩm thấu lu&ocirc;n kh&ocirc;ng nhờn d&iacute;nh.</p>\r\n\r\n<p>Hướng dẫn sử dụng:</p>\r\n\r\n<p>Buổi tối sau khi d&ugrave;ng tinh chất dưỡng, h&atilde;y thoa một lượng bằng hạt ngọc trai l&ecirc;n da v&agrave; thoa đều. Massage nhẹ nh&agrave;ng sang ngang hoặc hướng c&aacute;c ng&oacute;n tay l&ecirc;n tr&ecirc;n để ngăn ngừa nguy cơ chảy xệ da. D&ugrave;ng tay vỗ nhẹ v&agrave;o 2 b&ecirc;n m&aacute;, đổi tư thế vỗ tr&aacute;n v&agrave; cằm để mạch m&aacute;u lưu th&ocirc;ng v&agrave; kem thẩm thấu. Cuối c&ugrave;ng d&ugrave;ng 2 b&agrave;n tay xoa v&agrave;o nhau khoảng 30 gi&acirc;y cho ấm, v&agrave; &aacute;p l&ecirc;n mặt trong v&ograve;ng 30 gi&acirc;y. Bạn sẽ thấy thư gi&atilde;n v&agrave; rất dễ chịu.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1713188687_k6.jpg', 1),
(23, 'Sữa Rửa Mặt Dior Prestige  ', 3, 4, 30, 0, 1200000, 1800000, 3, '<p>Loại Da: Mọi loại da</p>\r\n\r\n<p>Dạng rửa mặt: Dạng sữa</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng s&aacute;nh</p>\r\n\r\n<p>Trọng lượng: 120g</p>\r\n\r\n<p>Thể t&iacute;ch: 120ml</p>\r\n\r\n<p>- Dior Prestige La Mousse Micellaire Nettoyant đ&atilde; tạo ra một bước tiến mới cho l&agrave;n da, sữa rửa mặt kết hợp tẩy trang. Sữa rửa mặt Dior Prestige La Mousse Micellaire Nettoyant l&agrave; bước thiết yếu của chu tr&igrave;nh l&agrave;m sạch da, l&agrave; một liệu ph&aacute;p thanh lọc sẽ loại bỏ lớp trang điểm, loại bỏ bụi bẩn v&agrave; l&agrave;m mới l&agrave;n da.</p>\r\n\r\n<p>- Được l&agrave;m gi&agrave;u với c&aacute;c vi chất dinh dưỡng Rose de Granville, bọt micellar mới của Dior Prestige l&agrave; một loại sữa rửa mặt micellar gi&uacute;p l&agrave;m sạch da một c&aacute;ch mạnh mẽ v&agrave; tẩy trang ho&agrave;n hảo. C&ocirc;ng thức pH nhẹ nh&agrave;ng của bọt l&agrave;m sạch da mặt chống lại sự mất nước v&agrave; t&ocirc;n trọng sự c&acirc;n bằng mỏng manh của da để đảm bảo l&agrave;n da lu&ocirc;n thoải m&aacute;i nhất.</p>\r\n\r\n<p>- Th&agrave;nh phần c&oacute; chứa hợp chất Micro_gum, một c&ocirc;ng nghệ cải tiến độc quyền của Dior, gi&uacute;p l&agrave;m sạch s&acirc;u da mặt, tẩy đi lớp trang điểm hiệu quả.</p>\r\n\r\n<p>- Trải nghiệm mới của sữa rửa mặt cao cấp Dior Prestige La Mousse Micellaire Nettoyant với ấn tượng đầu ti&ecirc;n lu&ocirc;n l&agrave; m&ugrave;i hoa hồng dễ chịu ho&agrave;n to&agrave;n nguy&ecirc;n chất sang trọng, ho&agrave;n to&agrave;n tự nhi&ecirc;n trong l&agrave;nh tại thung lũng Loi</p>\r\n', '1713188790_y1.jpg', 1),
(24, 'Son Gucci chất son lì', 1, 2, 39, 1, 1650000, 1650000, 5, '<p>Trọng lượng: 30g</p>\r\n\r\n<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>C&ocirc;ng dụng cho m&ocirc;i: l&acirc;u tr&ocirc;i</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>▪️Chất son của GUC.CI đã đạt đến độ hoàn hảo, lì mịn, siêu mượt che được hết các khuyết điểm của môi.</p>\r\n\r\n<p>▪Cũng như có thể thoải mái lựa chọn cách đánh riêng từ phủ kín theo phong cách quyến rũ hay lòng môi theo style ngọt ngào, năng động. Rouge &Agrave; L&egrave;vres Mat c&oacute; chất son l&igrave; ho&agrave;n hảo, si&ecirc;u mịn, che được hết c&aacute;c khuyết điểm của m&ocirc;i, dưỡng ẩm tốt cho đ&ocirc;i m&ocirc;i của bạn nhưng vẫn rất bền m&agrave;u. Th&agrave;nh phần son an to&agrave;n kh&ocirc;ng g&acirc;y k&iacute;ch ứng da. Son Gucci giữ m&agrave;u kh&aacute; l&acirc;u, khi ăn uống th&igrave; m&agrave;u chỉ tr&ocirc;i 1 &iacute;t v&agrave; tr&ocirc;i kh&aacute; đều chứ kh&ocirc;ng chỉ tr&ocirc;i ở trong l&ograve;ng m&ocirc;i, đ&ocirc;i m&ocirc;i vẫn giữ được m&agrave;u sắc tươi s&aacute;ng, rạng rỡ.&nbsp;</p>\r\n', '1713188659_y2.jpg', 1),
(25, 'Son kem lì Gucci Rouge A Levres', 1, 2, 66, 4, 1420000, 1420000, 2, '<p>Điều kiện bảo quản: Điều kiện thường</p>\r\n\r\n<p>C&ocirc;ng dụng cho m&ocirc;i: l&acirc;u tr&ocirc;i</p>\r\n\r\n<p>Lớp nền ho&agrave;n th&agrave;nh: L&igrave;</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Kem</p>\r\n\r\n<p>Xuất xứ: &Yacute;</p>\r\n\r\n<p>Son Kem L&igrave; Gucci Rouge Liquid Matte 505 Janet Rust M&agrave;u Đỏ Đất l&agrave; thỏi son thuộc BST mới nhất 2022 của nh&agrave; Gucci với chất son l&igrave; nhưng kết cấu si&ecirc;u mướt mịn. Sở hữu sắc son đỏ đất cực trendy v&ocirc; c&ugrave;ng cuốn h&uacute;t cho n&agrave;ng th&ecirc;m c&aacute; t&iacute;nh, tươi tắn.</p>\r\n\r\n<p>Son Kem L&igrave; Gucci Rouge Liquid Matte 505 Janet Rust sở hữu thiết kế nắp v&agrave;ng c&oacute; sọc, th&acirc;n thuỷ tinh mờ l&igrave;, d&aacute;ng thon d&agrave;i nằm gọn trong một c&aacute;i nắm tay nắp mạ v&agrave;ng cực sang chảnh.Đặc biệt đầu cọ son được thiết kế v&aacute;t hơi nghi&ecirc;ng dễ sử dụng khi đ&aacute;nh son l&ecirc;n m&ocirc;i. Cầm tr&ecirc;n tay thỏi son mới c&oacute; thể thấy hết được sự tỉ mỉ m&agrave; nh&agrave; Gucci đ&atilde; tạo n&ecirc;n.</p>\r\n\r\n<p>Gucci Rouge Liquid Matte 505 Janet Rust l&ecirc;n m&ocirc;i chuẩn đẹp, từ lần đầu chạm v&agrave;o bờ m&ocirc;i đ&atilde; khiến bao n&agrave;ng đi&ecirc;u đứng. M&agrave;u son đỏ đất si&ecirc;u trendy v&agrave; độ hot chưa bao giờ dừng lại. M&agrave;u son đỏ đất n&agrave;y ph&ugrave; hợp với nhiều t&ocirc;ng da c&aacute;c c&ocirc; n&agrave;ng kh&ocirc;ng cần phải lo ngại. Khi sở hữu thởi son Gucci Rouge Liquid Matte 505 Janet Rust n&agrave;y, son ph&ugrave; hợp với nhiều phong c&aacute;ch trang điểm kh&aacute;c nhau từ những c&ocirc; n&agrave;ng dịu d&agrave;ng đến c&aacute; t&iacute;nh nổi bật.</p>\r\n', '1713188639_y3.jpg', 1),
(26, 'Set Son Môi Dior Rouge Minaudiere ', 1, 4, 35, 5, 3100000, 3650000, 7, '<p>Trọng lượng: 100g</p>\r\n\r\n<p>Xuất xứ: Ph&aacute;p</p>\r\n\r\n<p>C&ocirc;ng Thức: Dạng Thỏi</p>\r\n\r\n<p>Set Son M&ocirc;i Dior Rouge Minaudiere 2023 k&egrave;m hộp đựng vừa ra mắt si&ecirc;u sang chảnh đang l&agrave;m mưa l&agrave;m gi&oacute; của c&aacute;c t&iacute;n đồ thời trang. Mua son được cả t&uacute;i. Rất hợp mang đi tặng hoặc tự tặng cho ch&iacute;nh m&igrave;nh trong dịp lễ sắp tới nha</p>\r\n\r\n<p>Set gồm 4 thỏi son fullsize của DIOR, chạm khắc tỉ mỉ v&agrave; tinh xảo. Hộp đựng son m&ocirc;i tr&ograve;n v&agrave; 1 hộp vu&ocirc;ng c&oacute; gương + d&acirc;y đeo. Clutch DIOR đen đeo ngang h&ocirc;ng c&oacute; thể th&aacute;o x&iacute;ch rồi chỉ cầm clutch th&ocirc;i cũng xinh lắm, hoặc đeo vai th&igrave; sang khỏi b&agrave;n</p>\r\n\r\n<p>Set gồm 4 thỏi son fullsize + clutch xịn x&ograve;, th&ecirc;m d&acirc;y th&agrave;nh t&uacute;i đeo ch&eacute;o đẹp lắm. Mua t&iacute;nh ra l&atilde;i v&igrave; khi hết son m&igrave;nh vẫn c&ograve;n t&uacute;i để đeo.</p>\r\n\r\n<p>&nbsp;● 1 Son Rouge 913 Matte</p>\r\n\r\n<p>● 1 Son Rouge 674 Velvet</p>\r\n\r\n<p>● 1 Son Rouge 965 Velvet</p>\r\n\r\n<p>● 1 Son Rouge 471 Satin</p>\r\n\r\n<p>● 1 lipstick holder</p>\r\n\r\n<p>● 1 hộp đựng son k&egrave;m d&acirc;y đeo</p>\r\n', '1713188601_y4.jpg', 1),
(27, 'Son thỏi Rouge Dior ', 1, 4, 100, 5, 1800000, 1800000, 6, '<p>PHI&Ecirc;N BẢN GIỚI HẠN VỎ ĐỎ GỒM 4 M&Agrave;U SON 999/777/772/720 RA MẮT&nbsp; SỐ LƯỢNG GIỚI HẠN QUA M&Ugrave;A L&Agrave; HẾT MỌI NGƯỜI NHANH TAY CHỐT ĐƠN&nbsp;</p>\r\n\r\n<p>Lưu &yacute;: Mini v&agrave; box thường kh&ocirc;ng tặng k&egrave;m t&uacute;i giấy h&atilde;ng.</p>\r\n\r\n<p>Thiết kế thỏi son lần n&agrave;y l&agrave; một bứt ph&aacute; mới của Dior khi đ&atilde; thay đổi packaging cũ đ&atilde; l&agrave;m n&ecirc;n dấu ấn ri&ecirc;ng của h&atilde;ng, th&agrave;nh một phi&ecirc;n bản sang hơn, tinh tế v&agrave; hợp thời hơn rất nhiều.</p>\r\n\r\n<p>Chất son Dior Rouge vẫn được chia l&agrave;m c&aacute;c d&ograve;ng: Satin - Matte - Velvet như phi&ecirc;n bản cũ nhưng c&oacute; sự cải tiến hơn.</p>\r\n', '1713188621_y5.jpg', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`evaluate_id`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Chỉ mục cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  ADD PRIMARY KEY (`inventory_detail_id`);

--
-- Chỉ mục cho bảng `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`metric_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9335;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `evaluate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `inventory_detail`
--
ALTER TABLE `inventory_detail`
  MODIFY `inventory_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `metrics`
--
ALTER TABLE `metrics`
  MODIFY `metric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
