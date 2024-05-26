<?php
session_start();
include('../../quantri/config/config.php');
require '../../carbon/autoload.php';


use Carbon\Carbon;
use Carbon\CarbonInterval;




if (isset($_POST['redirect'])) {
    // Sinh ma don hang va ma giao hang
    $order_code = rand(0, 9999);
    $delivery_id = rand(0, 9999);
    $order_date = Carbon::now('Asia/Ho_Chi_Minh');

    $_SESSION['order_code'] = $order_code;

    // Lay id tai khoan thong qua session
    $account_id = $_SESSION['account_id'];

    // Lay thong tin thong qua phuong thuc POST
    $delivery_name = $_POST['delivery_name'];
    $delivery_address = $_POST['delivery_address'];
    $delivery_phone = $_POST['delivery_phone'];
    $delivery_note = $_POST['delivery_note'];
    $order_type = $_POST['order_type'];

    // Gan gia thong tin giao hang vao session delivery
    $_SESSION['delivery_id'] = $delivery_id;
    $_SESSION['delivery_name'] = $delivery_name;
    $_SESSION['delivery_address'] = $delivery_address;
    $_SESSION['delivery_phone'] = $delivery_phone;
    $_SESSION['delivery_note'] = $delivery_note;

    $total_amount = 0;
    $validate = 1;
    foreach ($_SESSION['cart'] as $cart_item) {
        $product_id = $cart_item['product_id'];
        $query_get_product = mysqli_query($mysqli, "SELECT * FROM product WHERE product_id = $product_id");
        $product = mysqli_fetch_array($query_get_product);
        if ($product['product_quantity'] < $cart_item['product_quantity']) {
            $validate = 0;
        }
        $total_amount += ($cart_item['product_price'] - ($cart_item['product_price'] / 100 * $cart_item['product_sale'])) * $cart_item['product_quantity'];
    }
    if ($validate == 1) {

        // Gia tri tong tien
        $_SESSION['total_amount'] = $total_amount;

        // neu thanh toan bang tien mat
        if ($order_type == 1) {
            // them dia chi giao hang
            $insert_delivery = "INSERT INTO delivery(delivery_id, account_id, delivery_name, delivery_phone, delivery_address, delivery_note) VALUE ($delivery_id, $account_id, '$delivery_name', '$delivery_phone', '$delivery_address', '$delivery_note')";
            mysqli_query($mysqli, $insert_delivery);

            // insert don hang
            $insert_order = "INSERT INTO orders(order_code, order_date, account_id, delivery_id, total_amount, order_type, order_status) 
            VALUE ($order_code, '" . $order_date . "', $account_id, '" . $delivery_id . "', $total_amount, 1, 0)";

            $query_insert_order = mysqli_query($mysqli, $insert_order);
            if ($query_insert_order) {
                //them chi tiet don hang
                foreach ($_SESSION['cart'] as $cart_item) {
                    $product_id = $cart_item['product_id'];
                    $query_get_product = mysqli_query($mysqli, "SELECT * FROM product WHERE product_id = $product_id");
                    $product = mysqli_fetch_array($query_get_product);
                    if ($product['product_quantity'] >= $cart_item['product_quantity']) {
                        $product_quantity = $cart_item['product_quantity'];
                        $quantity = $product['product_quantity'] - $product_quantity;
                        $quantity_sales = $product['quantity_sales'] + $product_quantity;
                        $product_price = $cart_item['product_price'];
                        $product_sale = $cart_item['product_sale'];
                        $insert_order_detail = "INSERT INTO order_detail(order_code, product_id, product_quantity, product_price, product_sale) VALUE ('" . $order_code . "', '" . $product_id . "', '" . $product_quantity . "', '" . $product_price . "', '" . $product_sale . "')";
                        mysqli_query($mysqli, $insert_order_detail);
                        mysqli_query($mysqli, "UPDATE product SET product_quantity = $quantity, quantity_sales = $quantity_sales WHERE product_id = $product_id");
                    }
                }
                $update_total_amount = "UPDATE orders SET total_amount = $total_amount WHERE order_code = $order_code";
                $query_total_amount = mysqli_query($mysqli, $update_total_amount);

                unset($_SESSION['cart']);
                header('Location:../../index.php?page=thankiu&order_type=1');
            }
      

            if (isset($vnp_BankCode) && $vnp_BankCode != "") {
                $inputData['vnp_BankCode'] = $vnp_BankCode;
            }
            if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
                $inputData['vnp_Bill_State'] = $vnp_Bill_State;
            }

            ksort($inputData);
            $query = "";
            $i = 0;
            $hashdata = "";
            foreach ($inputData as $key => $value) {
                // if ($i == 1) {
                //     $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
                // } else {
                //     $hashdata .= urlencode($key) . "=" . urlencode($value);
                //     $i = 1;
                // }
                if ($i == 1) {
                    $hashdata .= '&' . $key . "=" . $value;
                } else {
                    $hashdata .= $key . "=" . $value;
                    $i        = 1;
                }
                $query .= urlencode($key) . "=" . urlencode($value) . '&';
            }

            $vnp_Url = $vnp_Url . "?" . $query;
            if (isset($vnp_HashSecret)) {
                $vnpSecureHash = hash('sha256', $vnp_HashSecret . $hashdata);
                $vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
            }
            $returnData = array(
                'code' => '00', 'message' => 'success', 'data' => $vnp_Url
            );
            if (isset($_POST['redirect'])) {
                header('Location: ' . $vnp_Url);
                die();
            } else {
                echo json_encode($returnData);
            }
        }
    } else {
        header('Location:../../index.php?page=404');
    }
}


