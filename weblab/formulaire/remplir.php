<?php

    require '../config.php';

        session_start();
        

        $id_use = $_POST['id_send'];

        $_SESSION['ID_FORM']=$id_use;

        $sql = "SELECT * FROM question WHERE question.id_sujet  IN (SELECT sujet FROM formulaire WHERE id_sr=".$id_use.");" ;

        $result = mysqli_query($conn,$sql);

        $form='<form method="post"  enctype="multipart/form-data" action="./formulaire/ajout.php">


                ';

        $form .= '<table class="table table-striped table-hover"   style="width:100%">';


        $i = 1;
        while($row=mysqli_fetch_assoc($result)){

            $quest=$row['question'] ;
            $quest_pos=$row['id_question'];
            $form .= '<tr><th><div class="form-group">
                <label>'.$quest_pos.'-'.$quest.'</label>
                <span>
                <input type="radio"  name="o'.$i.'n" required value="oui"> <label for="oui">Oui</label>
                <input type="radio"  name="o'.$i.'n" value="non"> <label for="non">Non</label>
                </span><input type="text" value="rere"  required name="com'.$i.'m" placeholder="commentaire" class="form-control" required>
                <span><input type="file" name ="fi'.$i.'chier" size="30"></span>
            </div> </th></tr>';

            $i=$i+1;

        }


        $form .='</table>';

        $form .= '<div class="modal-footer">
                <button type="button" class="btn btn-secondary"  data-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-success"   data-dismiss="modal" onclick=save('.$i.')> Enregistrer </button>

                <button type="submit" class="btn btn-success"> Soumettre </button>
            </div>
            </form>';

        echo $form;

?>