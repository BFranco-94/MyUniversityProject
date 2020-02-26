var valueOfRdio="";
var itemSelectedForAcademicArea="";
var itemSelectedForStatus="";
var kOfUser="";
var kOfCompany="";
window.addEventListener('load', function(){
	// UIkit.modal("#mdal-choose-user").show();

	// UIkit.modal("#mdal-dataComplete").show();
	var URLhash = window.location.hash;
	if (URLhash=="#sign-in") { $("#section-sigup").hide("slow"); }


//events for capture the moment when you write on the boxes formulary -->{
	document.getElementById('password').addEventListener('input', function() {
		let campoPass = event.target;
	    if ( campoPass.value.length > 7 ) {
			$("#password").css("border","1px solid green");
			$("#password").css("color","green");
		}else{
			$("#password").css("border","1px solid red");
			$("#password").css("color","red");
		}

	});

	document.getElementById('conPassword').addEventListener('input', function() {
		let campoConfPass = event.target;
		let password= document.getElementById('password').value;
	    if ( campoConfPass.value==password ) {
			    $("#conPassword").css("border","1px solid green");
				$("#conPassword").css("color","green");
	    }else if(campoConfPass.value != password){
	    		$("#conPassword").css("border","1px solid red");
				$("#conPassword").css("color","red");
	    }
	    	
	});
	document.getElementById('userNameStudent').addEventListener('input', function() {
		let campoUserName = event.target;
	    if ( campoUserName.value.length > 5 ) {
			$("#userNameStudent").css("border","1px solid green");
			$("#userNameStudent").css("color","green");
		}else{
			$("#userNameStudent").css("border","1px solid red");
			$("#userNameStudent").css("color","red");
		}

	});

// } end events for capture

	document.querySelector('#academicArea').addEventListener('change',  (event) =>{ 
		itemSelectedForAcademicArea=event.target.value; 
	});
	document.querySelector('#status_student').addEventListener('change',(event) =>{ 
		itemSelectedForStatus=event.target.value; 
	});
	document.querySelector('#kindOfCompany').addEventListener('change' ,(event) =>{ 
		kOfCompany=event.target.value; 
	});
	document.querySelectorAll('input[type=radio]').forEach(item => item.addEventListener('click', e => {
		if (e.target.value=="Student" && e.target.checked==true){
			kOfUser=e.target.value;
			$("#divTmp").hide("slow");
			$("#formCompany").hide("slow");
			$("#formStudent").show("slow");
		}else if(e.target.value=="Company" && e.target.checked==true){
			kOfUser=e.target.value;
			$("#divTmp").hide("slow");
			$("#formStudent").hide("slow");
			$("#formCompany").show("slow");
		}
	}));
	document.querySelector('#asStudentCard').addEventListener('click', function(e){
		UIkit.modal("#mdal-dataComplete").show();
		$("#formCompany").hide("slow");
		$("#formStudent").show("slow");
		$("#selectTypeForm").show("slow");
		document.getElementsByClassName('enterpriseStudent')[0].checked=true;
		kOfUser=document.getElementsByClassName('enterpriseStudent')[0].value;
	});
	document.querySelector('#asCompanyCard').addEventListener('click', function(e){
		UIkit.modal("#mdal-dataComplete").show();
		$("#formStudent").hide("slow");
		$("#formCompany").show("slow");
		$("#selectTypeForm").show("slow");
		document.getElementsByClassName('enterpriseStudent')[1].checked=true;
		kOfUser=document.getElementsByClassName('enterpriseStudent')[1].value;
	});

	$('#formUser').submit(function(e){
		e.preventDefault();

		let userNStudent = document.getElementById('userNameStudent').value;
		let myEmail=document.getElementById('emailStudent').value;
		let password= document.getElementById('password').value;
		let passwordConfirm= document.getElementById('conPassword').value;
		let resMail=valEmail(myEmail); //return value boolean
		let resPass = ValPass(password,passwordConfirm); //return value boolean
		let fUser=(userNStudent==="")? false : true;
		if(resMail && fUser){
			if(resPass){
				UIkit.modal("#mdal-choose-user").show();
				$('#formDataStudent').submit(function(e){
					e.preventDefault();
					let isCheckedTerms=document.getElementById('checkTerms').checked;
					if(isCheckedTerms){
						let nameStudent=document.getElementById("nameStudent").value;
						let lastNameStudent=document.getElementById("lastNameStudent").value;
						let universityName=document.getElementById("universityName").value;
						let federalEntity=document.getElementById("federalEntity").value;
						let country=document.getElementById("country").value;
						insertActionToRegisterStudent(
							userNStudent, //value -> user name
							myEmail, //value -> email for login
							password, //value -> password for login
							nameStudent, //value -> complete name of student
							lastNameStudent, //value -> last name of student
							universityName, //value -> name of the university
							federalEntity, //value -> state or entity
							country, //value -> country of the student
							itemSelectedForAcademicArea, //value -> area that the student are studying
							itemSelectedForStatus, //value -> status ( graduate | active | truncated )
							isCheckedTerms,
							kOfUser //value -> kind of user ( as student or as company )
						);
						console.log(kOfUser);
					}else{
						validateCheckTerms(isCheckedTerms);
					}
				});
				$('#formDataCompany').submit(function(e){
					e.preventDefault();
					let checkTermsCompany=document.getElementById('checkTermsCompany').checked;
					if(checkTermsCompany){
						let nameEmploye=document.querySelector('#NameEmploye').value;
						let LastNameEmploye=document.querySelector('#LastNameEmploye').value;
						let NameCompany=document.querySelector('#NameCompany').value;
						let entityFDCompany=document.querySelector('#entityFDCompany').value;
						let emailCompany=document.querySelector('#emailCompany').value;
						let FederalEntity=document.querySelector('#FederalEntity').value;
						let turnOfCompany=document.querySelector('#turnOfCompany').value;
						let kindOfCompany=document.querySelector('#kindOfCompany').value;
						insertActionToRegisterCompany(
							userNStudent, //value -> user name
							myEmail, //value -> email for login
							password, //value -> password for login
							//values for insert on company
							nameEmploye,
							LastNameEmploye,
							NameCompany,
							entityFDCompany,
							emailCompany,
							FederalEntity,
							turnOfCompany,
							kindOfCompany,
							checkTermsCompany,
							kOfUser
						);
						console.log(kOfUser);
					}else{
						validateCheckTerms(checkTermsCompany);
					}
				});

			
			}
		}else{ //else when you have mistakes on the first formulary
			//put information about mistakes on the form
			validateDates(userNStudent, myEmail, isCheckedTerms, resMail);
		}
	});



});








