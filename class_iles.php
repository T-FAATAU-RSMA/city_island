<?php
include("connexion_bdd.php");

    class iles{

        public function getcity($getVilles){
            global $connect_bdd;

        $req_select = "SELECT v.name FROM `ile_ville` as iv join iles as i on iv.fk_ile = i.id join villes as v on iv.fk_ville = v.id WHERE i.name = '".$getVilles."'";
        $res_select = $connect_bdd->query($req_select);
        foreach ($res_select as $value) {
            $city_ile['donnee'][] = $value['name'];
           
        }
        return json_encode($city_ile);

    }
}