<?= $this->extend('template');?>
<?= $this->section('bodycontent');?>

<div class="slider movie-items">
	<div class="container">
		<div class="row">
			<div class="social-link">
				<p>Follow us: </p>
				<a href="#"><i class="ion-social-facebook"></i></a>
				<a href="#"><i class="ion-social-twitter"></i></a>
				<a href="#"><i class="ion-social-googleplus"></i></a>
				<a href="#"><i class="ion-social-youtube"></i></a>
			</div>
	    	<div  class="slick-multiItemSlider">
			<?php foreach ($filmall as $mv):?>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="assets/images/<?=$mv['cover']?>" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<!-- <div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span>
	    				</div> -->
	    				<h6><a href="#"><?=$mv['judul']?></a></h6>
	    				<p><i class="ion-android-star"></i><span><?=$mv['rating']?></span> /10</p>
	    			</div>
	    		</div>
			<?php endforeach?>	
				<!-- <div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="assets/images/film/morbius.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="yell"><a href="#">action</a></span>
	    				</div>
	    				<h6><a href="#">The revenant</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="assets/images/film/spiderman.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="green"><a href="#">comedy</a></span>
	    				</div>
	    				<h6><a href="#">Die hard</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="assets/images/film/strange.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span> <span class="orange"><a href="#">advanture</a></span>
	    				</div>
	    				<h6><a href="#">The walk</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="assets/images/film/venom.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span>
	    				</div>
	    				<h6><a href="#">Interstellar</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
				<div class="movie-item">
	    			<div class="mv-img">
	    				<a href="#"><img src="assets/images/film/thedoll.jpg" alt="" width="285" height="437"></a>
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="yell"><a href="#">action</a></span>
	    				</div>
	    				<h6><a href="#">The revenant</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<img src="assets/images/film/kkn.jpg" alt="" width="285" height="437">
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="green"><a href="#">comedy</a></span>
	    				</div>
	    				<h6><a href="#">Die hard</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<img src="assets/images/uploads/slider4.jpg" alt="" width="285" height="437">
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="blue"><a href="#">Sci-fi</a></span> <span class="orange"><a href="#">advanture</a></span>
	    				</div>
	    				<h6><a href="#">The walk</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div>
	    		<div class="movie-item">
	    			<div class="mv-img">
	    				<img src="assets/images/uploads/slider3.jpg" alt="" width="285" height="437">
	    			</div>
	    			<div class="title-in">
	    				<div class="cate">
	    					<span class="green"><a href="#">comedy</a></span>
	    				</div>
	    				<h6><a href="#">Die hard</a></h6>
	    				<p><i class="ion-android-star"></i><span>7.4</span> /10</p>
	    			</div>
	    		</div> -->
	    	</div>
	    </div>
	</div>
</div>

<div class="movie-items">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-12">
				<div class="title-hd">
					<h2>in theater</h2>
				</div>
				<div class="tabs">
				    <div class="tab-content">
				        <div id="tab1" class="tab active">
				            <div class="row">
				            	<div class="slick-multiItem">
								<?php foreach ($filmteater as $row):?>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="assets/images/<?=$row['cover']?>" alt="" width="185" height="284">
					            			</div> 
					            			<div class="hvr-inner">
					            				<a  href="<?= site_url('moviesingle/');?><?=$row['id']?>"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#"><?=$row['judul']?></a></h6>
					            				<p><i class="ion-android-star"></i><span><?=$row['rating']?></span>/10</p>
					            			</div>
					            		</div>
				            		</div>
								<?php endforeach?>
				    </div>
				</div>'
				<div class="title-hd">
					<h2>Coming Soon</h2>
				</div>
				<div class="tabs">
				    <div class="tab-content">
				        <div class="tab active">
				           <div class="row">
				            	<div class="slick-multiItem">
								<?php foreach ($filmcoming as $row):?>
				            		<div class="slide-it">
				            			<div class="movie-item">
					            			<div class="mv-img">
					            				<img src="assets/images/<?=$row['cover']?>" alt="" width="185" height="284">
					            			</div>
					            			<div class="hvr-inner">
					            				<a  href="<?= site_url('moviesingle/');?><?=$row['id']?>"> Read more <i class="ion-android-arrow-dropright"></i> </a>
					            			</div>
					            			<div class="title-in">
					            				<h6><a href="#"><?=$row['judul']?></a></h6>
					            				<p><i class="ion-android-star"></i><span><?=$row['rating']?></span> /10</p>
					            			</div>
					            		</div>
				            		</div>
								<?php endforeach?>	
				            	</div>
				            </div>
				        </div>
				     </div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="trailers">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-12">
				<div class="title-hd">
					<h2>Trailer</h2>
				</div>
				<div class="videos">
				 	<div class="slider-for-2 video-ft">
					 <?php foreach ($filmall as $row):?>
				 		<div>
					    	<iframe class="item-video" src="#" data-src="<?=$row['trailer']?>"></iframe>
					    </div>
					 <?php endforeach?>	
					</div>
					<div class="slider-nav-2 thumb-ft">
					<?php foreach ($filmall as $row):?>
						<div class="item">
							<div class="trailer-img">
								<img src="assets/images/<?=$row['cover']?>"  >
							</div>
							<div class="trailer-infor">
	                        	<h4 class="desc"><?=$row['judul']?></h4>
	                        	<p>2:30</p>
	                        </div>
						</div>
					<?php endforeach?>	
					</div>
				</div>   
			</div>
		</div>
	</div>
</div>

<?= $this->endSection();?>