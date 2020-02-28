<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="Author" content="Bryan Franco">
    <meta name="Description" content="Create an account and share your projects with companies ">
    <title>MUP - My University Project</title>
    <link rel="stylesheet" href="assets/css/uikit.min.css" />
    <script src="assets/js/uikit.min.js"></script>
    <script src="assets/js/uikit-icons.min.js"></script>
 
    
    <link rel="stylesheet" type="text/css" href="assets/css/styles/styles-menu.css">
    <link rel="stylesheet" type="text/css" href="assets/css/styles/styles-signup.css">
    <link rel="shortcut icon" href="assets/image/idea_job_icon.png">

</head>

<body>
<div uk-sticky="sel-target: .uk-navbar-container; cls-active: uk-navbar-sticky; bottom: #transparent-sticky-navbar" >
    <nav class="uk-navbar-container menu-cont"  uk-navbar>

        <div class="uk-navbar-left">

            <ul class="uk-navbar-nav">
                <li class="uk-active uk-padding-small icon-logo">
                    <img src="assets/image/idea_job_icon.png" width="40px">
                </li>
                <li class="uk-active">
                    <a href="index.html">My University Project</a>
                </li>
            </ul>
        </div>


        <div class="uk-navbar-right">
            
            <ul class="uk-navbar-nav">
                <li class="menu-right-ocult">
                    <a href="login.html" id="toSignin">
                        <span uk-icon="icon: sign-in;ratio: 1.3;" class="uk-text-primary"></span> Sign-in
                    </a>
                </li>
                <li class="menu-right-ocult">
                   <a href="#sign-up" id="toSignup">
                        <span uk-icon="icon: sign-in;ratio: 1.3;" class="uk-text-primary"></span> Sign-up
                    </a> 
                </li>
                <li class="menu-right-ocult">
                    <a href="#">
                        <span uk-icon="icon: cog;ratio: 1.3;" class="uk-text-primary"></span> Options
                    </a>
                    <div uk-dropdown="pos: top-left">
                        <ul class="uk-nav uk-dropdown-nav">
                            <li class="uk-active uk-nav-header"><a href="#">Log Option</a></li>
                            <li class="uk-nav-divider"></li>
                            <li>
                                <a href="index.html">
                                    <span uk-icon="icon: home;" class="uk-text-primary"></span> Home
                                </a>
                            </li>
                            <!-- Second section menu -->
                            <li class="uk-active uk-nav-header"><a href="#">M.U.P</a></li>
                            <li class="uk-nav-divider"></li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: users;" class="uk-text-primary"></span> About us
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: question;" class="uk-text-primary"></span> What is MUP
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: receiver;" class="uk-text-primary"></span> Contact
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: heart;" class="uk-text-primary"></span> Success case projects
                                </a>
                            </li>
                        </ul>
                    </div>

                </li>
                <li class="menu-device">
                    <a class="uk-navbar-toggle" uk-toggle="target: #offcanvas-push" uk-navbar-toggle-icon href="#">
                    </a>
                </li>
            </ul>

        </div>

    </nav>
</div>


    <!-- menu push -->
    <div id="offcanvas-push" uk-offcanvas="mode: push; overlay: true" class="">
        <div class="uk-offcanvas-bar menu-push">

            <button class="uk-offcanvas-close" type="button" uk-close></button>

            <h3 class="uk-text-left">
                <img src="assets/image/idea_job_icon.png" width="50px"> M.U.P
            </h3>
            <hr class="uk-divider-small">
            <ul uk-accordion="collapsible: true">
                <li>
                    <a class="uk-accordion-title" href="#">User Options</a>
                    <div class="uk-accordion-content">
                        <ul class="uk-list uk-list-striped">
                            <li>
                                <a href="#modal-login" uk-toggle>
                                    <span uk-icon="icon: home;" class="uk-text-primary"></span> Home
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">M.U.P</a>
                    <div class="uk-accordion-content">
                        <ul class="uk-list uk-list-striped">
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: users;" class="uk-text-primary"></span> About us
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: question;" class="uk-text-primary"></span> What is MUP
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: receiver;" class="uk-text-primary"></span> Contact
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span uk-icon="icon: heart;" class="uk-text-primary"></span> Success case projects
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <div class="uk-divider-icon"></div>
        </div>
    </div>





