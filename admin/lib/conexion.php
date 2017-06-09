<?php

 class Conexion extends PDO {
   private $type_DB = 'mysql';
   private $host = 'localhost';
   private $name_DB = 'salex';
   private $user_DB = 'root';
   private $password_DB = '';

   /*constructor*/
  public function __construct() {
      try{
         parent::__construct($this->type_DB.':host='.$this->host.';dbname='.$this->name_DB, $this->user_DB, $this->password_DB);
         $this->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         // $db = new Conexion("mysql:host=201.161.37.134;dbname=puentes_system", "user_puentes", "#HeDv.2016");
    
      }catch(PDOException $e){
         echo 'Ha surgido un error y no se puede conectar a la base de datos. Detalle: ' . $e->getMessage();
         exit;
      }
   } 
 } 


 function an_queryi()
  {
    $QueryReceived=func_get_arg(0);
  
    
    
    if (!($link=new mysqli('localhost','root','','salex')))
   {
        echo "Error conectando a la base de datos."; exit();
    }
    
  //mysql_query("SET NAMES 'utf8'");
    $QueryResult =$link->query($QueryReceived);
  if (!mysqli_set_charset($link, "utf8")) {
    printf("Error cargando el conjunto de caracteres utf8: %s\n", mysqli_error($enlace));
    exit(); 
    } 
    mysqli_close($link);
    return $QueryResult;
  }

?>