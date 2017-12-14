class Messages{


	constructor(Pusher){


		this.pusher = Pusher;

		this.show_message = $("#chat-show-messages");

		this.name = $("#chat-name");

		this.message = $("#chat-message");

	}


	getChannel(){

		this.channel = this.pusher.subscribe("my-channel");
	}




	storeMessage(){

		$.ajax({
			url:"App/Ajax/store.php",
			type:"post",
			 //pegar os dados de um formulario val()
			data:"message="+this.message.val()+"&name="+this.name.val(),

			success: function(retorno){
			 $(document).ready(function(){
			
  			$('#enviou').html('<span style="color:green;">sucesso<span>');
  			
});

			
			}
		});
}


	showMessages(retorno){

		let html = '<span style="font-size:12px;">'+retorno.name+'-'+retorno.data+'</span></br>';
		html+= '<b>Mensagem:</b> '+retorno.message+'<span id="enviou" style="float:right;color:#ddd; "><strong >V</strong></span>';
		html+='<hr>';

		this.show_message.append(html);
	}

	getMessagesDatabase(){

		$.ajax({

			url: 'App/Ajax/list.php',
			
			type: 'get',
			
			dataType: 'json',

			success: (retorno)=>{



				$.each(retorno, (key,value)=>{

					this.showMessages({

						name: value.name,

						message: value.message,

						data: value.created_at


					});

				});
			}
		})

	}

	getMessagesPusher(){

		this.getMessagesDatabase();

		this.getChannel();
		
		this.channel.bind('my-event', (data)=>{


			this.showMessages(data);

			this.name.val('');

			this.message.val('');

			this.show_message.animate({

				scrollTop: this.show_message.prop('scrollHeight')},1000);

		});

	}
}