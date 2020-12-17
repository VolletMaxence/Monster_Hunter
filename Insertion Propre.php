<!--
    *
    * MR Rapidecho dev de la page d'acceuil de mon site
    * Exemple CRUD Medecin
    *
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <title>CRUD MEDECIN</title>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
</head>
<body>

    <h1>Exemple de CRUD pour la table Medecin</h1>

    <?php 

    // Variable utilise pour la connexion à la bdd
    $ipServerSQL = "192.168.65.132";
    $NomBase = "Clinique";
    $UserBDD = "SiteWeb";
    $PassBDD = "SiteWeb";

    //On utilise la variable Crud pour identifier le type de CRUD
    //elle prendra les valeurs 'C' 'R' 'U' 'D' ou '0' si pas de requête
    $Crud = '0';
    //Etape 1 Récupération des données des formulaires
    if(isset($_POST["MedecinSubmit"])){
        //on vérifie avant que les champs ne sont pas vide
        if(!empty($_POST["MedecinNom"]) && !empty($_POST["MedecinPrenom"])){
            //C pour création (insert)
            $Crud = 'C';
            $MedecinNom = $_POST["MedecinNom"];
            $MedecinPrenom = $_POST["MedecinPrenom"];
        }
    }

    //Etape 2 Connexion à la bdd avec PDO si $Crud != 0;
    if($Crud!='0'){
       
        try{
            //PDO attend une ip de MySQL , le nom de la base , un user avec son mot de pass qui as les privilèges sur cette base
            $BasePDO = new PDO("mysql:host=".$ipServerSQL.";dbname=".$NomBase.";port=3306", $UserBDD, $PassBDD);
            //on continue que si la base n'est pas false
            if($BasePDO){
                //un crud possède 4 requête de base on fait un switch pour gérer les 4
                switch ($Crud) {
                    case 'C':
                        echo "<p>Tentative de création de Medecin<p>";
                        //creer la requête à partir de la génération php de phpMyAdmin
                        //Pas besoin de mettre id car il est automatique
                        $req = "INSERT INTO `MEDECIN`( `Nom`, `Prenom`) VALUES ('".$MedecinNom."','".$MedecinPrenom."')";
                        $RequetStatement = $BasePDO->query($req);
                        
                        //on vérifie le code si le Statement n'est pas en false
                        if($RequetStatement){
                            //la Bdd répond '00000' si c'est un succès
                            if(  $RequetStatement->errorCode()=='00000'){
                                echo "Reussite de l'insertion : ";
                                echo $MedecinNom." ".$MedecinPrenom." est le nouveau medecin ";
                            }else{
                                echo "Erreur N°".$RequetStatement->errorCode()." lors de l'insertion";
                            }
                        }else{
                            echo "Erreur dans le format de la requête";
                        }
                            
                        break;
                    case 'R':
                        echo "<p>vous avez fait une Selection de Medecin</p>";
                        # TODO
                        break;
                    case 'U':
                        echo "<p>vous avez fait un Update de Medecin</p>";
                        # TODO
                        break;
                    case 'D':
                        echo "<p>vous avez fait une Suppression de Medecin</p>";
                        # TODO
                        break;
                    default:
                    echo "<p>vous n'avez pas fait de Requête CRUD</p>";
                        break;
                }
            }
    
        }catch(Exception $e){
                $e->getMessage();
        }
    }
    

    
    
     

    //on affiche le formulaire pour faire une insertion
    ?>
    <form action="" method="post" class="form-example">
        <div class="form-example">
            <label for="MedecinNom">Nom Du Medecin: </label>
            <input type="text" name="MedecinNom" id="MedecinNom" required>
        </div>
        <div class="form-example">
            <label for="MedecinPrenom">Prenom Du Medecin: </label>
            <input type="text" name="MedecinPrenom" id="MedecinPrenom" required>
        </div>
        <div class="form-example">
            <input type="submit" name="MedecinSubmit" value="Ajouter un Medecin">
        </div>
    </form>



    

    <H1>Code Source :</H1>
</body>
</html>

<?php 
    highlight_file(__FILE__);
?>