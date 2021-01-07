<html>
    <head>

        <meta charset='utf-8'>

    </head>
    <body>
        
        
        <?php
            include("MenuAdmin.php");


            if(isset($_POST["MonstreSubmit"]))
            {

                //on vérifie avant que les champs ne sont pas vide
                if(!empty($_POST["MonstreNom"]) && !empty($_POST["MonstreFaiblesse"]) && !empty($_POST["MonstreElement"]))
                {
                    $MonstreNom = $_POST["MonstreNom"];
                    $MonstreFaiblesse = $_POST["MonstreFaiblesse"];
                    $MonstreElement = $_POST["MonstreElement"];
                }


                    try
                    {
                        $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                        $MonstreNom = $_POST["MonstreNom"];
                        $MonstreFaiblesse = $_POST["MonstreFaiblesse"];
                        $MonstreElement = $_POST["MonstreElement"];


                        //on continue que si la base n'est pas false
                        if($BasePDO){        
                                    echo "<p>Tentative de création de Monstre<p>";
                                    //creer la requête à partir de la génération php de phpMyAdmin
                                    $req = "INSERT INTO `Monstre`( `Nom`, `Faiblesse`, `Element`) VALUES ('".$MonstreNom."','".$MonstreFaiblesse."','".$MonstreElement."')";
                                    $RequetStatement = $BasePDO->query($req);
                                    
                                    //on vérifie le code si le Statement n'est pas en false
                                    if($RequetStatement)
                                    {
                                        //00000 = succès
                                        if(  $RequetStatement->errorCode()=='00000')
                                        {
                                            echo "Reussite de l'insertion : ";
                                            echo "Vous avez entré les information a propos de ".$MonstreeNom." , un monstre faible à ".$MonstreFaiblesse." et ayant l'élément ".$MonstreElement.".";
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
if(isset($_POST["MonstreDeletSubmit"])){

            try{
                $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                echo "<p>Tentative de suppression</p>";
                        //ici il va falloir récuper la liste de toute les checkbox checkées
                        //pour chaque checkbox checkée on récupérera l'id que l'on ajoutera aux id à supprimer
                        foreach($_POST["IDMonstre"] as $check)
                        {
                            if( !isset($checkoptions) ){ 
                                $checkoptions = $check; 
                            }
                            else{ 
                                $checkoptions .= ",".$check; 
                            }
                        }
                        
                        $req = "DELETE FROM `Monstre` WHERE IDMonstre IN(".$checkoptions.")";
                        $RequetStatement = $BasePDO->query($req);
                        if($RequetStatement){
                            //'00000' = succès
                            if(  $RequetStatement->errorCode()=='00000'){
                                echo "Reussite de la suppression: ";
                                echo "les id  :".$checkoptions. " on été supprimé";
                            }else{
                                echo "<strong> Erreur </strong> N°".$RequetStatement->errorCode()." lors de la suppression";
                            }
                        }else{
                            echo "<strong> Erreur </strong> dans le format de la requête";
                        }

    
            }catch(Exception $e){
                    $e->getMessage();
            }
}
        ?>

        <form action="" method="POST" class="form">
                <div class="form">
                    <label for="MonstreType">Nom du Monstre : </label>
                    <input type="text" name="MonstreType" id="MonstreNom" required>
                </div>

                <div class="form">
                    <label for="MonstreFaiblesse">Faiblesse du Monstre: </label>
                    <input type="text" name="MonstreFaiblesse" id="MonstreFaiblesse" required>
                </div>

                <div class="form">
                    <label for="MonstreElement">Element du Monstre: </label>
                    <input type="text" name="MontreElement" id="MonstreElement" required>
                </div>



                <div class="form">
                    <input type="submit" name="MonstreSubmit" value="Ajouter un Monstre">
                </div>
            </form>



<!-- check box pour delete -->
            <?php
                $BasePDO = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

                    //liste Monstre
                    if($BasePDO){
                        $req = "SELECT * FROM Monstre";
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
                                            echo "<td>".$Tab[0]."</td>";    //ID
                                            echo "<td>".$Tab[1]."</td>";    //Nom
                                            echo "<td>".$Tab[2]."</td>";    //Faiblesse
                                            echo "<td>".$Tab[3]."</td>";    //Element


                                            ?>
                                            <td>
                                                <input type="checkbox" id="Monstre_<?php echo $Tab[0]?>" name="IDMonstre[]" value="<?php echo $Tab[0]?>">
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                </table>
                                <div class="form-example">
                                    <input type="submit" name="MonstreDeletSubmit" value="Supprimer des Monstres">
                                </div>
                            <form>
                    <?php

        }

    }



    ?>
    </body>
    
</html>