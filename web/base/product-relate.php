<?php
$sql_product_list = "SELECT * FROM product ORDER BY product_id DESC LIMIT 4";
$query_product_list = mysqli_query($mysqli, $sql_product_list);
?>
<div class="product-list">
    <div class="container pd-section">
        <div class="row">
            <div class="col">
                <div class="product__title">
                    <h2 class="h3"></h2>
                </div>
            </div>
        </div>

    </div>
</div>