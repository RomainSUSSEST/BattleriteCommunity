<?php include "assets/include/header.php" ?>
<?php include "assets/include/cookieconnect.php" ?>

<div class="nk-main">

    <!-- START: Breadcrumbs -->
    <div class="nk-gap-1"></div>
    <div class="container">
        <ul class="nk-breadcrumbs">


            <li><a href="index.html">Home</a></li>


            <li>
                <span class="fa fa-angle-right"></span>
            </li>

            <li>
                <span>Mes Statistiques</span>
            </li>

        </ul>
    </div>
    <div class="nk-gap-1"></div>
    <!-- END: Breadcrumbs -->




    <div class="container">
                <div class="row equal-height vertical-gap">
                    <div class="nk-gap-2"></div>
            <!-- START: Info Box -->
            <div class="nk-info-box text-info">
                <div class="nk-info-box-icon">
                    <i class="ion-information"></i>
                </div>
                <div class="nk-info-box-close nk-info-box-close-btn">
                    <i class="ion-close-round"></i>
                </div>
                <h3>Info!</h3>
                <em>Les statistiques sont affichées depuis <a href="https://battlerite-stats.ru/" style="color: #EB4927">battlerite-stats.ru</a>.</em>
                <div class="nk-gap-1"></div>
            </div>
            <!-- END: Info Box -->
            <iframe src="https://battlerite-stats.ru/" width="100%" height="470px" frameborder="0">
                <p>Your browser does not support iframes.</p>
            </iframe>

    <!-- START: Footer -->
    <?php include "assets/include/footer.php" ?>