<section class="uk-section" id="section-sigup" uk-parallax="bgy: -350" >
	<div class="uk-position-large uk-margin-large uk-position-center
            ">
        <div class="uk-card uk-grid-collapse uk-child-width-1-2@s 
                    uk-margin content-formulary" uk-grid id="section-sigup-cont">
                <!-- <div class="uk-card-media-left uk-cover-container" 
                     id="cont-image-left">
                    <img src="assets/image/contract2.png" alt="sign-up" uk-cover id="imageLogo">
                    <canvas width="100" height="400"></canvas>
                </div> -->
                <div>


                <div class="uk-card-body form-body" id="formBox">
                    <div class="uk-grid-small uk-flex-middle" uk-grid>
                        <div class="uk-width-auto">
                            <!-- <img class="uk-border-circle" id="imageSign" width="40px" 
                                height="40" 
                                 src="assets/image/idea_job_icon.png" > -->
                        </div>
                            <div class="uk-width-expand">
                            <h3 class="uk-card-title uk-margin-remove-bottom">
                                Sign up to start
                            </h3>
                            <p class="uk-text-meta uk-margin-remove-top">
                                
                            </p>
                        </div>
                    </div>
                    <ul uk-tab>
                        <li><a href="#" id="AsStudentLink" >User account</a></li>
                        <!-- <li><a href="#" id="AsCompanyLink">As Company</a></li> -->
                    </ul>
                
                    <ul class="uk-switcher uk-margin" >
                    <!-- first section to sign up -->
                        <div>
                            
                            <div class="uk-card-body " style="padding: 0;  ">
                                
                                <!-- <h6 class="uk-text-primary uk-text-center@l uk-text-uppercase uk-text-danger uk-text-bold" id="messageEmail">
                                    Introduce a email correct !
                                </h6> -->
                                <form id="formUser">
                                    <div class="uk-width-1-1@s uk-margin-top">
                                        <div class="uk-inline">
                                            <span class="uk-form-icon" uk-icon="icon: user"></span>
                                            <input class="uk-input uk-form-width-large" 
                                                   id="userNameStudent" type="text" 
                                                   placeholder="User name as student"
                                                   required="" >    
                                        </div>
                                    </div>
                                    
                                    <div class="uk-width-1-1@s uk-margin-top">
                                        <div class="uk-inline">
                                            <span class="uk-form-icon" uk-icon="icon: mail"></span>
                                            <input class="uk-input uk-form-width-large" type="text" 
                                                   placeholder="email"  id="emailStudent" 
                                                   name="emailStudent" required="">
                                        </div>
                                    </div>
                                    <div class="uk-width-1-1@s uk-margin-top">
                                         <div class="uk-inline">
                                            <span class="uk-form-icon" uk-icon="icon: lock"></span>
                                            <input class="uk-input uk-form-width-large" 
                                                   type="password" id="password"  
                                                   placeholder="password" required="">    
                                        </div>
                                    </div>
                                    <div class="uk-width-1-1@s uk-margin-top">
                                         <div class="uk-inline">
                                            <span class="uk-form-icon" uk-icon="icon: lock"></span>
                                            <input class="uk-input uk-form-width-large" 
                                                   type="password" placeholder="Confirm password" 
                                                   id="conPassword" required="">
                                        </div>
                                        
                                    </div>
                                   
                                    <div class="uk-width-1-1@s uk-margin-top">
                                        <input class="uk-input uk-form-width-large uk-button 
                                                uk-button-primary " 
                                                type="submit" value="Continue register">
                                    </div>
                                </form>

                            </div>
                            <p class="uk-text-center">
                                Do you have account? 
                                <a href="login.html">Log-in</a>
                            </p>
                             
                        </div>




<div id="mdal-choose-user" class="uk-flex-top" uk-modal >
    <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical main-card-choose-user">

        <button class="uk-modal-close-default btnCloseToChoose" type="button" uk-close></button>
        <h2 class="uk-text-center">Choose a kind of user</h2>
        <div class="uk-grid-column-small uk-grid-row-large uk-child-width-1-2@s uk-text-center" uk-grid>
            <div>
                <div class="uk-card uk-card-body card-select-user" id="asStudentCard">
                    <figure>
                        <img src="assets/image/student-icon.png">
                        <figcaption >
                            As Student
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div>
                <div class="uk-card uk-card-body card-select-user" id="asCompanyCard">
                    <figure>
                        <img src="assets/image/company-icon.png">
                        <figcaption>
                            As Company
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>

    </div>
</div>

