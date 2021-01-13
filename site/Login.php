

    <?php
        session_start();

        $isconnect=false;

        if(isset($_SESSION['Connect'])){
            //Si session existe :
            $isconnect=$_SESSION['Connect'];
        }else{
            ?>
                <div id="container">
                <!-- zone de connexion avec formulaire -->
                
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
            //si session existe pas :
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
                        $_SESSION['Connect']=true;
                        //Refresh la page pour pouvoir acceder au autres page.
                        header("Refresh:0");
                    }
                }    
            }
        }   
    ?>