<?php

require '../../config.php';

$name = $_POST['name'];

$message = $_POST['message'];

$mensagem = new App\Models\Mensagem;

$mensagem->store($name,$message);

$pusher->trigger('my-channel', 'my-event',[

	'name' => $name,
	'message' => $message,
	'data' => date('d/m/Y H:i:s')

	]);