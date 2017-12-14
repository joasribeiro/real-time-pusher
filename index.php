<!DOCTYPE>
<html>
<head>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

<script type="text/javascript" src="assets/js/Messages.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<script src="https://js.pusher.com/4.1/pusher.min.js"></script>





	<title>Chat Realtime com Pusher </title>
</head>


<body>

<div class="container">

	<h2>Chat real time</h2>

	<div class="chat-box">

		<form >

			<div class="form-group">
				<div id="chat-show-messages" class="form-control" style="height: 300px; overflow: scroll; border:solid 3px #efefef;">
					 
				</div>
				
			</div>

			<hr>

			<div class="form-group">

				<label>Nome</label>
				<input type="text" id="chat-name" class="form-control">


				<label>Mensagem</label>
				<textarea id="chat-message" class="form-control" rows="5"></textarea>

				<button id="send-message" class="btn btn-danger btn-xs">Enviar</button>
				
			</div>
			
		</form>
		
	</div>

</div>


<script type="text/javascript">

    // Enable pusher logging - don't include this in production
    // Pusher.logToConsole = true;

    var pusher = new Pusher('4186867ed241f5902011', {
      cluster: 'us2',
      encrypted: true
    });


    var messages = new Messages(pusher);

    messages.getMessagesPusher();



    $("#send-message").on('click', function(event){

    	event.preventDefault();

    	messages.storeMessage();

    });

  </script>

</body>
</html>