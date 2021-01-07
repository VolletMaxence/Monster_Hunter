<html>
    <head>
        <link rel="icon" href="../Image/icone.ico" />
       <meta charset="utf-8">
       <link href="Admin.css" rel="stylesheet">
    </head>
    <body>
        <div id="container">
            <!-- zone de connexion -->
            
            <form method="POST">
                <h1>Connexion</h1>
                
                <label><strong>Nom d'utilisateur</strong></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required>

                <label><strong>Mot de passe</strong></label>
                <input type="password" placeholder="Entrer le mot de passe" name="password" required>

                <input type="submit" name='submit' value='LOGIN' >
            </form>
        </div>


        
        <?php
        //connexion base : 
        $dbh = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

    if (isset($_POST["submit"])) {
        if((!empty($_POST['password'])) && (!empty($_POST['username']))){
            //requete préparé
            $stmt = $dbh->prepare("SELECT * FROM utilisateur WHERE nom_utilisateur = ? AND mot_de_passe = ?");
            $stmt->execute(array($_POST['username'], $_POST['password']));
            $stmt = $stmt->fetch();

            //si ce n'est pas le bon MdP :
            if (!$stmt) {
                echo "'Mauvais nom d'utilisateur ou mot de passe' ";
            } else {

            //sinon, redirigé l'utilisateur a la page "PanelAdmin.php"
                if ($_POST['password'] == $stmt['mot_de_passe']) {
                    session_start();
                    $_SESSION['nom_utilisateur'] = $stmt['nom_utilisateur'];
                    $_SESSION['mot_de_passe'] = $_POST['username'];

                    header('Location:PanelAdmin.php');
                //include("PanelAdmin.php");
                 
                } 
            }
        }
    }
    ?>
    </body>
</html>