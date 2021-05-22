<script src="./assets/js/jquery-3.6.0.js"></script>

    <script language="javascript">
    $(document).ready(function(){
    
    });
    </script>

<?php
    require('connexion_bdd.php');


$req_listiles = "SELECT * from iles" ; //$sql : contient la requete sql 
$res_listiles = $connect_bdd->query($req_listiles); //$result : execute la requete $sql


print '<select id="select_listIles">';

   foreach ($res_listiles as $value) {
        
       print '<option value="'.$value["name"].'">';
           print $value["name"];    
        print '</option>';
    }

print '</select>';

    print '<div id="bloc_affiche">';

    print '</div>';


?>

    <script src="./assets/js/jquery-3.6.0.js"></script>

    <script language="javascript">
    
        $(document).ready(function(){
    
            //1 évènement
            $("#select_listIles").on("change",function(){
        
                jsIles = $("#select_listIles").val();
       
                getVilles(jsIles);
            })    
        })
    

// -------------------------Function ----------------------

    function getVilles(jsVilles){


        $.ajax({
            type: 'post',
            url: 'ajax.php',
            data: {
                'getVilles': jsVilles
            },
            dataType: 'json',
            success: function(data){
                // alert(data.donnee);
                // data = JSON.parse(data);
               
                $('#bloc_affiche').empty();
                $('#bloc_affiche').append('<select id="show_ville"></select>');
                $.each(data.donnee,function(idx,el){


                    $('#show_ville').append('<option value="">'+el+'</option>');
                })

            }
        });

    }
    </script>





  
