<?php
    include "Login.php";
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <link rel="icon" href="../Image/icone.ico" />
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site Monster Hunter</title>
    <link href="Admin.css" rel="stylesheet">
</head>

<body>
    <?php
        if($isconnect){ ?>
            <!-- Lien Panel Admin Arme -->
            <div id="Arme">
                <a href="PanelAdminArme.php"><img src="../Image/Admin/Arme.jpg"/>
                </a>
            </div>
            <!-- Lien Panel Admin  Monstre-->
            <div id="Texte">
                <p><strong>Selectionner le tableau à modifier</strong></p>
            </div>
            <div id="Monstre">
                <a href="PanelAdminMonstre.php"><img src="../Image/Admin/Monstre.jpg"/>
                </a>
            </div>
            <!-- Lien Panel Admin Relation-->
            <div id="AM">
                <a href="PanelAdminArmeMonstre.php"><img src="../Image/Admin/AM.jpg"/>
                </a>
            </div> 
            <div id="Deconnection">
                <a href="index.php" target="_blank"> <input type="button" style="width:500px" value="Déconnection et retour a l'acceuil"> 
                <?php
                    session_destroy()
                ?>
            </a>
            </div>
            
            <?php
        } else {
        } ?>
</body>

</html>