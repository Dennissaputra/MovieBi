<?= $this->extend('template');?>
<?= $this->section('bodycontent');?>

<div class="movie-items">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-12">
				<div class="title-hd">
					<h2>Deskripsi</h2>
				</div>
				</br>
				</br>

				        <div id="overview" class="tab active">
				            <div class="row">
				            	<div class="col-md-8 col-sm-12 col-xs-12">
				            		<p align='justify'><?=$film['deskripsi']?></p>
									<div class="col">
									<button class="form-control btn btn-danger" data-dismiss="modal"><a href="<?=site_url('tambahfilm')?>">kembali</a></button>
									</div>
					          	</div>
					       </div>
						</div>	
			</div>
		</div>
	</div>
</div>


<?= $this->endSection();?>