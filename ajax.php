<?php

include 'class/class_iles.php';

    $iles_obj = new iles();

    $getIles = $_POST['getVilles'];

    $res_getcity = $iles_obj->getcity($getIles);
    echo $res_getcity;


