<?php
$root = realpath($_SERVER["DOCUMENT_ROOT"]);
session_start();
$error= "";
require "$root/funciones.php";
require "$root/config.php";
    if(isset($_POST['actualizar']))
    {
        if(isset($_POST['idpartido'])){
            $link=count($_POST['idpartido']);
            for($i=0;$i<$link;$i++)
            {
                $golesEq1=$_POST['golesEquipo1'][$i];
                $golesEq2=$_POST['golesEquipo2'][$i];
                $idpart=$_POST['idpartido'][$i];
                $estado=$_POST['finalizado'][$i];
                /*$editgolesEquipo1=mysqli_real_escape_string($con,$_POST['golesEq1'][$ids]);
                $editgolesEquipo2=mysqli_real_escape_string($con,$_POST['golesEq2'][$ids]);*/
                $queryact="UPDATE resultados SET golesEquipo1 ='$golesEq1',
                golesEquipo2='$golesEq2', Finalizado='$estado' WHERE idpartido='$idpart'";
                $actualizar=mysqli_query($link, $queryact);
                
            }
            /*if($actualizar==true){
                echo "<a href='../administrador/index.php'></a>";
            }*/
        }
        header("<?php $root;?>/View/Administradores/ActualizarResultados.php");
        /*if($actualizar==true){
                echo "FUNICIONA <a href='../administrador/index.php'></a>";
        }*/
    }
?>
