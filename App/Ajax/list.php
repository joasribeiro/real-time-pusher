<?php

require '../../config.php';

$mensagem = new App\Models\Mensagem;

echo json_encode($mensagem->all());