//function for validate username, email, checkbox and format email
function validateDates(userNameS, email, terms , formatMail){
	if(userNameS===""){
		$("#userNameStudent").css("border","1px solid red");
		$("#userNameStudent").css("color","red");
	}else if(email===""){
		$("#emailStudent").css("color","red");
		document.getElementById('emailStudent').value="please introduce a email";
		setTimeout(function() {
		    $("#emailStudent").css("color","gray");
			document.getElementById('emailStudent').value="";

	    },3000);
	    return false;
	}else if(terms==false){
		$("#messageTerms").show("slow");
		setTimeout(function() {
			$("#messageTerms").hide("slow");
	    },5000);
	    return false;
	}else if(formatMail==false){
		$("#emailStudent").css("color","red");
		// document.getElementById('emailStudent').value="please introduce a correct email";
		setTimeout(function() {
		    $("#emailStudent").css("color","gray");
		    // document.getElementById('emailStudent').value=email;
	    },3000);
	    return false;
	}
}

function ValPass(pass, passConf){
	if(pass==""){
		// alert("introduce a password");
		$("#password").css("border","1px solid red");	
		return false;
	}else if (passConf===pass){
		$("#password").css("color","green");
		$("#conPassword").css("color","green");
		return true
	}else{
		$("#conPassword").css("color","red");
		// alert("password incorrect!");
		setTimeout(function() {
			$("#conPassword").css("color","gray");
	    },3000);
	    return false;
	}
}



