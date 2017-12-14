<?php 

// init_set("display_errors",1);

date_default_timezone_set("America/Sao_Paulo");


require 'vendor/autoload.php'; 

$options = array(
    'cluster' => 'us2',
    'encrypted' => true
  );

$pusher = new Pusher\Pusher("4186867ed241f5902011","619da0695921f4af0251","434940", $options);

