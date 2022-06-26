<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
	<!-- Basic need -->
	<title>Open Pediatrics</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">

	<!-- CSS files -->
	<link rel="stylesheet" href="<?=base_url('assets/css/plugins.css');?>">
	<link rel="stylesheet" href="<?=base_url('assets/css/style.css');?>">

</head>
<body>
<!--preloading-->
<!-- <div id="preloader">
    <img class="logo" src="assets/images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div> -->
<!--end of preloading-->
<!-- BEGIN | Header -->
<header class="ht-header">
	<div class="container">
		<nav class="navbar navbar-default navbar-custom">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header logo">
				    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					    <span class="sr-only">Toggle navigation</span>
					    <div id="nav-icon1">
							<span></span>
							<span></span>
							<span></span>
						</div>
				    </div>
				    <a href="index-2.html"><img class="logo" src="<?=base_url('assets/images/logo.png');?>" alt="" width="200" height="50"></a>
			    </div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav flex-child-menu menu-left">
						<li class="hidden">
							<a href="#page-top"></a>
						</li>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" href="<?= site_url('/');?>">
							Home </a>
						</li>
						<?php if(in_groups('admin')):?>
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" href="<?= site_url('tambahfilm');?>">
							Tambah Film</a>
						</li>
						<?php endif;?>
					</ul>
					<ul class="nav navbar-nav flex-child-menu menu-right">
						<li class="dropdown first">
							<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							pages <i class="fa fa-angle-down" aria-hidden="true"></i>
							</a>
							<ul class="dropdown-menu level1">
								<li><a href="landing.html">Landing</a></li>
								<li><a href="404.html">404 Page</a></li>
								<li class="it-last"><a href="comingsoon.html">Coming soon</a></li>
							</ul>
						</li>                
						<li><a href="#">Help</a></li>
						<?php if(!logged_in()):?>
						<li class="btn signinLink"><a href="<?=site_url('login')?>">Log In</a></li>
						<?php endif; ?>

						<li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<?php if(logged_in()):?>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Halo,<?=user()->username;?></span>
                                <img class="img-profile rounded-circle" src="">
								<?php else:?>
								<span class="mr-2 d-none d-lg-inline text-gray-600 small">halo</span>
                                <img class="img-profile rounded-circle" src="">							
								<?php endif; ?>
								</a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="/logout">Profile</a>
								<?php if(logged_in()):?>
                                <div class="dropdown-divider">
                                <a class="dropdown-item" href="/logout">Logout</a>
								</div>
                            </div>
						<?php endif; ?>
                        </li>
					</ul>
				</div>
	    </nav>
	</div>
</header>
<!-- END | Header -->

<?= $this->renderSection('bodycontent');?>

<!-- footer section-->
<footer class="ht-footer">
	<div class="container">
		<div class="flex-parent-ft">
			<div class="flex-child-ft item1">
				 <a href="#"><img class="logo" src="assets/images/logo.png" alt="" width="200" height="50"></a>
				 <p>Sukabumi<br>
				Jawa Barat- Indoensia</p>
				<p>Call us: <a href="#">0896 0266 9877</a></p>
			</div>
			<div class="flex-child-ft item2">
				<h4>Resources</h4>
				<ul>
					<li><a href="#">About</a></li> 
					<li><a href="#">MovieBi</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Forums</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Help Center</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item3">
				<h4>Legal</h4>
				<ul>
					<li><a href="#">Terms of Use</a></li> 
					<li><a href="#">Privacy Policy</a></li>	
					<li><a href="#">Security</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item4">
				<h4>Account</h4>
				<ul>
					<li><a href="#">My Account</a></li> 
					<li><a href="#">Watchlist</a></li>	
					<li><a href="#">Collections</a></li>
					<li><a href="#">User Guide</a></li>
				</ul>
			</div>
			<div class="flex-child-ft item5">
				<h4>Newsletter</h4>
				<p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
				<form action="#">
					<input type="text" placeholder="Enter your email...">
				</form>
				<a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
			</div>
		</div>
	</div>
	<div class="ft-copyright">
		<div class="ft-left">
			<p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
		</div>
		<div class="backtotop">
			<p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>
		</div>
	</div>
</footer>
<!-- end of footer section-->

<script src="<?=base_url('assets/js/jquery.js');?>"></script>
<script src="<?=base_url('assets/js/plugins.js');?>"></script>
<script src="<?=base_url('assets/js/plugins2.js');?>"></script>
<script src="<?=base_url('assets/js/custom.js');?>"></script>

</body>


</html>
