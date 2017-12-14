<?php
namespace App\models;

use App\Models\conexao;

class Model{

	protected $conexao;

	public function __construct(){

		$conexao = new Conexao;

		$this->conexao = $conexao->conectar();
	}


	public function all(){

		$sql = "select * from {$this->table}";

		$query = $this->conexao->query($sql);

		return $query->fetchAll();
	}
}
