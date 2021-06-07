<?php
include("connexion_bdd.php");

    class iles{
        
        /**
         * Update DbShoop "livres"
         *
         * @param string $new_nom 
         * @param int $new_prix 
         * @param int $id_livre
         *
         */
        public function getcity($getVilles){
            global $connect_bdd;

        $req_select = "SELECT v.name FROM `ile_ville` as iv join iles as i on iv.fk_ile = i.id join villes as v on iv.fk_ville = v.id WHERE i.name = '".$getVilles."'"; //$sql : contient la requete sql 
        $res_select = $connect_bdd->query($req_select);
        //$result : execute la requete $req_select
        foreach ($res_select as $value) {
        //pour chaque résultat de $res_select récupérer la valeur
            $city_ile['donnee'][] = $value['name'];
            // créer un tableau avec la variable city-ile contenant la valeur name
           
        }
        return json_encode($city_ile);
        //return json_encode ($city_ile) 

    }
}