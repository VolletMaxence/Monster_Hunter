<link rel="stylesheet" href="Menu.css">
<div id="Header">
        <h1><strong>Projet Monster Hunter</strong></h1>
        <li id="menu">
            <ul>
            <!--Menu Admin pour une meilleur navigation-->
                <li><a href="index.php"><strong>Menu
                <?php
                    session_destroy()
                ?>
                </strong></a></li>
                <li><a href="PanelAdminArme.php"><strong>Arme</strong></a></li>
                <li><a href="PanelAdminMonstre.php"><strong>Monstre</strong></a></li>
                <li><a href="PanelAdminArmeMonstre.php"><strong>Relation Arme/Monstre</strong></a></li>
            </ul>
        </li>
    </div> 