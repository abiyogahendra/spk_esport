<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Login</title>

    <!-- Fontfaces CSS-->
    <link href="{{asset('template/css/font-face.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/font-awesome-4.7/css/font-awesome.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/font-awesome-5/css/fontawesome-all.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/mdi-font/css/material-design-iconic-font.min.css')}}" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="{{asset('template/vendor/bootstrap-4.1/bootstrap.min.css')}}" rel="stylesheet" media="all">

    <!-- template/vendor CSS-->
    <link href="{{asset('template/vendor/animsition/animsition.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/wow/animate.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/css-hamburgers/hamburgers.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/slick/slick.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/select2/select2.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('template/vendor/perfect-scrollbar/perfect-scrollbar.css')}}" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="{{asset('template/css/theme.css')}}" rel="stylesheet" media="all">

    <!-- Custom CSS -->
    <link href="{{asset('custom/css/yobri_responsive.css')}}" rel="stylesheet" media="all">

    <!-- swal 2 -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body class="animsition">
    <input type="hidden" style="display=hidden" name="token_" value="{{ csrf_token() }}">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="{{asset('template/images/icon/logo.png')}}" alt="CoolAdmin">
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="" method="post">
                                <div class="form-group inputan">
                                    <label>Email Address</label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Email" required>
                                    <div class="alert alert-danger hide-dulu " role="alert"> </div>
                                </div>
                                <div class="form-group inputan">
                                    <label>Password</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password" required>
                                    <div class="alert alert-danger hide-dulu " role="alert"> </div>
                                </div>
                            </form>
                            <button class="au-btn au-btn--block au-btn--green m-b-20" onclick="LoginProcess()">sign in</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="{{asset('template/vendor/jquery-3.2.1.min.js')}}"></script>
    <!-- Bootstrap js')}}-->
    <script src="{{asset('template/vendor/bootstrap-4.1/popper.min.js')}}"></script>
    <script src="{{asset('template/vendor/bootstrap-4.1/bootstrap.min.js')}}"></script>
  
    <script src="{{asset('template/vendor/slick/slick.min.js')}}">
    </script>
    <script src="{{asset('template/vendor/wow/wow.min.js')}}"></script>
    <script src="{{asset('template/vendor/animsition/animsition.min.js')}}"></script>
    <script src="{{asset('template/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js')}}">
    </script>
    <script src="{{asset('template/vendor/counter-up/jquery.waypoints.min.js')}}"></script>
    <script src="{{asset('template/vendor/counter-up/jquery.counterup.min.js')}}">
    </script>
    <script src="{{asset('template/vendor/circle-progress/circle-progress.min.js')}}"></script>
    <script src="{{asset('template/vendor/perfect-scrollbar/perfect-scrollbar.js')}}"></script>
    <script src="{{asset('template/vendor/select2/select2.min.js')}}">
    </script>

    <!-- Main js')}}-->
    <script src="{{asset('template/js/main.js')}}"></script>

    <script src="{{asset('custom/js/login/token.js')}}"></script>
    <script src="{{asset('custom/js/login/login-process.js')}}"></script>



</body>

</html>
<!-- end document-->