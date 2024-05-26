<?php 
// Bao gồm tập tin cấu hình  
require_once './quantri/config/config.php'; 
 
// Bao gồm tập tin kết nối cơ sở dữ liệu  
require_once './config-paypal.php'; 
 
$payment_ref_id = $statusMsg = ''; 
$status = 'error'; 
 
// Kiểm tra xem ID thanh toán có không rỗng 
if(!empty($_GET['checkout_ref_id'])){ 
    $payment_txn_id  = base64_decode($_GET['checkout_ref_id']); 
     
    // Lấy dữ liệu giao dịch từ cơ sở dữ liệu 
    $sqlQ = "SELECT id,payer_id,payer_name,payer_email,payer_country,order_id,transaction_id,paid_amount,paid_amount_currency,payment_source,payment_status,created FROM transactions WHERE transaction_id = ?"; 
    $stmt = $mysqli->prepare($sqlQ);  
    $stmt->bind_param("s", $payment_txn_id); 
    $stmt->execute(); 
    $stmt->store_result(); 
 
    if($stmt->num_rows > 0){ 
        // Lấy chi tiết giao dịch 
        $stmt->bind_result($payment_ref_id, $payer_id, $payer_name, $payer_email, $payer_country, $order_id, $transaction_id, $paid_amount, $paid_amount_currency, $payment_source, $payment_status, $created); 
        $stmt->fetch(); 
         
        $status = 'success'; 
        $statusMsg = 'Thanh toán của bạn đã thành công!'; 
    }else{ 
        $statusMsg = "Giao dịch đã thất bại!"; 
    } 
}else{ 
    header("Location: index.php"); 
    exit; 
} 
?>

<?php if(!empty($payment_ref_id)){ ?>
    <h1 class="<?php echo $status; ?>"><?php echo $statusMsg; ?></h1>
    
    <h4>Thông tin thanh toán</h4>
    <p><b>Số tham chiếu:</b> <?php echo $payment_ref_id; ?></p>
    <p><b>ID đơn hàng:</b> <?php echo $order_id; ?></p>
    <p><b>ID giao dịch:</b> <?php echo $transaction_id; ?></p>
    <p><b>Số tiền đã thanh toán:</b> <?php echo $paid_amount.' '.$paid_amount_currency; ?></p>
    <p><b>Trạng thái thanh toán:</b> <?php echo $payment_status; ?></p>
    <p><b>Ngày tạo:</b> <?php echo $created; ?></p>
    
    <h4>Thông tin người thanh toán</h4>
    <p><b>ID:</b> <?php echo $payer_id; ?></p>
    <p><b>Tên:</b> <?php echo $payer_name; ?></p>
    <p><b>Email:</b> <?php echo $payer_email; ?></p>
    <p><b>Quốc gia:</b> <?php echo $payer_country; ?></p>
    
    <h4>Thông tin sản phẩm</h4>
    <p><b>Tên:</b> <?php echo $itemName; ?></p>
    <p><b>Giá:</b> <?php echo $itemPrice.' '.$currency; ?></p>
<?php }else{ ?>
    <h1 class="error">Thanh toán của bạn đã thất bại!</h1>
    <p class="error"><?php echo $statusMsg; ?></p>
<?php } ?>
