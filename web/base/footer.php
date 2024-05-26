<footer class="footer">
    <div class="footer__container">
        <div class="container">
            <div class="row">
                <div class="col" style="--w-md: 4">
                    <div class="footer__block pd-top">
                        <div class="block__heading">
                            Danh mục sản phẩm
                        </div>
                        <ul class="block__list">
                            <?php
                            $sql_category_list = "SELECT * FROM category ORDER BY category_id DESC";
                            $query_category_list = mysqli_query($mysqli, $sql_category_list);
                            while ($row_category = mysqli_fetch_array($query_category_list)) {
                            ?>
                                <li class="block__item"><a class="footer__anchor" href="index.php?page=product_category&category_id=<?php echo $row_category['category_id'] ?>"><?php echo $row_category['category_name'] ?></a></li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="col" style="--w-md: 4">
                    <div class="footer__block pd-top">
                        <div class="block__heading">
                            Thương hiệu
                        </div>
                        <ul class="block__list">
                            <?php
                            $sql_brand_list = "SELECT * FROM brand ORDER BY brand_id DESC";
                            $query_brand_list = mysqli_query($mysqli, $sql_brand_list);
                            while ($row_brand = mysqli_fetch_array($query_brand_list)) {
                            ?>
                                <li class="block__item"><a class="footer__anchor" href="index.php?page=product_brand&brand_id=<?php echo $row_brand['brand_id'] ?>"><?php echo $row_brand['brand_name'] ?></a></li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="col" style="--w-md: 4">
                    <div class="footer__block pd-top">
                        <div class="footer__logo">
                            <img src="./style/images/logo/ha.png" alt="logo"  height="300">
                        </div>
                    </div>
                </div>
            </div>
            <br>
            
            <div class="map__iframe">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30231.667056892187!2d105.66215846313152!3d18.71068132278218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3139d1fe7c3779eb%3A0xdc076f1bb1825ca9!2zTmdoaSBQaMO6LCBUcC4gVmluaCwgTmdo4buHIEFuLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2sus!4v1699533679073!5m2!1svi!2sus" height="300" width="1120" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
            
            <div class="row">
                <div class="col pd-top" style="--w-md: 4;">
                    <div class="footer__subscribe">
                        <h3 class="block__heading text-center">
                            Nhập vào email của bạn để theo dõi chúng tôi
                        </h3>
                        <div class="email-signup__form justify-center d-flex">
                            <div class="w-100 form__container p-relative">
                                <form action="#">
                                    <input class="email-signup__input btn h4 w-100" type="email" placeholder="email" name="contact">
                                    <button type="submit" class="icon__input p-absolute">
                                        <img class="svg__icon" src="./style/images/icon/icon-nextlink.svg" alt="next">
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col" style="--w-md: 4;"></div>
                <div class="col pd-top d-flex align-center" style="--w-md:4;">
                    <ul class="social__items d-flex align-center">
                        <li class="social__item">
                            <a class="" href="#">
                                <img class="svg__icon d-block" src="./style/images/icon/twitter.svg" alt="" />
                            </a>
                        </li>
                        <li class="social__item">
                            <a class="" href="#">
                                <img class="svg__icon d-block" src="./style/images/icon/facebook.svg" alt="" />
                            </a>
                        </li>
                        <li class="social__item">
                            <a class="" href="#">
                                <img class="svg__icon d-block" src="./style/images/icon/instagram.svg" alt="" />
                            </a>
                        </li>
                        <li class="social__item">
                            <a class="" href="#">
                                <img class="svg__icon d-block" src="./style/images/icon/tiktok.svg" alt="" />
                            </a>
                        </li>
                        <li class="social__item">
                            <a class="" href="#">
                                <img class="svg__icon d-block" src="./style/images/icon/youtube.svg" alt="" />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="container">
                <div class="row">
                    <div class="col text-center">
                        <p class="footer__copy--right">Cảm ơn bạn đã theo dõi sản phẩm của chúng tôi </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>