<div id="mdal-dataComplete" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog" id="form">

        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-middle" uk-grid>
            <div class="uk-background-cover" uk-height-viewport id="img-to-complete"></div>
            <div class="uk-padding-small " id="formulary">
                <button class="uk-modal-close-full uk-close-large" type="button" uk-close style="background-color: transparent;"></button>
                <!-- 11111111 -->
                <h1 class="uk-text-center uk-align-center" id="titleSecondPartForm">
                    Choose a type of user
                </h1>
                <h6 class="uk-text-primary uk-text-center@l uk-text-uppercase uk-text-danger uk-text-bold" id="messageTerms">
                    Please accept terms and conditions !
                </h6>
                <form id="selectTypeForm">
                    <div class="uk-margin uk-grid-large uk-child-width-auto uk-grid">
                        <label class="uk-margin">Sign-up as...?</label>

                        <label>
                            <input class="uk-radio enterpriseStudent" 
                                   type="radio" 
                                   name="enterpriseStudent" 
                                   value="Student" >
                                Student
                            <input class="uk-radio enterpriseStudent" 
                                   type="radio" 
                                   name="enterpriseStudent" 
                                   value="Company" >
                                Company
                        </label>
                    </div>
                </form>
                    
                <!-- register for students -->
                <div id="formStudent">
                    
                    <form class="uk-grid-small" uk-grid id="formDataStudent">
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="nameStudent">Name(s)</label>
                            <input class="uk-input" type="text" id="nameStudent"
                                   name="nameStudent" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="lastNameStudent">Last Name</label>
                            <input class="uk-input" type="text" id="lastNameStudent" 
                                   name="lastNameStudent" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="universityName">University Name</label>
                            <input class="uk-input" type="text" id="universityName" 
                                   name="universityName" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="federalEntity">Federal Entity</label>
                            <input class="uk-input" type="text" id="federalEntity" 
                                   name="federalEntity" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="country">Country</label>
                            <input class="uk-input" type="text" id="country" 
                                   name="country" required="">
                        </div>
                        <div class="uk-width-1-2@s">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                   for="academicArea">Academic Area</label>
                                <select class="uk-select" id="academicArea" name="academicArea"
                                        required="">
                                    <option value="" selected="" disabled="">Select Academic Area</option>
                                    <option value="Computer Engineering">
                                        Computer Engineering
                                    </option>
                                    <option value="Nurse">
                                        Nurse
                                    </option>
                                    <option value="Doctor">Doctor</option>
                                    <option value="Lawyer">Lawyer</option>
                                </select>
                        </div>
                        <div class="uk-width-1-2@s">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                   for="status_student">Status of the student</label>
                                <select class="uk-select" id="status_student" 
                                        name="status_student" required="">
                                    <option value="" selected="" disabled="">Select status</option>
                                    <option value="Graduate">
                                        graduate
                                    </option>
                                    <option value="Active">
                                        Active
                                    </option>
                                    <option value="Truncate">Truncate</option>
                                </select>
                        </div>
                        <div class="uk-width-1-1@s uk-margin-top">
                            <input class="uk-input uk-form-width-small uk-button" 
                                    type="submit" value="Signup" id="btnSendDtaStudent">
                        </div>
                        <p class="uk-text-center messageSignupSuccess">
                            Is imposible create an account, verify your data or change your email.
                            The reason is because  there is already an
                            <label class="specificError"></label>
                        </p>
                        <div class="uk-width-1-1@s uk-margin-top">
                            <label>
                                <input class="uk-checkbox" type="checkbox" name="termsCodition"
                                       id="checkTerms"  value="true" required="">
                                <a href="termsconditions-myprojectuniversity.html">
                                    I accept terms and conditions
                                </a>
                            </label>
                        </div>
                    </form>
                </div>
                
                <!-- register for companies -->
                <div id="formCompany">
                    <form class="uk-grid-small" uk-grid id="formDataCompany">
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="NameEmploye">Name Employe</label>
                            <input class="uk-input" type="text" id="NameEmploye"
                                   name="NameEmploye" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="LastNameEmploye">Last Name Employe</label>
                            <input class="uk-input" type="text" id="LastNameEmploye" 
                                   name="LastNameEmploye" required="" >
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="NameCompany">Name Company</label>
                            <input class="uk-input" type="text" id="NameCompany" 
                                   name="NameCompany" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="entityFDCompany">federative entity of the company</label>
                            <input class="uk-input" type="text" id="entityFDCompany" 
                                   name="entityFDCompany" required="" >
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="emailCompany">Email Company</label>
                            <input class="uk-input" type="text" id="emailCompany" 
                                   name="emailCompany" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="FederalEntity">Federal Entity</label>
                            <input class="uk-input" type="text" id="FederalEntity" 
                                   name="FederalEntity" required="">
                        </div>
                        <div class="uk-width-1-1@s ">
                            <label class="uk-form-label uk-text-left uk-margin" 
                                    for="turnOfCompany">Turn Of Company</label>
                            <input class="uk-input" type="text" id="turnOfCompany" 
                                   name="turnOfCompany" required="">
                        </div>
                        
                        <div class="uk-width-1-2@s">
                            <label class="uk-form-label uk-text-left uk-margin" for="kindOfCompany">
                                Kind of Company
                            </label>
                                <select class="uk-select" id="kindOfCompany" name="kindOfCompany" required="">
                                    <option value="" selected="" disabled="">
                                        Company
                                    </option>
                                    <option value="Small">
                                        Small
                                    </option>
                                    <option value="Medium">
                                        Medium
                                    </option>
                                    <option value="Big">
                                        Big
                                    </option>
                                </select>
                        </div>
                        <div class="uk-width-1-1@s uk-margin-top">
                            <input class="uk-input uk-form-width-small uk-button 
                                    uk-button-primary " 
                                    type="submit" value="Signup">
                        </div>
                        <p class="uk-text-center messageSignupSuccess"></p>
                        <div class="uk-width-1-1@s uk-margin-top">
                            <label>
                                <input class="uk-checkbox" type="checkbox" 
                                       name="termsCoditionCompany" id="checkTermsCompany"  
                                       value="true" required="">
                                <a href="termsconditions-myprojectuniversity.html">
                                    I accept terms and conditions
                                </a>
                            </label>
                        </div>
                    </form>
                </div>



            </div>
        </div>
    </div>
