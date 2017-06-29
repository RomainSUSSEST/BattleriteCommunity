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
                    <a href="wiki.php"><span>Wiki Battlerite</span></a>
                </li>

            </ul>
        </div>
        <div class="nk-gap-1"></div>
        <!-- END: Breadcrumbs -->




        <div class="container">
            <div class="row equal-height vertical-gap">
                <div class="col-lg-8">
                    <!-- START: Search Form -->
                    <form action="#" method="post" class="nk-form nk-form-style-1">
                        <div class="input-group">
                            <input type="text" name="s" class="form-control" placeholder="Rechercher...">
                            <span class="nk-input-group-btn">
                                <button class="nk-btn nk-btn-color-main-1">
                                    <span class="fa fa-search"></span>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- END: Search Form -->
                    <div class="nk-gap-2"></div>
                    <!-- START: Latest Pictures -->

                    <?php
                    if (!isset($_POST['s'])) {
                        $stmt = $con->prepare("SELECT DISTINCT classe_champion FROM wiki");
                        $stmt->execute();

                        while ($row = $stmt->fetch()) {
                            echo "<h2 class=\"nk-decorated-h h3\">
                                <span>
                                <span class=\"text-main-1\">".$row["classe_champion"]."</span> Champions</span><div id=".$row["classe_champion"]."></div>
                              </h2><div class=\"nk-gap\"></div>
                        <div class=\"row vertical-gap multi-columns-row\">";


                            $stmt2 = $con->prepare("SELECT nom_champion FROM wiki WHERE classe_champion ='".$row["classe_champion"]."'");
                            $stmt2->execute();
                            while($raw = $stmt2->fetch()){
                                echo "<!-- DEBUT CHAMPION -->
                        <div class=\"col-lg-4 col-md-6\">
                            <div class=\"nk-gallery-item-box\">
                                <a href=\"http://battlerite.gamepedia.com/".$raw["nom_champion"]."\">
                                    <div class=\"nk-gallery-item-overlay\">
                                        <span class=\"ion-information\"></span>
                                    </div>
                                    <img src=\"assets/images/battlewiki/".$raw["nom_champion"]."_Portrait.png\" alt=".$raw["nom_champion"].">
                                </a>
                            </div>
                            <a href=\"http://battlerite.gamepedia.com/".$raw["nom_champion"]."\">
                                <h3>".$raw["nom_champion"]."</h3>
                            </a>
                        </div>
                        <!-- FIN CHAMPION -->";
                            }
                            echo "</div>";
                        }
                    }
                    else {
                        $stmt = $con->prepare("SELECT DISTINCT classe_champion FROM wiki WHERE nom_champion ='".$_POST['s']."'");
                        $stmt->execute();
                        while ($row = $stmt->fetch()) {
                            echo "<h2 class=\"nk-decorated-h h3\">
                                <span>
                                <span class=\"text-main-1\">".$row["classe_champion"]."</span> Champions</span><div id=".$row["classe_champion"]."></div>
                              </h2><div class=\"nk-gap\"></div>
                        <div class=\"row vertical-gap multi-columns-row\">";


                            $stmt2 = $con->prepare("SELECT nom_champion FROM wiki WHERE nom_champion ='".$_POST['s']."'");
                            $stmt2->execute();
                            while($raw = $stmt2->fetch()){
                                echo "<!-- DEBUT CHAMPION -->
                        <div class=\"col-lg-4 col-md-6\">
                            <div class=\"nk-gallery-item-box\">
                                <a href=\"http://battlerite.gamepedia.com/".$raw["nom_champion"]."\">
                                    <div class=\"nk-gallery-item-overlay\">
                                        <span class=\"ion-information\"></span>
                                    </div>
                                    <img src=\"assets/images/battlewiki/".$raw["nom_champion"]."_Portrait.png\" alt=".$raw["nom_champion"].">
                                </a>
                            </div>
                            <a href=\"http://battlerite.gamepedia.com/".$raw["nom_champion"]."\">
                                <h3>".$raw["nom_champion"]."</h3>
                            </a>
                        </div>
                        <!-- FIN CHAMPION -->";
                            }
                            echo "</div>";
                        }
                    }

                    ?>

                    <!-- END: Latest Pictures -->

                    <!-- START: Recent Galleries-->
