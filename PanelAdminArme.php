<html>
    <head>

        <meta charset='utf-8'>

    </head>
    <body>
        
        
        <?php

            $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

            if(isset($_POST["ArmeSubmit"])){

                //on vérifie avant que les champs ne sont pas vide
                if(!empty($_POST["ArmeType"]) && !empty($_POST["ArmeNom"]) && !empty($_POST["ArmeElement"]) && !empty($_POST["ArmeTranchant"]) && !empty($_POST["ArmeDegat"]) && !empty($_POST["ArmeRarete"]) && !empty($_POST["ArmeSceau"]) && !empty($_POST["ArmeAffinite"]))
                {
                    //C pour création (insert)

                    $ArmeType = $_POST["ArmeType"];
                    $ArmeNom = $_POST["ArmeNom"];
                    $ArmeElement = $_POST["ArmeElement"];
                    $ArmeTranchant = $_POST["ArmeTranchant"];
                    $ArmeDegat = $_POST["ArmeDegat"];
                    $ArmeRarete = $_POST["ArmeRarete"];
                    $ArmeSceaux = $_POST["ArmeSceau"];
                    $ArmeAffinite = $_POST["ArmeAffinite"];

                }


                    try
                    {
                        
                        //on continue que si la base n'est pas false
                        if($BasePDO){
                            echo "<p>Tentative de création de Arme<p>";
        
                                    echo "<p>Tentative de création de Arme<p>";
                                    //creer la requête à partir de la génération php de phpMyAdmin
                                    //Pas besoin de mettre id car il est automatique
                                    $req = "INSERT INTO `Arme`( `Type`, `Nom`, `Element`, `Tranchant`, `Degat`, `Rarete`, `Sceaux`, `Affinite`) VALUES ('".$ArmeType."','".$ArmeNom."','".$ArmeElement."','".$ArmeTranchant."','".$ArmeDegat."','".$ArmeRarete."','".$ArmeSceaux."','".$ArmeAffinite."')";
                                    $RequetStatement = $BasePDO->query($req);
                                    
                                    //on vérifie le code si le Statement n'est pas en false
                                    if($RequetStatement)
                                    {
                                        //00000 = succès
                                        if(  $RequetStatement->errorCode()=='00000')
                                        {
                                            echo "Reussite de l'insertion : ";
                                            echo "Vous avez entré les information a propos de ".$ArmeNom." , une arme de type ".$ArmeType." et d'élément ".$ArmeElement.".";
                                        }else{
                                            echo "Erreur N°".$RequetStatement->errorCode()." lors de l'insertion";
                                        }
                                    }else{
                                        echo "Erreur dans le format de la requête";
                                    }
                                        
                            
                        }
                
                    }catch(Exception $e){
                            echo $e->getMessage();
                    }
            }


        ?>

        <form action="" method="POST" class="form">
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




    </body>
    
</html>