<?php

    require '../config.php';

        session_start();

        $user = $_SESSION['ID'];
        $username= $_SESSION['username'];

        extract($_POST);

        $id_form = $id_send;

        $sql = "SELECT question,question.id_question as id_question, oui_non , commentaire, fichier FROM reponse, question WHERE question.id_question = reponse.id_question and id_formulaire=".$id_form ;
        $result = mysqli_query($conn,$sql);


        $form = '<table  class="table table-striped table-hover" >

        <thead>
         <tr>
         <th "></th>
         <th "></th>
         <th ">Question</th>
         <th ">Reponse</th>
         <th ">Commentaire</th>
         <th ">piece jointe</th>
         </tr>
     </thead>
 
     <tbody>';


        $i = 1;
        while($row=mysqli_fetch_assoc($result)){

            $quest=$row['question'] ;
            $quest_pos=$row['id_question'];
            $oui = $row['oui_non'];
            $comment = $row['commentaire'];
            $fichier = $row['fichier'];
            $nom_final = "fi".$quest_pos.'_'.$user.'_'.$username.'c.';
            $form .= '<tr>
                        <th colspan="3">
                        '.$quest_pos.'-'.$quest.'
                        </th>
                        <th>
                            '.$oui.'
                        </th>
                        <th>
                            '.$comment.'
                        </th>
                        <th>
                            '.Check_file($fichier).'
                        </th>

                    </tr>';

            $i=$i+1;

        }


        $form .='</table>';

        echo $form;



        function Check_file( $fi_name ){
            if($fi_name=="non"){
                return "non";
            }else{
                return  '<a href="./p_jointe.php?nom='.$fi_name.'" target="blank" > voir</a>';
            }
        }

?>
