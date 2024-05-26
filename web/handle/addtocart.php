<?php
	session_start();
	include('../../quantri/config/config.php');
	//them so luong
	if(isset($_GET['sum'])){
		$status = 1;
		$product_id=$_GET['sum'];
		$sql_get_product = "SELECT * FROM product WHERE product_id = '".$product_id."' LIMIT 1";
		$query_get_product = mysqli_query($mysqli, $sql_get_product);
		$product_item = mysqli_fetch_array($query_get_product);
		$quantity = $product_item['product_quantity'];
		foreach($_SESSION['cart'] as $cart_item){
			if($cart_item['product_id']!=$product_id){
				$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
				$_SESSION['cart'] = $product;
			} else{
				$total_count = $cart_item['product_quantity'] + 1;
				if($cart_item['product_quantity']<$quantity){
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$total_count,'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
				}else{
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
					$status = 0;
				}
				$_SESSION['cart'] = $product;
			}
		}
		if ($status == 1) {
			header('Location:../../index.php?page=cart&message=success');
		} else {
			header('Location:../../index.php?page=cart&message=error');
		}
	}
	//tru so luong
	if(isset($_GET['div'])){
		$product_id=$_GET['div'];
		foreach($_SESSION['cart'] as $cart_item){
			if($cart_item['product_id']!=$product_id){
				$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
				$_SESSION['cart'] = $product;
			}else{
				$total_count = $cart_item['product_quantity'] - 1;
				if($cart_item['product_quantity']>1){
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$total_count,'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
				}else{
					$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
				}
				$_SESSION['cart'] = $product;
			}
		}
		header('Location:../../index.php?page=cart&message=success');
	}
	// Xoa san pham khoi gio hang
	if(isset($_SESSION['cart']) && isset($_GET['delete'])) {
		$product_id = $_GET['delete'];
		foreach ($_SESSION['cart'] as $cart_item) {
			if ($cart_item['product_id'] != $product_id) {
				$product[]= array('product_id'=>$cart_item['product_id'], 'product_name'=>$cart_item['product_name'],'product_quantity'=>$cart_item['product_quantity'],'product_price'=>$cart_item['product_price'],'product_sale'=>$cart_item['product_sale'],'product_image'=>$cart_item['product_image']);
			}
			$_SESSION['cart'] = $product;
			header('Location:../../index.php?page=cart&message=success');
		}
	}
	// them sanpham vao gio hang
// thêm sản phẩm vào giỏ hàng
if(isset($_POST['addtocart'])){
    $product_id = $_GET['product_id'];
    $product_quantity = isset($_POST['product_quantity']) ? (int)$_POST['product_quantity'] : 1; // Đảm bảo luôn có giá trị và là số nguyên

    if ($product_quantity > 0) { // Chỉ xử lý nếu số lượng là số dương
        $sql = "SELECT * FROM product WHERE product_id = '" . $product_id . "' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        $row = mysqli_fetch_array($query);

        if($row){
            $new_product = array(
                array(
                    'product_id' => $product_id,
                    'product_name' => $row['product_name'],
                    'product_quantity' => $product_quantity,
                    'product_price' => $row['product_price'],
                    'product_sale' => $row['product_sale'],
                    'product_image' => $row['product_image']
                )
            );

            // Kiểm tra session giỏ hàng tồn tại
            if(isset($_SESSION['cart'])){
                $found = false;
                foreach($_SESSION['cart'] as $cart_item){
                    if($cart_item['product_id'] == $product_id){
                        // Cộng dồn số lượng
                        $cart_item['product_quantity'] += $product_quantity;
                        $found = true;
                    }
                    $product[] = $cart_item;
                }
                if(!$found){
                    // Liên kết dữ liệu new_product với product
                    $_SESSION['cart'] = array_merge($product, $new_product);
                } else {
                    $_SESSION['cart'] = $product;
                }
            } else {
                $_SESSION['cart'] = $new_product;
            }
        }
        header('Location: ' . $_SERVER['HTTP_REFERER'] . '&message=success');
    } else {
        // Gửi lại người dùng thông báo lỗi nếu số lượng không hợp lệ
        header('Location: ' . $_SERVER['HTTP_REFERER'] . '&error=Invalid quantity');
    }
}

	// mua ngay
	if(isset($_POST['buynow'])){
		$product_id = $_GET['product_id'];
		$product_quantity = isset($_POST['product_quantity']) ? (int)$_POST['product_quantity'] : 0;
	
		// Đảm bảo rằng số lượng sản phẩm là một số dương
		if ($product_quantity > 0) {
			$sql ="SELECT * FROM product WHERE product_id='" . mysqli_real_escape_string($mysqli, $product_id) . "' LIMIT 1";
			$query = mysqli_query($mysqli, $sql);
			$row = mysqli_fetch_array($query);
			if($row){
				$new_product = array(array('product_id' => $product_id, 'product_name' => $row['product_name'], 'product_quantity' => $product_quantity, 'product_price' => $row['product_price'], 'product_sale' => $row['product_sale'], 'product_image' => $row['product_image']));
				
				// Kiểm tra xem giỏ hàng session đã tồn tại chưa
				if(isset($_SESSION['cart'])){
					$found = false;
					$product = array(); // Khởi tạo mảng sản phẩm để tránh lỗi biến chưa được định nghĩa
					foreach($_SESSION['cart'] as $cart_item){
						// Kiểm tra sản phẩm đã có trong giỏ chưa
						if($cart_item['product_id'] == $product_id){
							$cart_item['product_quantity'] += $product_quantity;
							$product[] = $cart_item;
							$found = true;
						} else {
							$product[] = $cart_item;
						}
					}
					if(!$found){
						// Kết hợp dữ liệu sản phẩm mới với sản phẩm đã có trong giỏ
						$_SESSION['cart'] = array_merge($product, $new_product);
					} else {
						$_SESSION['cart'] = $product;
					}
				} else {
					$_SESSION['cart'] = $new_product;
				}
			}
		} else {
			// Xử lý trường hợp số lượng sản phẩm là zero hoặc âm
			header('Location:../../index.php?page=product_detail&product_id=' . $product_id . '&error=invalid_quantity');
			exit;
		}
		header('Location:../../index.php?page=cart');
	}
	