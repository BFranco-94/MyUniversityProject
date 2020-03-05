var typeUser = "";

window.addEventListener('load', function validar(){
	
	/*----------------------------------------------------------------------------
	 * esta seccion valida la entrada del user name que sea mayor a 7 caracteres 
	 * --------------------------------------------------------------------------*/
	document.getElementById('userName').addEventListener('input', function() {
		 Name = event.target;
	    if ( Name.value.length > 7 ) {
			$("#userName").css("border","1px solid green");
			$("#userName").css("color","green");
		}else{
			$("#userName").css("border","1px solid red");
			$("#userName").css("color","red");
		}

	});
	
	/*----------------------------------------------------------------------------
	 * esta seccion valida la entrada del password que sea mayor a 7 caracteres 
	 * --------------------------------------------------------------------------*/
	document.getElementById('passwordLogin').addEventListener('input', function() {
		Passwo = event.target;
	    if ( Passwo.value.length > 7 ) {
			$("#passwordLogin").css("border","1px solid green");
			$("#passwordLogin").css("color","green");
		}else{
			$("#passwordLogin").css("border","1px solid red");
			$("#passwordLogin").css("color","red");
		}

	});
	
	document.querySelectorAll('input[type=radio]').forEach(item => item.addEventListener('click', e => {
		typeUser = e.target.value;
		
	}));
	/*----------------------------------------------------------------------------
	 * esta seccion valida la seleccion de un tipo de usuario
	 * --------------------------------------------------------------------------*/
	document.querySelectorAll('input[type=radio]').forEach(
			item => item.addEventListener('click', e => {
			let Option=e.target;
			UserType=Option.value;	
	}));
	/*----------------------------------------------------------------------------
	 * esta seccion envia los datos al servlet
	 * --------------------------------------------------------------------------*/
	$('#btnLogin').on("click", function(e) {
		e.preventDefault();
		let nameUser=document.querySelector('#userName').value;
		let pass=document.querySelector('#passwordLogin').value;
		let type = typeUser;
	
			   $.post('loginServlet',{
				   User : nameUser,
				   Password : pass,
				   TypeUser : type
			    }, function(response){
			    	let data=JSON.parse(response);
			    	console.log("user name : "+data.LogUser.user+" - password: "+data.LogUser.password);
			    });
	        });
	
});