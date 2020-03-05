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
    <link rel="stylesheet" type="text/css" href="assets/css/styles/styles-login.css">
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
                   <a href="#sign-up" id="toSigup">
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
                            <li>
                                <a href="#!">
                                    <span uk-icon="icon: folder;" class="uk-text-primary"></span> See projects
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
                            <li>
                                <a href="#modal-register" uk-toggle>
                                    <span uk-icon="icon: folder;" class="uk-text-primary"></span> See projects
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





<section class="uk-section" id="section-sigin" uk-parallax="bgy: -350" >
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


                <div class="uk-card-body uk-background-muted form-body">
                    <div class="uk-grid-small uk-flex-middle uk-margin" uk-grid>
                        <div class="uk-width-auto">
                            <!-- <img class="uk-border-circle" id="imageSignin" width="40px" 
                                height="40" 
                                 src="assets/image/idea_job_icon.png" > -->
                        </div>
                            <div class="uk-width-expand">
                            <h3 class="uk-card-title uk-margin-remove-bottom">
                                Sign In
                            </h3>
                            <p class="uk-text-meta uk-margin-remove-top">
                                
                            </p>
                        </div>
                    </div>

                    <div class="uk-container-large">
                         <h6 class="uk-text-primary uk-margin uk-text-center@l  
                            uk-text-uppercase uk-text-danger uk-text-bold" 
                            id="messageForMistakes">
                                    Please chose one kind of user
                        </h6>
                        <form id="formAsStud" >

                            <div class="uk-width-1-1@s uk-margin-top">
                                <div class="uk-inline">
                                    <span class="uk-form-icon" uk-icon="icon: user"></span>
                                    <input class="uk-input uk-form-width-large" 
                                           id="userName" 
                                           type="text" placeholder="UserName/Email" >    
                                </div>
                            </div>
                            <div class="uk-width-1-1@s uk-margin-top">
                                 <div class="uk-inline">
                                    <span class="uk-form-icon" uk-icon="icon: lock"></span>
                                    <input class="uk-input uk-form-width-large" 
                                           type="password" id="passwordLogin"  
                                           placeholder="password" >    
                                </div>
                            </div>
                            <div class="uk-margin uk-grid-small uk-child-width-auto uk-grid">
                                <label class="uk-margin">Loing as...?</label>

                                <label>
                                <input class="uk-radio enterpriseStudent" type="radio" 
                                       name="enterpriseStudent" value="Student" id = "typeStud" >
                                Student
                                <input class="uk-radio enterpriseStudent" type="radio" 
                                       name="enterpriseStudent" value="Company" id = "typeComp">
                                Company
                            </label>
                            </div>

                            <div class="uk-width-1-1@s uk-margin-top">
                                <input class="uk-input uk-form-width-large uk-button 
                                        uk-button-primary" id="btnLogin" 
                                        type="submit" value="Sign-in">
                            </div>
                        </form>
                    </div>
                    <p class="uk-text-center">
                        You dont have account? 
                        <a href="sign-up.html">Sign-up</a>
                    </p>
                </div>

            </div>
        </div> 
        <!-- ======================== -->
    </div>	
</section>

<div id="mdl-for-errorAccess" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <button class="uk-modal-close-outside" type="button" uk-close></button>
        <h2 class="uk-modal-title">Outside</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    </div>
</div>



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

    <script src="assets/js/scripts/script-login.js"></script>
       <script src="assets/js/jquery-3.2.1.min.js"></script>
</body>

</html>