<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="es, en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Author" content="Aldo, Alejandra, Alejandro, Bryan Franco">
<meta name="Description"
	content="Create an new project on My University Project">
<title>MUP - My University Project</title>
<link rel="stylesheet" href="../assets/css/uikit.min.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/styles/styles-menu.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/styles/styles-profile.css">
<link rel="shortcut icon" href="../assets/image/idea_job_icon.png">

</head>

<body>
	<header>
		<div
			uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #transparent-sticky-navbar"
			id="cont-menu-f">
			<nav class="uk-navbar-container menu-cont" uk-navbar>

				<div class="uk-navbar-left">

					<ul class="uk-navbar-nav">
						<li class="uk-active uk-padding-small icon-logo"><img
							src="../assets/image/idea_job_icon.png" width="50px"></li>
						<li class="uk-active"><a href="../index.html">M.U.P</a></li>
					</ul>
				</div>

				<div class="uk-navbar-right">
					<ul class="uk-navbar-nav">
						<li class="menu-right-ocult"><a href="#"
							uk-tooltip="title: User options; pos: bottom"> <span
								uk-icon="icon: user;ratio: 1.3;" class="uk-text-primary"></span>
								User Options
						</a>
							<div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
								<div class="uk-navbar-dropdown-grid uk-child-width-1-2" uk-grid>
									<div>
										<ul class="uk-nav uk-navbar-dropdown-nav">
											<li class="uk-active uk-nav-header"><a href="#"
												uk-tooltip="title: User ; pos: buttom-right"> <span
													uk-icon="icon: user;ratio: 1.3;" class="uk-text-primary"></span>
											</a></li>
											<li class="uk-nav-divider"></li>
											<li><a href="../index.jsp"> + <span
													uk-icon="icon: home;ratio: 1.3;" class="uk-text-primary"></span>
													Home
											</a></li>
											<li><a href="../mup/my-project.html"> + <span
													uk-icon="icon: folder;ratio: 1.3;" class="uk-text-primary"></span>
													Add new Project
											</a></li>

										</ul>
									</div>
									<div>
										<ul class="uk-nav uk-navbar-dropdown-nav">
											<li class="uk-active uk-nav-header"><a href="#"
												uk-tooltip="title: System ; pos: buttom-right"> <span
													uk-icon="icon: cog;ratio: 1.3;" class="uk-text-primary"></span>
											</a></li>
											<li class="uk-nav-divider"></li>

											<li><a href="../companies/searchProject.html"> + <span
													uk-icon="icon: search;ratio: 1.3;" class="uk-text-primary"></span>
													Project search
											</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="menu-right-ocult"><a href="#"> <span
								uk-icon="icon: cog;ratio: 1.3;" class="uk-text-primary"></span>
								Options
						</a>
							<div uk-dropdown="pos: top-left">
								<ul class="uk-nav uk-dropdown-nav">
									<li class="uk-active uk-nav-header"><a href="#">Log
											Option</a></li>
									<li class="uk-nav-divider"></li>
									<li><a href="#modal-login" uk-toggle> <span
											uk-icon="icon: home;" class="uk-text-primary"></span> Home
									</a></li>
									<li><a href="#!"> <span uk-icon="icon: sign-out;"
											class="uk-text-primary"></span> Logout
									</a></li>
									<!-- Second section menu -->
									<li class="uk-active uk-nav-header"><a href="#">M.U.P</a></li>
									<li class="uk-nav-divider"></li>
									<li><a href="#"> <span uk-icon="icon: users;"
											class="uk-text-primary"></span> About us
									</a></li>
									<li><a href="#"> <span uk-icon="icon: question;"
											class="uk-text-primary"></span> What is MUP
									</a></li>
									<li><a href="#"> <span uk-icon="icon: receiver;"
											class="uk-text-primary"></span> Contact
									</a></li>
									<li><a href="#"> <span uk-icon="icon: heart;"
											class="uk-text-primary"></span> Success case projects
									</a></li>
								</ul>
							</div></li>
						<li class="menu-device"><a class="uk-navbar-toggle"
							uk-toggle="target: #offcanvas-push" uk-navbar-toggle-icon
							href="#"> </a></li>
					</ul>

				</div>

			</nav>
		</div>
		<!-- end menu -->

	</header>
	<!-- menu push -->
	<div id="offcanvas-push" uk-offcanvas="mode: push; overlay: true"
		class="">
		<div class="uk-offcanvas-bar menu-push">

			<button class="uk-offcanvas-close" type="button" uk-close></button>

			<h3 class="uk-text-left">
				<img src="../assets/image/idea_job_icon.png" width="50px">
				M.U.P
			</h3>
			<hr class="uk-divider-small">
			<ul uk-accordion="collapsible: true">
				<li><a class="uk-accordion-title" href="#">User Options</a>
					<div class="uk-accordion-content">
						<ul class="uk-list uk-list-striped">
							<li><a href="#modal-login" uk-toggle> <span
									uk-icon="icon: user;" class="uk-text-primary"></span> Login
							</a></li>
							<li><a href="#modal-register" uk-toggle> <span
									uk-icon="icon: user;" class="uk-text-primary"></span> Register
							</a></li>
						</ul>
					</div></li>
				<li><a class="uk-accordion-title" href="#">M.U.P</a>
					<div class="uk-accordion-content">
						<ul class="uk-list uk-list-striped">
							<li>+ <span uk-icon="icon: folder;ratio: 1.3;"
								class="uk-text-primary"></span> <a href="../"> Home </a>
							</li>
							<li>+ <span uk-icon="icon: user;ratio: 1.3;"
								class="uk-text-primary"></span> <a href="#!"> Profile </a>
							</li>
							<li>+ <span uk-icon="icon: lock;ratio: 1.3;"
								class="uk-text-primary"></span> <a href="#!"> Generate code
									access </a>
							</li>
							<li>+ <span uk-icon="icon: search;ratio: 1.3;"
								class="uk-text-primary"></span> <a href="#!"> Project search
							</a>
							</li>
						</ul>
					</div></li>
			</ul>
			<div class="uk-divider-icon"></div>
		</div>
	</div>







	<section class=" uk-section w-padding">
		<div class="uk-container uk-container-expand w-padding">
			<div class="uk-grid-match uk-grid-small uk-text-center" uk-grid>
				<div class="uk-width-1-4@m box-grid-options">

					<div class="uk-card uk-card-default uk-card-body "
						id="options-profile-box">
						<div class="uk-width-expand@m">
							<div class="uk-card uk-card-body box-to-select-option"
								id="Profile">
								<span uk-icon="icon: user; ratio: 2.0;"></span> User Profile
							</div>
						</div>
						<div class="uk-width-expand@m">
							<div class="uk-card uk-card-body box-to-select-option"
								id="Contact">
								<span uk-icon="icon: file-edit; ratio: 2.0;"></span> Contact
							</div>
						</div>
						<div class="uk-width-expand@m">
							<div class="uk-card uk-card-body box-to-select-option"
								id="TMates">
								<span uk-icon="icon: users; ratio: 2.0;"></span> TeamMates
							</div>
						</div>
						<div class="uk-width-expand@m">
							<div class="uk-card uk-card-body box-to-select-option"
								id="SMedia">
								<span uk-icon="icon: world; ratio: 2.0;"></span> Social Media
							</div>
						</div>
						<div class="uk-width-expand@m">
							<div class="uk-card uk-card-body box-to-select-option"
								id="projects">
								<span uk-icon="icon: folder; ratio: 2.0;"></span> Projects
							</div>
						</div>
					</div>
				</div>

				<div class="uk-width-expand@m box-grid-options">
					<div class="uk-card uk-card-default uk-card-body box-info-options">

						<!-- section for user profile -->

						<div id="box-Profile">
							<div class="uk-grid-small uk-flex-middle" uk-grid>
								<div class="uk-width-auto">
									<img class="uk-border-circle" width="80" height="40"
										src="../assets/image/Default_Profilepic.jpg" id="imageProfile">
								</div>
								<div class="uk-width-expand">
									<h1 class="uk-text-center" id="userNameTag">Bryan Franco
										Velez</h1>
									<p class="uk-text-meta uk-margin-remove-top uk-text-right">
										<time datetime="2016-04-01T19:00">April 01, 2016</time>
									</p>
								</div>
							</div>

							<ul uk-tab>
								<li><a href="#">User Access</a></li>
								<li><a href="#">Data User</a></li>
								<li><a href="#">Password</a></li>
								<li><a href="#">Generate Code Access</a></li>
							</ul>

							<ul class="uk-switcher uk-margin">
								<div>
									<form class="uk-form-horizontal uk-margin-large" uk-grid>
										<div class="uk-width-1-2@s boxUsrName">
											<label class="uk-form-label uk-text-left uk-margin"
												for="usrName">User Name</label> <input
												class="uk-input inputsToProfileAcces" id="usrName"
												name="usrName" type="text" disabled=""
												placeholder="User Name">
										</div>
										<div class="uk-width-1-2@s">
											<div class="uk-width-auto">
												<img class="uk-border-squad" width="170" height="40"
													src="../assets/image/information.png" id="imageForProfile">
											</div>
										</div>
										<div class="uk-width-1-2@s">
											<label class="uk-form-label uk-text-left uk-margin"
												for="email"> Email </label> <input
												class="uk-input inputsToProfileAcces" id="email"
												name="emailUser" type="text" disabled=""
												placeholder="Email account for login">
										</div>
										<div class="uk-width-1-2@s">
											<label
												class="uk-form-label uk-text-left uk-margin uk-text-dangerous"
												for="passwordToUpdate"> Introduce your password </label> <input
												class="uk-input inputsToProfileAcces" id="passwordToUpdate"
												name="passwordToUpdate" type="text" disabled=""
												placeholder="Introduce your password for upadte">
										</div>
										<div class="uk-width-1-2@s uk-width-1-2@m uk-width-1-6@l ">
											<input class="uk-button uk-button-primary" type="submit"
												id="btnUpdateUserAccess" value="Update">
										</div>
										<div class="uk-width-1-2@s uk-width-1-2@m uk-width-1-6@l">
											<input class="uk-button uk-button-primary" type="button"
												id="btnShowUpdateUserAccess" value="Enable boxes">
										</div>

									</form>
								</div>

								<!-- data user section on user profile -->
								<div>
									<form class="uk-form-horizontal uk-margin-large" uk-grid>
										<div class="uk-width-1-2@s boxUsrName">
											<label class="uk-form-label uk-text-left uk-margin"
												for="names"> Name(s) </label> <input class="uk-input"
												id="names" name="names" type="text"
												placeholder="Enter your name(s)">
										</div>
										<div class="uk-width-1-2@s">
											<label class="uk-form-label uk-text-left uk-margin"
												for="lastName"> Last Name </label> <input class="uk-input "
												id="lastName" name="lastName" type="text"
												placeholder="Enter your last Name">
										</div>
										<div class="uk-width-1-2@s">
											<label
												class="uk-form-label uk-text-left uk-margin uk-text-dangerous"
												for="nameOfUniversity"> University Name </label> <input
												class="uk-input " id="nameOfUniversity"
												name="nameOfUniversity" type="text"
												placeholder="Introduce your name of university">
										</div>
										<div class="uk-width-1-2@s">
											<label
												class="uk-form-label uk-text-left uk-margin uk-text-dangerous"
												for="federalEntity"> Federal Entity </label> <input
												class="uk-input " id="federalEntity" name="federalEntity"
												type="text" placeholder="Introduce your federal entity">
										</div>
										<div class="uk-width-1-2@s">
											<label
												class="uk-form-label uk-text-left uk-margin uk-text-dangerous"
												for="country"> Country </label> <input class="uk-input "
												id="country" name="country" type="text"
												placeholder="Introduce your federal entity">
										</div>
										<div class="uk-width-1-2@s">
											<label class="uk-form-label uk-text-left uk-margin"
												for="academicAreaSelect">Academic Area</label> <select
												class="uk-select" id="academicAreaSelect"
												name="academicAreaSelect">
												<option value="" selected="" disabled="">Select
													Academic Area</option>
												<option value="Ingenieria en computacion">
													Ingenieria en computacion</option>
												<option value="Licenciatura en derecho">
													Licenciatura en derecho</option>
												<option value="Administracion">Administracion</option>
												<option value="Contaduria">Contaduria</option>
											</select>
										</div>


										<div class="uk-width-1-6@s">
											<input class="uk-button uk-button-primary" type="button"
												id="" value="Update Data">
										</div>

									</form>
								</div>

								<!-- password section on user profile -->
								<div>
									<h2 class="uk-text-center">Change your Password</h2>
									<form class="uk-form-horizontal uk-margin-large" uk-grid>
										<div class="uk-width-1-2@s boxUsrName">
											<label class="uk-form-label uk-text-left uk-margin"
												for="currentPassword"> Enter your current password </label>
											<input class="uk-input" id="currentPassword"
												name="currentPassword" type="password"
												placeholder="Current Password">
										</div>
										<div class="uk-width-1-2@s">
											<label class="uk-form-label uk-text-left uk-margin"
												for="newPassword"> New Password </label> <input
												class="uk-input " id="newPassword" name="newPassword"
												type="password" placeholder="Enter your new password">
										</div>
										<div class="uk-width-1-1@s">
											<label
												class="uk-form-label uk-text-left uk-margin uk-text-dangerous"
												for="confPassword"> Confirm your new password </label> <input
												class="uk-input " id="confPassword" name="confPassword"
												type="password" placeholder="Confirm your new password ">
										</div>
										<div class="uk-width-1-1@s uk-align-left">
											<input class="uk-button uk-button-primary" type="button"
												id="" value="Update password">
										</div>

									</form>
								</div>
								<div>
									<div class="uk-width-1-1@s" id="box-to-generateCode">
										<h4 class="uk-text-center">Click on the button for
											generate codes access</h4>
										<div class="uk-width-1-1@s uk-align-left">
											<input class="uk-button uk-button-primary" type="button"
												id="generateCode" value="Generate">
										</div>
									</div>
									<div class="uk-width-1-1@s" id="box-with-codes-generated">
										<h4 class="uk-text-center">
											<span class="uk-text-danger">Note: </span> This codes are
											valid only one time for access at your account
										</h4>
										<table
											class="uk-table uk-table-hover uk-text-bolder uk-table-striped">
											<thead>
												<tr>
													<th class="uk-text-center">User</th>
													<th class="uk-text-center">Code Access</th>
													<th class="uk-text-center">Expiration</th>
												</tr>
											</thead>
											<tbody class="uk-text-center uk-text-primary">
												<tr>
													<td class="userCode"></td>
													<td class="codesUser"></td>
													<td class="date_expiration_code"></td>
												</tr>
												<tr>
													<td class="userCode"></td>
													<td class="codesUser"></td>
													<td class="date_expiration_code"></td>
												</tr>
												<tr>
													<td class="userCode"></td>
													<td class="codesUser"></td>
													<td class="date_expiration_code"></td>
												</tr>
												<tr>
													<td class="userCode"></td>
													<td class="codesUser"></td>
													<td class="date_expiration_code"></td>
												</tr>
												<tr>
													<td class="userCode"></td>
													<td class="codesUser"></td>
													<td class="date_expiration_code"></td>
												</tr>

											</tbody>
										</table>
									</div>
									<!-- <div class="uk-divider-icon"></div> -->

								</div>

							</ul>
						</div>

						<!-- section for the contact -->

						<div id="box-Contact" class="uk-container">
							<h1 class="uk-text-center">
								<span uk-icon="icon: receiver; ratio: 2;"></span> Contact
								Information
							</h1>
							<div class="uk-grid-match uk-grid-small uk-text-center" uk-grid>

								<div class="uk-width-expand@l">
									<div class="uk-card uk-card-default uk-card-body">
										<table class="uk-table uk-table-justify uk-table-divider">
											<thead>
												<tr>
													<th class="uk-text-center">Icon Data</th>
													<th class="uk-text-center">Data</th>
												</tr>
											</thead>
											<tbody>
												<form>
													<tr>
														<td class="uk-text-center"><span
															uk-icon="icon: mail; ratio: 2;"></span></td>
														<td class="uk-text-center"><input
															class="uk-input uk-form-width-large" type="text" name=""
															placeholder="Enter a email for contact"></td>
													</tr>

													<tr>
														<td class="uk-text-center"><span
															uk-icon="icon: world; ratio: 2;"></span></td>
														<td class="uk-text-center"><input
															class="uk-input uk-form-width-large" type="text" name=""
															placeholder="Enter country code"></td>
													</tr>

													<tr>
														<td class="uk-text-center"><span
															uk-icon="icon: receiver; ratio: 2;"></span></td>
														<td class="uk-text-center"><input
															class="uk-input uk-form-width-large" type="text" name=""
															placeholder="Enter your number Cellphone"></td>
													</tr>
													<tr>
														<td class="uk-text-center"><span
															uk-icon="icon: facebook; ratio: 2;"></span></td>
														<td class="uk-text-center"><input
															class="uk-input uk-form-width-large" type="url" name=""
															placeholder="Enter your link facebook"></td>
													</tr>
													<tr>
														<td></td>
														<td class="uk-text-center"><input
															class="uk-button uk-button-primary uk-form-width-medium"
															type="submit" name="btnContactInformation" value="Update">
														</td>
													</tr>
												</form>
											</tbody>
										</table>


									</div>
								</div>

							</div>
						</div>


						<div class="uk-container" id="box-TMates">
							<h1 class="uk-text-center">TeamMates</h1>
							<table class="uk-table uk-table-justify uk-table-divider">
								<thead>
									<tr>
										<th class="uk-text-center">User</th>
										<th class="uk-text-center">Name</th>
										<th class="uk-text-center">See</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="uk-text-center">
											<div class="uk-width-auto">
												<img class="uk-border-circle" width="50" height="40"
													src="../assets/image/Default_Profilepic.jpg">
											</div>
										</td>
										<td class="uk-text-center">
											<p>Bryan Franco velez</p>
										</td>
										<td class="uk-text-center"><a href="#!"
											class="uk-button uk-button-primary">Enter</a></td>
									</tr>

									<tr>
										<td class="uk-text-center">
											<div class="uk-width-auto">
												<img class="uk-border-circle" width="50" height="40"
													src="../assets/image/Default_Profilepic.jpg">
											</div>
										</td>
										<td class="uk-text-center">
											<p>Bryan Franco velez</p>
										</td>
										<td class="uk-text-center"><a href="#!"
											class="uk-button uk-button-primary">Enter</a></td>
									</tr>

									<tr>
										<td class="uk-text-center">
											<div class="uk-width-auto">
												<img class="uk-border-circle" width="50" height="40"
													src="../assets/image/Default_Profilepic.jpg">
											</div>
										</td>
										<td class="uk-text-center">
											<p>Bryan Franco velez</p>
										</td>
										<td class="uk-text-center"><a href="#!"
											class="uk-button uk-button-primary">Enter</a></td>
									</tr>

									<tr>
										<td class="uk-text-center">
											<div class="uk-width-auto">
												<img class="uk-border-circle" width="50" height="40"
													src="../assets/image/Default_Profilepic.jpg">
											</div>
										</td>
										<td class="uk-text-center">
											<p>Bryan Franco velez</p>
										</td>
										<td class="uk-text-center"><a href="#!"
											class="uk-button uk-button-primary">Enter</a></td>
									</tr>

									<tr>
										<td class="uk-text-center">
											<div class="uk-width-auto">
												<img class="uk-border-circle" width="50" height="40"
													src="../assets/image/Default_Profilepic.jpg">
											</div>
										</td>
										<td class="uk-text-center">
											<p>Bryan Franco velez</p>
										</td>
										<td class="uk-text-center"><a href="#!"
											class="uk-button uk-button-primary">Enter</a></td>
									</tr>

									<tr>
										<td class="uk-text-center">
											<div class="uk-width-auto">
												<img class="uk-border-circle" width="50" height="40"
													src="../assets/image/Default_Profilepic.jpg">
											</div>
										</td>
										<td class="uk-text-center">
											<p>Bryan Franco velez</p>
										</td>
										<td class="uk-text-center"><a href="#!"
											class="uk-button uk-button-primary">Enter</a></td>
									</tr>
								</tbody>
							</table>

						</div>


						<div class="uk-container" id="box-SMedia">
							<h1 class="uk-text-center">Social Media</h1>
							<ul uk-tab>
								<li><a href="#">Social Section</a></li>
								<li><a href="#">Update Links</a></li>
							</ul>

							<ul class="uk-switcher uk-margin">
								<div class="uk-container">
									<ul uk-accordion="multiple: true"
										class="uk-margin uk-padding-large" id="accordionSocial">
										<li class=" uk-text-left"><a class="uk-accordion-title"
											href="#"> <span uk-icon="icon: facebook; ratio:3;"
												class="uk-text-bolder" style="color: #3b5999;"></span>
												Facebook
										</a>
											<div class="uk-accordion-content">
												<p class="uk-text-center">
													<a href="#!">Facebook</a>
												</p>
											</div></li>

										<li class="uk-text-left"><a class="uk-accordion-title"
											href="#"> <span uk-icon="icon: instagram; ratio:3;"
												class="uk-text-bolder" style="color: #e4405f;"></span>
												instagram
										</a>
											<div class="uk-accordion-content">
												<p class="uk-text-center">
													<a href="#!">instagram</a>
												</p>
											</div></li>

										<li class="uk-text-left"><a class="uk-accordion-title"
											href="#"> <span uk-icon="icon: twitter; ratio:3;"
												class="uk-text-bolder" style="color: #55acee;"></span>
												twitter
										</a>
											<div class="uk-accordion-content">
												<p class="uk-text-center">
													<a href="#!">twitter</a>
												</p>
											</div></li>

									</ul>
								</div>
								<div class="uk-container">
									<table class="uk-table uk-table-justify uk-table-divider">
										<thead>
											<tr>
												<th class="uk-text-center">Social Icon</th>
												<th class="uk-text-center">Link</th>
											</tr>
										</thead>
										<tbody>
											<form>

												<tr>
													<td class="uk-text-center"><span
														uk-icon="icon: facebook; ratio: 2;"></span></td>
													<td class="uk-text-center"><input
														class="uk-input uk-form-width-large" type="url" name=""
														placeholder="Enter your link facebook"></td>
												</tr>
												<tr>
													<td class="uk-text-center"><span
														uk-icon="icon: instagram; ratio: 2;"></span></td>
													<td class="uk-text-center"><input
														class="uk-input uk-form-width-large" type="url" name=""
														placeholder="Enter your link instagram"></td>
												</tr>
												<tr>
													<td class="uk-text-center"><span
														uk-icon="icon: twitter; ratio: 2;"></span></td>
													<td class="uk-text-center"><input
														class="uk-input uk-form-width-large" type="url" name=""
														placeholder="Enter your link twitter"></td>
												</tr>
												<tr>
													<td></td>
													<td class="uk-text-center"><input
														class="uk-button uk-button-primary uk-form-width-medium"
														type="submit" name="btnUpdateLinksSocial" value="Update">
													</td>
												</tr>
											</form>
										</tbody>
									</table>
								</div>
						</div>


						<div class="uk-container" id="box-Projects">
							<h1 class="uk-text-center uk-margin">My Projects</h1>
							<!-- 
        if(usuarioNoTieneProyecto){}
     -->
							<h2 class="uk-text-center uk-text-danger" id="textMessageProject">
								You need fill data user on section user profile before create
								one project</h2>
							<p class="uk-text-center uk-text-primary">If you don't have
								any projects, create one now</p>
							<button
								class="uk-button uk-button-primary uk-text-center uk-margin"
								id="btnVerifyCreateProject">Create new project</button>
							<!-- } crear uno desde el boto siempre y cuando haya llenado sus datos 
        else{ si no es porque ya tendra proyecto creados
    -->
							<div
								class="uk-child-width-1-2@s uk-child-width-1-2@m uk-text-center"
								id="sectionToSeeProjects" uk-grid>


								<div class="uk-card uk-card-body">
									<div class="uk-card-secondary  uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light"
											tabindex="0">
											<img src="../assets/image/colorHd.jpg">
											<div class="uk-position-center">
												<span class="uk-transition-fade editProject"
													uk-icon="icon: file-text; ratio: 4"
													uk-tooltip="title: Edit project; pos: top-left"></span>
											</div>
										</div>
										<h3
											class="uk-margin-small-top uk-padding-small
                               title-name-project">
											My University Project</h3>
									</div>
								</div>
								<div class="uk-card uk-card-body">
									<div class="uk-card-secondary  uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light"
											tabindex="0">
											<img src="../assets/image/colorHd.jpg">
											<div class="uk-position-center">
												<span class="uk-transition-fade editProject"
													uk-icon="icon: file-text; ratio: 4"
													uk-tooltip="title: Edit project; pos: top-left"></span>
											</div>
										</div>
										<h3
											class="uk-margin-small-top uk-padding-small
                               title-name-project">
											Name Project</h3>
									</div>
								</div>

								<div class="uk-card uk-card-body">
									<div class="uk-card-secondary  uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light"
											tabindex="0">
											<img src="../assets/image/colorHd.jpg">
											<div class="uk-position-center">
												<span class="uk-transition-fade editProject"
													uk-icon="icon: file-text; ratio: 4"
													uk-tooltip="title: Edit project; pos: top-left"></span>
											</div>
										</div>
										<h3
											class="uk-margin-small-top uk-padding-small
                               title-name-project">
											Name Project</h3>
									</div>
								</div>

								<div class="uk-card uk-card-body">
									<div class="uk-card-secondary  uk-text-center">
										<div class="uk-inline-clip uk-transition-toggle uk-light"
											tabindex="0">
											<img src="../assets/image/colorHd.jpg">
											<div class="uk-position-center">
												<span class="uk-transition-fade editProject"
													uk-icon="icon: file-text; ratio: 4"
													uk-tooltip="title: Edit project; pos: top-left"></span>
											</div>
										</div>
										<h3
											class="uk-margin-small-top uk-padding-small
                               title-name-project">
											Name Project</h3>
									</div>
								</div>

							</div>

							<!-- } fin de proyectos creados -->

						</div>

					</div>
				</div>
			</div>
		</div>
	</section>






	<!-- section for modals -->

	<div id="modal-to-updatePicUser" uk-modal>
		<div class="uk-modal-dialog uk-modal-body">
			<button class="uk-modal-close-outside" type="button" uk-close></button>
			<div class="uk-modal-header">
				<h3 class="uk-modal-title uk-text-center uk-text-primary">
					PHOTO USER</h3>
			</div>
			<div class="uk-modal-body">
				<section id="uk-align-center">
					<center>
						<img id="uploadPic" class="uk-border-circle">
					</center>
				</section>
				<!-- <h4 class="uk-text-center uk-text-success" id="titleUpload"></h4> -->
				<!-- <div class="uk-divider-icon"></div> -->
				<form id="formLoadImageUserProfile" enctype="multipart/form-data">
					<div class="uk-child-width-expand@s uk-text-center" uk-grid>
						<div>
							<div class="uk-card uk-card-body">
								<div class="uk-margin" uk-margin>
									<div uk-form-custom="target: true">
										<input type="file" name="imgUser" id="imgUser"> <input
											class="uk-input uk-form-width-large uk-text-center"
											type="text" placeholder="Select image user" disabled>
									</div>
								</div>
							</div>
						</div>
					</div>
					<input class="uk-button uk-button-primary uk-margin" type="button"
						value="Update Image" id="btnUpdateImageToSend"> <input
						class="uk-button uk-button-primary uk-margin" type="submit"
						name="picUserProfile" value="Load Image">
				</form>
				<p class="uk-text-center uk-text-success" id="textFinished"></p>
			</div>
		</div>
	</div>





	<!-- end section for modals -->



	<!--Footer Begins-->
	<footer class="uk-background-secondary"
		uk-parallax="bgy: -150; bgx: 420;">
		<h2 class="uk-text-center uk-padding-small uk-light">
			My University Project<small><sub>&reg;</sub></small>
		</h2>
		<div class="uk-container ">
			<div
				class="uk-child-width-1-3@s uk-child-width-1-3@m uk-text-center container-footer"
				uk-grid>

				<div class="item-content-box-footer">

					<div class="uk-padding uk-light">
						<h3>M.U.P</h3>
						<ul class="uk-list ">
							<li><a href="../index.html#us"> <span
									uk-icon="icon: users; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> About us
							</a></li>
							<li><a href="../GetInTouch.html"> <span
									uk-icon="icon: receiver; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> Contact
							</a></li>
							<li><a href="../GetInTouch.html"> <span
									uk-icon="icon: location; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> Location
							</a></li>
						</ul>

					</div>

				</div>
				<div class="item-content-box-footer">
					<div class=" uk-padding uk-light">
						<h3>Social Media</h3>
						<ul class="uk-list ">
							<li><a href="https://www.facebook.com/"> <span
									uk-icon="icon: facebook; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> Facebook
							</a></li>
							<li><a href="https://twitter.com/home"> <span
									uk-icon="icon: twitter; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> twitter
							</a></li>
							<li><a href="https://www.instagram.com/"> <span
									uk-icon="icon: instagram; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> instagram
							</a></li>



						</ul>

					</div>
				</div>
				<div class="item-content-box-footer">
					<div class=" uk-padding uk-light">
						<h3>Options</h3>
						<ul class="uk-list">
							<li><a href="#!" uk-totop uk-scroll> <span
									uk-icon="icon: home; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> Up
							</a></li>
							<li><a href="../mup/my-project.html"> <span
									uk-icon="icon: pencil; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> New Project
							</a></li>
							<li><a href="../sign-up.html"> <span
									uk-icon="icon: sign-in; ratio: 1.3;"
									class="uk-icon-button uk-text-primary"></span> Sign up
							</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</footer>
	<!--Footer Ends-->

	<script src="../assets/js/uikit.min.js"></script>
	<script src="../assets/js/uikit-icons.min.js"></script>
	<script src="../assets/js/jquery-3.2.1.min.js"></script>
	<script src="../assets/js/scripts/script-profile.js"></script>
</body>
</html>