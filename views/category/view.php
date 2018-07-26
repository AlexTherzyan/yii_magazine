<?php

/* @var $this yii\web\View */


?>


<section id="advertisement">
    <div class="container">
        <img src="/images/shop/advertisement.jpg" alt=""/>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>

                    <ul class="catalog category-products">
                        <?=\app\components\MenuWidget::widget(['tpl' => 'menu'])?>
                    </ul>





                    <div class="shipping text-center"><!--shipping-->
                        <img src="/images/home/shipping.jpg" alt=""/>
                    </div><!--/shipping-->

                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center"><?=$category->title ?></h2>

                    <?php if (!empty($products)): ?>

                        <?php $i = 0; foreach ($products as $product): ?>



                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="<?=$product['img']?>" alt="" />

                                            <p><?=$product['title']?></p>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">

                                                <p><?=$product['title']?></p>
                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Заказать</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <?php
                            $i++;
                            if ($i % 3== 0) echo '   <div class="row"></div>';
                            ?>
                        <?php endforeach; ?>
                    <?php else: ?>
                    <h2>Товаров нет</h2>

                    <?php endif; ?>


                    <div class="row"></div>

                    <?php
                            echo \yii\widgets\LinkPager::widget([
                                    'pagination' => $pages
                            ])
                    ?>


<!--                    <ul class="pagination">-->
<!--                        <li class="active"><a href="">1</a></li>-->
<!--                        <li><a href="">2</a></li>-->
<!--                        <li><a href="">3</a></li>-->
<!--                        <li><a href="">&raquo;</a></li>-->
<!--                    </ul>-->

                </div><!--features_items-->
            </div>
        </div>
    </div>
</section>