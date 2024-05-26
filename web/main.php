<!-- start header -->
<?php
include("./web/base/header.php");
?>
<!-- end header -->

<?php
    if (isset($_GET['page'])) {
        $action = $_GET['page'];
    }else {
        $action = '';
    }

    if ($action == 'about') {
        include("./web/main/about.php");
    }
    elseif ($action == 'blog') {
        include("./web/main/blog.php");
    }
    elseif ($action == 'article') {
        include("./web/main/article.php");
    }
    elseif ($action == 'contact') {
        include("./web/main/contact.php");
    }
    elseif ($action == 'cart') {
        include("./web/main/cart.php");
    }
    elseif ($action == 'products') {
        include("./web/main/products.php");
    }
    elseif ($action == 'search'){
        include("./web/main/search.php");
    }
    elseif ($action == 'product_detail'){
        include("./web/main/product_detail.php");
    }
    elseif ($action == 'checkout'){
        include("./web/main/checkout.php");
    }
    elseif ($action == 'thankiu'){
        include("./web/main/thankiu.php");
    }
    elseif ($action == 'login'){
        include("./web/main/login.php");
    }
    elseif ($action == 'register'){
        include("./web/main/register.php");
    }
    elseif ($action == 'my_account'){
        include("./web/main/my_account.php");
    }
    elseif ($action == 'order_detail'){
        include("./web/base/order-detail.php");
    }
    elseif ($action == 'password_change'){
        include("./web/base/password-change.php");
    }
    elseif ($action == '404'){
        include("./web/main/404.php");
    }
    else {
        include("./web/main/home.php");
    }
?>

<!-- start footer -->
<?php
include("./web/base/footer.php");
?>
<!-- end footer -->