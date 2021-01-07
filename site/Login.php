<html>
    <head>
       <meta charset="utf-8">
    </head>
    <body>
        <div id="container">
            <!-- zone de connexion -->
            
            <form method="POST">
                <h1>Connexion</h1>
                
                <label><b>Nom d'utilisateur</b></label>
                <input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required>

                <label><b>Mot de passe</b></label>
                <input type="password" placeholder="Entrer le mot de passe" name="password" required>

                <input type="submit" name='submit' value='LOGIN' >
            </form>
        </div>


        
        <?php
        //connexion base : 
        $dbh = new PDO("mysql:host=192.168.64.116; dbname=Maxence_Final_MH; charset=utf8", "root", "root");

    if (isset($_POST["submit"])) {
        if((!empty($_POST['password'])) && (!empty($_POST['username']))){
            $stmt = $dbh->prepare("SELECT * FROM utilisateur WHERE nom_utilisateur = ?");
            $stmt->execute(array($_POST['username']));
            $stmt = $stmt->fetch();

            if (!$stmt) {
                echo "'Mauvais nom d'utilisateur ou mot de passe' ";
            } else {

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