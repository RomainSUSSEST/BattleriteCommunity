<?php include "assets/include/header.php" ?>

    <div class="nk-main">

        <!-- START: Breadcrumbs -->
        <div class="nk-gap-1"></div>
        <div class="container">
            <ul class="nk-breadcrumbs">


                <li><a href="index.php">Home</a></li>


                <li>
                    <span class="fa fa-angle-right"></span>
                </li>

                <li><a href="#">Contact</a></li>


                <li>
                    <span class="fa fa-angle-right"></span>
                </li>

                <li>
                    <span>Contact</span>
                </li>

            </ul>
        </div>
        <div class="nk-gap-1"></div>
        <!-- END: Breadcrumbs -->




        <div class="container">
            <div class="row equal-height vertical-gap">
                <div class="col-lg-8">
                    <form class="nk-form nk-form-ajax" action="php/contact.php">
                        <p>Pour contacter l'équipe de Battlerite Community, veuillez remplir le formulaire ci-dessous. Nous vous recontacterons dans les plus brefs délais.</p>
                        <div class="row vertical-gap sm-gap">
                            <div class="col-md-6">
                                <input type="text" class="form-control required" name="name" placeholder="Pseudonyme">
                            </div>
                            <div class="col-md-6">
                                <input type="email" class="form-control required" name="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="nk-gap"></div>
                        <textarea class="form-control required" name="message" rows="5" placeholder="Message"></textarea>
                        <div class="nk-gap-1"></div>
                        <button class="nk-btn nk-btn-rounded nk-btn-color-dark-3">
                            <span>Envoyer</span>
                            <span class="icon"><i class="ion-alert"></i></span>
                        </button>
                        <div class="nk-form-response-success"></div>
                        <div class="nk-form-response-error"></div>
                    </form>
                </div>
                <div class="col-lg-4">
                    <!--
                    START: Sidebar

                    Additional Classes:
                        .nk-sidebar-left
                        .nk-sidebar-right
                        .nk-sidebar-sticky
                -->
<?php include "assets/include/sidebar.php" ?>
        <!-- START: Footer -->
<?php include "assets/include/footer.php" ?>