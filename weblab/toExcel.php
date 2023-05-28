<?php
     include './config.php';

     $id_form=$_POST['id'] ;
     $sql = "SELECT  sujet_descript.sujet, question.question ,question.id_question as id_question, oui_non , commentaire, commentaire_admin FROM reponse, question, sujet_descript WHERE sujet_descript.id=question.id_sujet AND question.id_question = reponse.id_question and id_formulaire=".$id_form ;
     $result = mysqli_query($conn,$sql);

     $form='<table class="table table-striped table-hover"  >
     <thead>
         <tr>
         <th onclick="sortTable(0)">sujet</th>
         <th onclick="sortTable(1)">num question</th>
         <th onclick="sortTable(2)">Question</th>
         <th onclick="sortTable(3)">Reponse</th>
         <th onclick="sortTable(4)">Commentaire</th>
         <th onclick="sortTable(5s)">Commentaire Ubora</th>
         </tr>
     </thead>

     <tbody>';


     $i = 1;
     while($row=mysqli_fetch_assoc($result)){

        $sujet=$row['sujet'] ;
        $quest=$row['question'] ;
        $quest_pos=$row['id_question'];
         $oui = $row['oui_non'];
         $comment = $row['commentaire'];
         $comment_a = $row['commentaire_admin'];
         $form .= '<tr>  
                         <th>
                         '.$sujet.'
                         </th>

                         <th>
                         '.$quest_pos.'
                         </th>

                         <th>
                         '.$quest.'
                         </th>

                         <th>
                             '.$oui.'
                         </th>

                         <th>
                         '.$comment.'
                          </th>
                        
                          <th>
                          '.$comment_a.'
                           </th>
             
                 </tr>';

         $i=$i+1;  

     }

     $form .='</table>';
    
     header('Content-Type: application/xls');
     header('Content-Disposition: attachment; filename=download.xls');
    
    
     echo utf8_decode($form);

?>