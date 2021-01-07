<?php
include("menu.php");
$BDD = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");
$monsters = $BDD->query("SELECT * FROM Monstre WHERE 1")
            ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <link rel="icon" href="../Image/icone.ico"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site Monster Hunter</title>
    <link href="mhw.css" rel="stylesheet">
</head>

<body>
<form action="" method="post">
<div id="Formulaire">
    <label>
    <div id="Texte">
        <p><strong>Sélectionner votre monstre</strong></p>
        </div>
    </label>
    <!--list déroulante monstres basé sur les monstres présent en base-->
    <select name="Monstre">

        <?php foreach ($monsters as $monsters) {
        //récuperer la liste des monstre depuis la base : + simple 
        echo "<option value='".$monsters["Nom"]."'>".$monsters["Nom"]."</option>";
        } ?>

    </select>
    <label>
    <div id="Texte">
        <p><strong>Sélectionner votre arme</strong></p>
        </div>
    </label>
    <!--liste déroulante des type d'armes -->
    <select name="Arme">
        <option value="Double Lame">Double Lame</option>
        <option value="Morpho-hache">Morpho Hache</option>
    </select>
    <label>
    <div id="Texte">
        <p><strong>Effectuer La Recherche</strong></p>
        </div>
    </label>
    <div class="form-example">

        <input type="submit" name="Recherche" value="Rechercher MatchUp">
    </form>
    </div>



    
    <?php
       

        //recherche du MatchUp :

        //si le boutton est pressé :
        if($BDD){
            if(isset($_POST["Recherche"])){
// SELECT armemonstre.IDArme FROM armemonstre, Arme, Monstre WHERE armemonstre.IDArme = Arme.IDArme AND armemonstre.IDMonstre = Monstre.IDMonstre AND Monstre.Nom = "Grand Jagras" AND Arme.Type = "Double Lame"
                // Requete SQL prepare
                $req = "SELECT * FROM Arme, Monstre LEFT JOIN armemonstre ON armemonstre.IDArme WHERE armemonstre.IDArme = Arme.IDArme AND armemonstre.IDMonstre = Monstre.IDMonstre AND Monstre.Nom = ? AND Arme.Type = ?";

                $stmt = $BDD->prepare($req);
                $stmt->execute(array($_POST["Monstre"], $_POST["Arme"]));

                $i=1;
                //affichage des armes
                foreach ($stmt as $arme ) {
                    echo "<strong> <u> Voici la ".$i."e arme que nous vous conseillons : </u> </strong>";
                    echo "<p>";
                    echo "<i>".$arme[2]. "</i> || ";
                    echo "<strong> Elément : </strong>".$arme[3]. " || ";
                    echo "<strong> Tranchant : </strong>".$arme[4]. " || ";
                    echo $arme[5]. " || ";
                    echo "<strong> Rareté : </strong>".$arme[6]. " || ";
                    echo "<strong> Sceaux des Anciens : </strong>".$arme[7]. " || ";
                    echo "<strong> Affinité : </strong>".$arme[8];
                    echo "<p>";
                    $i = $i + 1;
                }
            
                
                

                
                $table_Arme = array();
                $table_Monstre = array();

                
                //
            }

        }
            
        
    ?>
</body>

</html>