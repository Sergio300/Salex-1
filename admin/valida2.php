<?php
require('class/alumno.php');
$nombre=$_POST['nombre'];
$aP=$_POST['aP'];
$apM=$_POST['apM'];
$correo=$_POST['correo'];
$boleta=$_POST['boleta'];
$pwd=$_POST['pwd'];
$materia=$_POST['materia'];
  
  $query="INSERT INTO alumnos (nombre,apPaterno,apMaterno,correoInst,boleta,materia,activo,pass)  VALUES ( '$nombre', '$aP', '$apM', '$correo', '$boleta', '$materia', 1,'$pwd')";
 an_queryi($query);
 header("location: dynamic/ingresar.php");



?>