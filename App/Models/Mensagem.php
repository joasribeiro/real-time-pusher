<?php

namespace App\Models;

class Mensagem extends Model{

	protected $table = "mensagens";


	public function store($name,$message){

		$sql = "insert into {$this->table}(name,message,created_at) values(?,?,?)";

		$store = $this->conexao->prepare($sql);

		$store->bindValue(1,$name);
		$store->bindValue(2,$message);
		$store->bindValue(3,date('Y-m-d H:i:s'));
		$store->execute();

	}
}