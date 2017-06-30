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
                    <a href="wiki.php"><span>Tournois</span></a>
                </li>

            </ul>
        </div>
        <div class="nk-gap-1"></div>
        <!-- END: Breadcrumbs -->




        <div class="container">
            <div class="row equal-height vertical-gap">
                <div class="col-lg-8">
                    <form method="post" class="nk-form nk-form-style-1">
                        <div class="input-group">
                            <input type="text" name="s" class="form-control" placeholder="Nombre d'Equipes">
                            <span class="nk-input-group-btn">
                                <button class="nk-btn nk-btn-color-main-1">
                                    <span class="fa fa-search"></span>
                                </button>
                            </span>
                        </div>
                    </form>
                    <div class="nk-gap-1"></div>
                    <form method="post" class="nk-form nk-form-style-1" name="teams">
                    <?php
                    if (!isset($_POST['teams'])){
                        if (isset($_POST['s'])) {
                            echo "Tableau des Equipes :<div class=\"nk-gap-1\"></div>";
                            for ($i=0; $i<$_POST['s']; $i++){
                                echo "<input name='toornament".$i."'/>";
                            }
                        }
                        echo"<div class=\"nk-gap-1\"></div>";
                        echo"<input type=\"submit\" class=\"nk-btn nk-btn-rounded nk-btn-color-main-1 nk-btn-hover-color-white\">";
                    }
                    ?>
                    </form>

                    <?php
                    $input=array();

                    if (isset($_POST['toornament'])) {
                        for ($i=0; $i < $_POST['s']; $i++){
                            array_push($input,$_POST["toornament.$i."]);
                            var_dump($_POST["toornament.$i."]);
                        }
                    }

                    var_dump($input);
                    $length = (count($input)/2);

                    for($i=0; $i < $length; $i++) {
                        $rand_keys = array_rand($input, 2);
                        echo $input[$rand_keys[0]] . " VS ";
                        unset($input[$rand_keys[0]]);
                        echo $input[$rand_keys[1]] . "<br>";
                        unset($input[$rand_keys[1]]);
                    }
                    ?>

                </div>
            </div>
        </div>
