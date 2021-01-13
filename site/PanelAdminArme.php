<?php
    include "Login.php";
?>
<html>
    <head>
        <link rel="icon" href="../Image/icone.ico" />
        <meta charset='utf-8'>
        <link href="Admin.css" rel="stylesheet">
    </head>
    <body>
        
        
        <?php
            include("MenuAdmin.php");

            if($isconnect){ 


                if(isset($_POST["ArmeSubmit"]))
                {

                    //on vérifie avant que les champs ne sont pas vide
                    if(!empty($_POST["ArmeType"]) && !empty($_POST["ArmeNom"]) && !empty($_POST["ArmeElement"]) && !empty($_POST["ArmeTranchant"]) && !empty($_POST["ArmeDegat"]) && !empty($_POST["ArmeRarete"]) && !empty($_POST["ArmeSceau"]) && !empty($_POST["ArmeAffinite"]))
                    {
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
                            $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                            $ArmeType = $_POST["ArmeType"];
                            $ArmeNom = $_POST["ArmeNom"];
                            $ArmeElement = $_POST["ArmeElement"];
                            $ArmeTranchant = $_POST["ArmeTranchant"];
                            $ArmeDegat = $_POST["ArmeDegat"];
                            $ArmeRarete = $_POST["ArmeRarete"];
                            $ArmeSceaux = $_POST["ArmeSceau"];
                            $ArmeAffinite = $_POST["ArmeAffinite"];



                            //on continue que si la base n'est pas false
                            if($BasePDO){        
                                        echo "<p>Tentative de création d'Arme<p>";
                                        //creer la requête à partir de la génération php de phpMyAdmin
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
                                                echo "<strong> Erreur </strong> N°".$RequetStatement->errorCode()." lors de l'insertion";
                                            }
                                        }else{
                                            echo "<strong> Erreur </strong> dans le format de la requête";
                                        }
                                            
                                
                            }
                    
                        }catch(Exception $e){
                                echo $e->getMessage();
                        }
                }



    //DELETE
    if(isset($_POST["ArmeDeletSubmit"])){

                try{
                    $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                    echo "<p>Tentative de suppression</p>";
                            //CheckBox
                            foreach($_POST["IDArme"] as $check)
                            {
                                if( !isset($checkoptions) ){ 
                                    $checkoptions = $check; 
                                }
                                else{ 
                                    $checkoptions .= ",".$check; 
                                }
                            }
                            //Le delete
                            $req = "DELETE FROM `Arme` WHERE IDArme IN(".$checkoptions.")";
                            $RequetStatement = $BasePDO->query($req);
                            if($RequetStatement){
                                //00000 = succès
                                if(  $RequetStatement->errorCode()=='00000'){
                                    echo "Reussite de la suppression: ";
                                    echo "les id  :".$checkoptions. " on été supprimé";
                                }else{
                                    echo "<strong> Erreur </strong> N°".$RequetStatement->errorCode()." lors de la suppression.";
                                }
                            }else{
                                echo "<strong> Erreur </strong> dans le format de la requête.";
                                echo " Veuillez également vérifié que ces armes ne sont pas présentes dans une ou plusieur relation au <strong> <a href='PanelAdminArmeMonstre.php'> panel admin </a> prévu à cet effet </strong>.";
                            }

        
                }catch(Exception $e){
                        $e->getMessage();
                }
    }
            ?>

            <!-- Formulaire pour rentrer nouvele arme -->
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



    <!-- check box pour delete -->
                <?php
                    $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                        //on va afficher la liste des Medecins dans un tableau 
                        //et on va afficher une checkbox pour le supprimer
                        if($BasePDO){
                            $req = "SELECT * FROM Arme";
                            $RequetStatement = $BasePDO->query($req);
                            if($RequetStatement){
                                ?>
                                <form action ="" method="post">
                                    <table>
                                        <?php
                                        while($Tab=$RequetStatement->fetch()){
                                            ?>
                                            <tr>
                                                <?php
                                                //affichage des infos des armes présentent en base 
    
                                                echo "<td>".$Tab[0]."</td>";    //ID
                                                echo "<td>".$Tab[1]."</td>";    //Type
                                                echo "<td>".$Tab[2]."</td>";    //Nom
                                                echo "<td>".$Tab[3]."</td>";    //Element
                                                echo "<td>".$Tab[4]."</td>";    //Tranchant
                                                echo "<td>".$Tab[5]."</td>";    //Degats
                                                echo "<td>".$Tab[6]."</td>";    //Rareté
                                                echo "<td>".$Tab[7]."</td>";    //Sceaux 
                                                echo "<td>".$Tab[8]."</td>";    //Affinite

                                                ?>
                                                <td>
                                                    <input type="checkbox" id="Arme_<?php echo $Tab[0]?>" name="IDArme[]" value="<?php echo $Tab[0]?>">
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                    </table>
                                    <div class="form-example">
                                        <input type="submit" name="ArmeDeletSubmit" value="Supprimer des Arme">
                                    </div>
                                <form>
                            <?php

                        }

                    }

        } else {
            echo "Veuillez vous connecter";
        } ?>

    </body>
    
</html>