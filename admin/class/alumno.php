<?php 
/*Se incluye conexion*/
require('lib/conexion.php'); 
/*Calse Alumno*/
class Alumno{

	private $id;
	private $nombre;
	private $apPaterno;
	private $apMaterno;
	private $correoInst;
	private $boleta;
	private $materia;
	private $activo;
	/* Nombre de la tabla de mysql*/
	const TABLA = 'alumnos';
	/*Contructor de la clase*/
	function __construct($id,$nombre,$apPaterno,$apMaterno,$correoInst,$boleta,$materia,$activo)
	{
		$this->id=$id;
		$this->nombre=$nombre;
		$this->apPaterno=$apPaterno;
		$this->apMaterno=$apMaterno;
		$this->correoInst=$correoInst;
		$this->boleta=$boleta;
		$this->materia=$materia;
		$this->activo=$activo;

	}
	
	 public static function Recover_Alumnos()
	 {
        $conection = new Conexion();
        $consult = $conection->prepare('SELECT * FROM ' . self::TABLA . ' ORDER BY id ASC');
        $consult->execute();
        $values = $consult->fetchAll();
        return $values;
    }

	 public static function Recover_id($values)
	 {
        $conection = new Conexion();
        $consult = $conection->prepare("SELECT * FROM alumnos WHERE  boleta='$values' and  activo=1 ");
        $consult->execute();
        $values = $consult->fetchAll();
        return $values;
    }
  
     

}

?>