function valEmail(mail){
   var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
   let resPatt= emailPattern.test(mail);
   if (resPatt){
   	    $("#emailStudent").css("border","1px solid green");
		$("#emailStudent").css("color","green");
   }else{
	   	$("#emailStudent").css("border","1px solid red");
		$("#emailStudent").css("color","red");
   }
   return emailPattern.test(mail); 
}



function validateCheckTerms(termsCheckBox){
	if(termsCheckBox==false){
		$("#messageTerms").show("slow");
		setTimeout(function() {
			$("#messageTerms").hide("slow");
	    },5000);
	    return false;
	}
}

/*
*@param value -> user name
*@param value -> email for login
*@param value -> password for login
*@param value -> complete name of student
*@param value -> last name of student
*@param value -> name of the university
*@param value -> state or entity
*@param value -> country of the student
*@param value -> academic area of the student
*@param value -> status ( graduate | active | truncated )
*@param value -> terms - accepted terms and conditions page
*@param value -> type of user - the user select student or company(this case is student)

*/
function insertActionToRegisterStudent( 
	userNameAccount ,email,password,nameStudent,
	lastNameStudent, universityName, federalEntity, 
	country, itemSelectedForAcademicArea,  itemSelectedForStatus , checkTerms, typeOfUser ){
	let arrData=[
		userNameAccount, email, password, nameStudent, lastNameStudent, universityName, 
		federalEntity, country, itemSelectedForAcademicArea,  itemSelectedForStatus, checkTerms, typeOfUser
	];
	$.post('sToRegisterMup', {
		UserName : userNameAccount,
		Email : email,
		Password : password,
		// personal user data 
		Names : nameStudent,
		LastName : lastNameStudent, 
		UniversityName : universityName,
		FederalEntity : federalEntity,
		Country : country,
		Status : itemSelectedForStatus,
		AcademicArea : itemSelectedForAcademicArea,
		KindOfUser : typeOfUser,
		CheckTerms : checkTerms 
	}, function(response) {
		console.log(response);
		let data=JSON.parse(response);
		if(data.dataRegister.status){
			document.querySelectorAll('.messageSignupSuccess')[0].textContent=""+data.dataRegister.Message;
			document.querySelectorAll('.messageSignupSuccess')[0].style.display="block";
			document.querySelectorAll('.messageSignupSuccess')[0].style.transform="scale(1.1)";
			document.querySelectorAll('.messageSignupSuccess')[0].style.transition="1s all ease";
			document.querySelectorAll('.messageSignupSuccess')[0].style.color="#138d75";
			console.log(
				"datos JSON \n "+
				"Hola : "+data.dataRegister.NameUser+
			    "\n : "+data.dataRegister.Message
			);

		}else{
			document.querySelectorAll('.messageSignupSuccess')[0].textContent=""+data.dataRegister.Message;
			document.querySelectorAll('.messageSignupSuccess')[0].style.display="block";
			document.querySelectorAll('.messageSignupSuccess')[0].style.transform="scale(1.1)";
			document.querySelectorAll('.messageSignupSuccess')[0].style.transition="1s all ease";
			document.querySelectorAll('.messageSignupSuccess')[0].style.color="red";
			console.log("fallo -> "+data.dataRegister.status);
		}
	}); 
	//console.log(arrData);
}

