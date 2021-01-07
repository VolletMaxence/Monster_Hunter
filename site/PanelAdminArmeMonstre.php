<html>
    <head>
        <link rel="icon" href="../Image/icone.ico" />
        <meta charset='utf-8'>
    </head>
    <body>
        
        
        <?php
            include("MenuAdmin.php");

            if(isset($_POST["RelationSubmit"]))
            {

                //on vérifie avant que les champs ne sont pas vide
                if(!empty($_POST["IDArme"]) && !empty($_POST["IDMonstre"]))
                {
                    $IDRelation = $_POST["IDRelation"];
                    $IDArme = $_POST["IDArme"];
                    $IDMonstre = $_POST["IDMonstre"];
                }


                    try
                    {
                        $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                        $IDRelation = $_POST["IDRelation"];
                        $IDArme = $_POST["IDArme"];
                        $IDMonstre = $_POST["IDMonstre"];


                        //on continue que si la base n'est pas false
                        if($BasePDO){        
                                    echo "<p>Tentative de création d'une relation :<p>";
                                    //creer la requête à partir de la génération php de phpMyAdmin
                                    $req = "INSERT INTO `armemonstre`( `IDArme`, `IDMonstre`) VALUES ('".$IDArme."','".$IDMonstre."')";
                                    $RequetStatement = $BasePDO->query($req);
                                    
                                    //on vérifie le code si le Statement n'est pas en false
                                    if($RequetStatement)
                                    {
                                        //00000 = succès
                                        if(  $RequetStatement->errorCode()=='00000')
                                        {
                                            echo "Reussite de l'insertion : ";
                                            echo "Vous avez entré la relations Arme / Monstre comportant respectivement l'ID ".$IDArme." , et l'ID ".$IDMonstre."";
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
if(isset($_POST["RelationDeletSubmit"])){

            try{
                $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                echo "<p>Tentative de suppression</p>";
                        //ici il va falloir récuper la liste de toute les checkbox checkées
                        //pour chaque checkbox checkée on récupérera l'id que l'on ajoutera aux id à supprimer
                        foreach($_POST["IDRelation"] as $check)
                        {
                            if( !isset($checkoptions) ){ 
                                $checkoptions = $check; 
                            }
                            else{ 
                                $checkoptions .= ",".$check; 
                            }
                        }
                         
                        $req = "DELETE FROM `armemonstre` WHERE IDRelation IN(".$checkoptions.")";
                        $RequetStatement = $BasePDO->query($req);
                        if($RequetStatement){
                            //'00000' = succès
                            if(  $RequetStatement->errorCode()=='00000'){
                                echo "Reussite de la suppression: ";
                                echo "Les relations numéro :".$checkoptions. " on été supprimé";
                            }else{
                                echo "<strong> Erreur : </strong> N°".$RequetStatement->errorCode()." lors de la suppression";
                            }
                        }else{
                            echo "<strong> Erreur </strong> dans le format de la requête";
                        }

    
            }catch(Exception $e){
                    $e->getMessage();
            }
}
        ?>

        <!-- Formulaire pour ajouter une arme -->
        <form action="" method="POST" class="form">
                <div class="form">
                    <label for="IDArme">ID Arme : </label>
                    <input type="text" name="IDArme" id="IDArme" required>
                </div>

                <div class="form">
                    <label for="IDMonstre">ID Monstre: </label>
                    <input type="text" name="IDMonstre" id="IDMonstre" required>
                </div>


                <div class="form">
                    <input type="submit" name="RelationSubmit" value="Ajouter une relation">
                </div>
            </form>



<!-- check box pour delete -->
            <?php
                $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                    //liste Monstre
                    if($BasePDO){
                        $req = "SELECT * FROM armemonstre";
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
                                            //info sur les armes présentent en base :

                                            echo "<td>".$Tab[0]."</td>";    //IDRelation
                                            echo "<td>".$Tab[1]."</td>";    //IDArme
                                            echo "<td>".$Tab[2]."</td>";    //IDMonstre



                                            ?>
                                            <td>
                                                <input type="checkbox" id="Monstre_<?php echo $Tab[0]?>" name="IDRelation[]" value="<?php echo $Tab[0]?>">
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                </table>
                                <div class="form-example">
                                    <input type="submit" name="RelationDeletSubmit" value="Supprimer des Relation Armes/Monstre">
                                </div>
                            <form>
                    <?php

        }

    }



    ?>
    </body>
    
</html>