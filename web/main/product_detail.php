<!-- start product detail -->
<?php
include("./web/base/product-detail.php");
?>
<!-- end product detail -->
<?php
if (isset($_SESSION['account_id'])) {
?>
    <!-- start product filtering -->
    <?php
    include("./web/base/product_filtering.php");
    ?>
    <!-- end product filtering -->
<?php
} else {
?>
    <!-- start product list -->
    <?php
    include("./web/base/product-relate.php");
    ?>
    <!-- end product list -->
<?php
}
?>