function insertActionToRegisterCompany(
	userNCompany,  myEmail, password,  nameEmploye, lastNameEmploye,
	nameCompany, entityFDCompany, emailCompany, federalEntity, turnOfCompany, kindOfCompany, checkTerms, typeOfUser){
	let arrData=[
		userNStudent,  myEmail, password,  nameEmploye, lastNameEmploye,
		nameCompany, entityFDCompany, emailCompany, FederalEntity, turnOfCompany, kindOfCompany, checkTerms, typeOfUser
	];
	$.post('sToRegisterMup', {
		UserNCompany : userNCompany,
		Email: myEmail,
		Password: password,
		NameEmploye: nameEmploye,
		LastNameEmploye: lastNameEmploye,
		NameCompany: nameCompany,
		EntityFDCompany: entityFDCompany,
		EmailCompany: emailCompany,
		FederalEntity: federalEntity,
		TurnOfCompany: turnOfCompany,
		KindOfCompany: kindOfCompany,
		CheckTerms: checkTerms,
		TypeOfUser: typeOfUser
	}, function(response) {
		let data=JSON.parse(response);
		if(data.dataRegister.status==true){
			document.querySelectorAll('.messageSignupSuccess')[1].textContent=""+data.dataRegister.Message;
			document.querySelectorAll('.messageSignupSuccess')[1].style.display="block";
			document.querySelectorAll('.messageSignupSuccess')[1].style.transform="scale(1.1)";
			document.querySelectorAll('.messageSignupSuccess')[1].style.transition="1s all ease";
			document.querySelectorAll('.messageSignupSuccess')[1].style.color="#138d75";
			console.log(
				"datos JSON \n "+
				"Hola : "+data.dataRegister.NameUser+
			    "\n : "+data.dataRegister.Message
			);
		}else{
			document.querySelectorAll('.messageSignupSuccess')[1].textContent=""+datos.dataRegister.Message;
			document.querySelectorAll('.messageSignupSuccess')[1].style.display="block";
			document.querySelectorAll('.messageSignupSuccess')[1].style.transform="scale(1.1)";
			document.querySelectorAll('.messageSignupSuccess')[1].style.transition="1s all ease";
			document.querySelectorAll('.messageSignupSuccess')[1].style.color="red";
			console.log("fallo -> "+datos.dataRegister.status);
		}
	}); 
	console.log(arrData);
}

/*
		=======================================================
		establecer un campo como unico sus valores, ejemplo:
		ALTER TABLE `users` ADD UNIQUE(`Email`);
		=======================================================
		vaciar una tabla:
		TRUNCATE TABLE `users` 
		=======================================================
		query to insert in users:
		INSERT INTO `users` 
		(`id_user`, `UserName`, `Email`, `Password`, `Date`) 
		VALUES 
		(NULL, 'bryan', 'bryanfr@maf.com', '123', '2020-01-01');
		=======================================================
		trigger for insert dates on table dates student

		CREATE TRIGGER users_AI AFTER INSERT ON users FOR EACH ROW 
		INSERT INTO studentdata(id_dateUser, id_idxUser) 
		VALUES(NULL, NEW.id_user)
		=======================================================
		update trigger
		
		DROP TRIGGER IF EXISTS `users_AI`;CREATE DEFINER=`root`@`localhost` 
		TRIGGER `users_AI` AFTER INSERT ON `users` FOR EACH ROW 
		INSERT INTO studentdata(id_dateUser, id_idxUser, EmailStudent) 
		VALUES(NULL, NEW.id_user, NEW.Email)
		=======================================================
		trigger for insert dates on table dates company

		CREATE TRIGGER busers_AI AFTER INSERT ON busers FOR EACH ROW 
		INSERT INTO businessdata ( id_bdate, id_idxBUser, EmailCompany ) 
		VALUES (NULL, NEW.id_buser, NEW.CompanyEmail)

		=======================================================
		
		insert more values than two

		INSERT INTO `busers` 
		(`id_buser`, `NameUser`, `CompanyEmail`, `Password`, `DateRegister`) 
		VALUES 
		(NULL, 'CWize', 'Wize-line@gmail.com', '123', '2020-01-01'), 
		(NULL, 'wCWize121', 'Wize-lline@gmail.com', '123', '2020-01-10');


		*/