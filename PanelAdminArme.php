<html>
    <head>

        <meta charset='utf-8'>

    </head>
    <body>
        
        
        <?php
            $Crud = '0';
            if(isset($_POST["MedecinSubmit"])){


                if(isset($_POST["MedecinSubmit"])){
                    //on vérifie avant que les champs ne sont pas vide
                    if(!empty($_POST["IDArme"]) && !empty($_POST["Nom"]))
                    {
                        //C pour création (insert)
                        $Crud = 'C';
                        $ArmeType = $_POST["Type"];
                        $ArmeNom = $_POST["Nom"];
                        $ArmeElement = $_POST["Element"];
                        $ArmeTranchant = $_POST["Tranchant"];
                        $ArmeDegat = $_POST["Degat"];
                        $ArmeRarete = $_POST["Rarete"];
                        $ArmeSceaux = $_POST["Sceaux"];
                        $ArmeAffinite = $_POST["Affinite"];
                    }
                }
            }


            if($Crud!='0')
            {

            try
            {
                $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");
                //on continue que si la base n'est pas false
                if($BasePDO){
                    //un crud possède 4 requête de base on fait un switch pour gérer les 4
                    switch ($Crud) {
                        case 'C':
                            echo "<p>Tentative de création de Medecin<p>";
                            //creer la requête à partir de la génération php de phpMyAdmin
                            //Pas besoin de mettre id car il est automatique
                            $req = "INSERT INTO `Arme`( `Type`, `Nom`, `Element`, `Tranchant`, `Degat`, `Rarete`, `Sceaux`, `Affinite`) VALUES ('".$ArmeType."','".$ArmeNom."','".$ArmeElement."','".$ArmeTranchant."','".$ArmeDegat."','".$ArmeRarete."','".$ArmeSceaux."','".$ArmeAffinite."')";
                            $RequetStatement = $BasePDO->query($req);
                            
                            //on vérifie le code si le Statement n'est pas en false
                            if($RequetStatement)
                            {
                                //la Bdd répond '00000' si c'est un succès
                                if(  $RequetStatement->errorCode()=='00000')
                                {
                                    echo "Reussite de l'insertion : ";
                                    echo "Vous avez entré les information a propos de ".$ArmeNom." , une arme de type ".$ArmeType." et d'élément ".$ArmeElement."";
                                }else{
                                    echo "Erreur N°".$RequetStatement->errorCode()." lors de l'insertion";
                                }
                            }else{
                                echo "Erreur dans le format de la requête";
                            }
                                
                            break;
                        case 'R':
                            echo "<p>vous avez fait une Selection d'arme</p>";
                            # TODO
                            break;
                        case 'U':
                            echo "<p>vous avez fait un Update d'arme</p>";
                            // avec boutton
                            break;
                        case 'D':
                            echo "<p>vous avez fait une Suppression d'arme</p>";
                            // avec Check Box
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

        ?>

        <form action="" method="post" class="form">
                <div class="form">
                    <label for="ArmeType">Type de l'arme : </label>
                    <input type="text" name="ArmeType" id="ArmeType" required>
                </div>

                <div class="form">
                    <label for="ArmeNom">Nom de l'arme: </label>
                    <input type="text" name="ArmeNom" id="ArmeNom" required>
                </div>

                <div class="form">
                    <label for="ArmeElement">Element de l'arme: </label>
                    <input type="text" name="ArmeElement" id="ArmeElement" required>
                </div>

                <div class="form">
                    <label for="ArmeTranchant">Tranchant de l'arme: </label>
                    <input type="text" name="ArmeTranchant" id="ArmeTranchant" required>
                </div>

                <div class="form">
                    <label for="ArmeDegat">Dégats de l'arme: </label>
                    <input type="number" name="ArmeDegat" id="ArmeDegat" required>
                </div>

                <div class="form">
                    <label for="ArmeRarete">Rareté de l'arme: </label>
                    <input type="number" name="ArmeRarete" id="ArmeRarete" required>
                </div>

                <div class="form">
                    <label for="ArmeSceau">Présence / Puissance du Sceaux des Anciens de l'arme: </label>
                    <input type="text" name="ArmeSceau" id="ArmeSceau" required>
                </div>

                <div class="form">
                    <label for="ArmeAffinite">Affinité de l'arme: </label>
                    <input type="number" name="ArmeAffinite" id="ArmeAffinite" required>
                </div>



                <div class="form">
                    <input type="submit" name="ArmeSubmit" value="Ajouter une Arme">
                </div>
            </form>






            <?php
                if(isset($_POST["MedecinDeletSubmit"]))
                {
                    //D pour Delete 
                    $Crud = 'D';
                }





            ?>




    </body>
    
</html>