</div>
                        
                    </ul>    
                </div>

            </div>
        </div> 
        <!-- ======================== -->
    </div>	
</section>


<footer class="uk-background-secondary" uk-parallax="bgy: -150; bgx: 420;">
        <h2 class="uk-text-center uk-padding-small uk-light">
            My University Project<small><sub>&reg;</sub></small>
        </h2>
        <div class="uk-container ">
            <div class="uk-child-width-1-3@s uk-child-width-1-3@m uk-text-center container-footer" uk-grid>

                <div class="item-content-box-footer">

                    <div class="uk-padding uk-light">
                        <h3>M.U.P</h3>
                        <ul class="uk-list ">
                            <li>
                                <a href="#!">
                                <span uk-icon="icon: users; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    About us
                                </a>
                            </li>
                             <li>
                                <a href="#!">
                                <span uk-icon="icon: receiver; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    Contact
                                </a>
                            </li>
                             <li>
                                <a href="#!">
                                <span uk-icon="icon: location; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    Ubication
                                </a>
                            </li>
                        </ul>

                    </div>

                </div>
                <div class="item-content-box-footer">
                    <div class=" uk-padding uk-light">
                        <h3>Social Media</h3>
                        <ul class="uk-list ">
                            <li>
                                <a href="#!">
                                    <span uk-icon="icon: facebook; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    Facebook
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <span uk-icon="icon: twitter; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    twitter
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <span uk-icon="icon: instagram; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    instagram
                                </a>  
                            </li>
                            


                        </ul>

                    </div>
                </div>
                <div class="item-content-box-footer">
                    <div class=" uk-padding uk-light">
                        <h3>Options</h3>
                        <ul class="uk-list">
                            <li>
                               <a href="index.html">
                                    <span uk-icon="icon: home; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    Home 
                                </a> 
                            </li>
                            <li>
                                <a href="#!" >
                                    <span uk-icon="icon: sign-in; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    Sign-in
                                </a>
                            </li>
                            <li>
                                <a href="#!">
                                    <span uk-icon="icon: folder; ratio: 1.3;"
                                    class="uk-icon-button uk-text-primary"></span>
                                    Projects
                                </a>     
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </footer>

    <script src="assets/js/scripts/script-reg.js"></script>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
</body>

</html>


<!-- 
	Tema a resolver - Gente que no lee correos

	 Crear una app que automatice la creacion de mensajes y los envie a 
	 whatsapp donde vincule al correo ya se email(gmail, outlook, yahoo, etc)
	 y estos redirigan el mesaje de email a whatsapp y el usuario vea con rapides de los que se trata



    Que te emociona en este punto del programa y que te asusta hasta el momento

 -->