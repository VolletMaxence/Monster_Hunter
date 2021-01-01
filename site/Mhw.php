<?php
include("menu.php");
            ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site Monster Hunter</title>
    <link href="mhw.css" rel="stylesheet">
</head>

<body>
    <select id="Monstre">
        <option value="valeur1" selected></option>
        <option value="valeur2">Grand Jagras</option>
        <option value="valeur3">Anjanath</option>
        <option value="valeur2">Vieux Leshen</option>
        <option value="valeur2">Leshen</option>
        <option value="valeur3">Rathalos</option>
    </select>
    <select id="Arme">
        <option value="valeur1" selected></option>
        <option value="valeur2">Arme 1</option>
        <option value="valeur3">Arme 2</option>
        <option value="valeur2">Arme 3</option>
        <option value="valeur2">Arme 4</option>
        <option value="valeur3">Arme 5</option>
    </select>
    <label for="site-search">Test de maxence</label>
<input type="search" id="site-search" name="q"
       aria-label="Search through site content">
<button>Rechercher</button>

</body>

</html>