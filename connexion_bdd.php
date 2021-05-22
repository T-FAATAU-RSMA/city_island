<?php

    $host = 'localhost' ; // nom de l'hôte 
    $username = 'root' ; //nom de l'admin serveur
    $password = '' ; // mot de passe
    $db_name = 'city_island'; // nom de la bdd (base de données)


    $connect_bdd = new mysqli($host , $username , $password, $db_name); //ce connecter à la base de données

        
        