<!--                    <div class="nk-gap-2"></div>-->
<!--                    <h2 class="nk-decorated-h-2 h3">-->
<!--                        <span>-->
<!--                            <span class="text-main-1">Recent</span> Galleries</span>-->
<!--                    </h2>-->
<!--                    <div class="nk-gap"></div>-->
<!--                    <div class="row vertical-gap multi-columns-row">-->
<!--                        <div class="col-md-6">-->
<!--                            <div class="nk-gallery-item-group">-->
<!--                                <a href="#" class="nk-gallery-item">-->
<!--                                    <div class="nk-gallery-item-overlay">-->
<!--                                        <span class="ion-plus-circled"></span>-->
<!--                                    </div>-->
<!--                                    <img src="assets/images/gallery-group-1.jpg" alt="">-->
<!--                                </a>-->
<!--                                <div class="nk-gallery-item-description">-->
<!--                                    <h4 class="nk-gallery-item-description-title h5">Screenshots Gallery</h4>-->
<!--                                    <div class="nk-gallery-item-description-info">-->
<!--                                        <span class="fa fa-picture-o"></span>-->
<!--                                        <span>58</span>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="col-md-6">-->
<!--                            <div class="nk-gallery-item-group">-->
<!--                                <a href="#" class="nk-gallery-item">-->
<!--                                    <div class="nk-gallery-item-overlay">-->
<!--                                        <span class="ion-plus-circled"></span>-->
<!--                                    </div>-->
<!--                                    <img src="assets/images/gallery-group-2.jpg" alt="">-->
<!--                                </a>-->
<!--                                <div class="nk-gallery-item-description">-->
<!--                                    <h4 class="nk-gallery-item-description-title h5">Art Gallery</h4>-->
<!--                                    <div class="nk-gallery-item-description-info">-->
<!--                                        <span class="fa fa-picture-o"></span>-->
<!--                                        <span>96</span>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="col-md-6">-->
<!--                            <div class="nk-gallery-item-group">-->
<!--                                <a href="#" class="nk-gallery-item">-->
<!--                                    <div class="nk-gallery-item-overlay">-->
<!--                                        <span class="ion-plus-circled"></span>-->
<!--                                    </div>-->
<!--                                    <img src="assets/images/gallery-group-3.jpg" alt="">-->
<!--                                </a>-->
<!--                                <div class="nk-gallery-item-description">-->
<!--                                    <h4 class="nk-gallery-item-description-title h5">RTS Gallery</h4>-->
<!--                                    <div class="nk-gallery-item-description-info">-->
<!--                                        <span class="fa fa-picture-o"></span>-->
<!--                                        <span>167</span>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="col-md-6">-->
<!--                            <div class="nk-gallery-item-group">-->
<!--                                <a href="#" class="nk-gallery-item">-->
<!--                                    <div class="nk-gallery-item-overlay">-->
<!--                                        <span class="ion-plus-circled"></span>-->
<!--                                    </div>-->
<!--                                    <img src="assets/images/gallery-group-4.jpg" alt="">-->
<!--                                </a>-->
<!--                                <div class="nk-gallery-item-description">-->
<!--                                    <h4 class="nk-gallery-item-description-title h5">Action Gallery</h4>-->
<!--                                    <div class="nk-gallery-item-description-info">-->
<!--                                        <span class="fa fa-picture-o"></span>-->
<!--                                        <span>4</span>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="col-md-6">-->
<!--                            <div class="nk-gallery-item-group">-->
<!--                                <a href="#" class="nk-gallery-item">-->
<!--                                    <div class="nk-gallery-item-overlay">-->
<!--                                        <span class="ion-plus-circled"></span>-->
<!--                                    </div>-->
<!--                                    <img src="assets/images/gallery-group-5.jpg" alt="">-->
<!--                                </a>-->
<!--                                <div class="nk-gallery-item-description">-->
<!--                                    <h4 class="nk-gallery-item-description-title h5">Moba Gallery</h4>-->
<!--                                    <div class="nk-gallery-item-description-info">-->
<!--                                        <span class="fa fa-picture-o"></span>-->
<!--                                        <span>17</span>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                        <div class="col-md-6">-->
<!--                            <div class="nk-gallery-item-group">-->
<!--                                <a href="#" class="nk-gallery-item">-->
<!--                                    <div class="nk-gallery-item-overlay">-->
<!--                                        <span class="ion-plus-circled"></span>-->
<!--                                    </div>-->
<!--                                    <img src="assets/images/gallery-group-6.jpg" alt="">-->
<!--                                </a>-->
<!--                                <div class="nk-gallery-item-description">-->
<!--                                    <h4 class="nk-gallery-item-description-title h5">Indie Gallery</h4>-->
<!--                                    <div class="nk-gallery-item-description-info">-->
<!--                                        <span class="fa fa-picture-o"></span>-->
<!--                                        <span>40</span>-->
<!--                                    </div>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
                     <!-- END: Recent Galleries -->

<!--                     START: Video Galleries-->
<!--                    <div class="nk-gap-2"></div>-->
<!--                    <h2 class="nk-decorated-h-2 h3">-->
<!--                        <span>-->
<!--                            <span class="text-main-1">Video</span> Galleries</span>-->
<!--                    </h2>-->
<!--                    <div class="nk-gap"></div>-->
<!--                    <div class="row vertical-gap multi-columns-row">-->
<!--                        <div class="col-md-6">-->
<!--                            <h4>Double rainbow? What does it mean?</h4>-->
<!--                            <div class="nk-plain-video" data-video="https://www.youtube.com/watch?v=eBERVWYa-1Y"></div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                     END: Video Galleries -->
                </div>
                <div class="col-lg-4">
                    <!--
                START: Sidebar

                Additional Classes:
                    .nk-sidebar-left
                    .nk-sidebar-right
                    .nk-sidebar-sticky
            -->
    <!--
               START: Sidebar

               Additional Classes:
                   .nk-sidebar-left
                   .nk-sidebar-right
                   .nk-sidebar-sticky
                   discord

           -->
<?php include "assets/include/sidebar.php" ?>
<!-- START: Footer -->
<?php include "assets/include/footer.php" ?>