<?php 

namespace App\Models;


use PDO;

Class Conexao{

	private $pdo;

	public function __construct(){

		$this->pdo = new PDO("mysql:host=localhost;dbname=Tables_in_pusher","root","root");

		$this->pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

		$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	}


	public function Conectar(){

		return $this->pdo;
	}
}

?>