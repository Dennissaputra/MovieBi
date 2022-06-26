<?= $this->extend('template');?>
<?= $this->section('bodycontent');?>

<div class="movie-items">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-12">
				<div class="title-hd">
					<h2>Update Film</h2>
				</div>
                <?=csrf_field()?>

				<form action="<?=site_url('updatedata/'.$film['id']);?>" method="post" enctype="multipart/form-data" >
                    <div class="row">
                        <div class="column1">
                            <div class="group">
                                <label>Judul Film</label>
                                <input type="text" name="judul" class="form-control" placeholder="Nama Film" value="<?=$film['judul']?>" autofocus required>
                            </div>

                            <div class="group">
                                <label>Rating</label>
                                <input type="Number" name="rating" class="form-control" placeholder="Rating" value="<?=$film['rating']?>" autofocus required>
                            </div>

                            <div class="group">
                                <label>Deskripsi</label>
                                <input type="text" class="form-control" name="deskripsi" placeholder="deksripsi" value="<?=$film['deskripsi']?>" autofocus required></input>
                            </div>

                            <div class="group">
                                <label>Link Trailer</label>
                                <input type="text" name="trailer" class="form-control" placeholder="link trailer" value="<?=$film['trailer']?>" autofocus required>
                            </div>

                            <div class="group">
                                <label>Jadual Tayang</label>
                                <input type="date" name="jadwal" class="form-control" placeholder="jadwal tayang" value="<?=$film['jadwal']?>" autofocus required>
                            </div>

                            <div class="group">
                                <label>Status</label>
                                <<select class="form-control" name="status" value="<?=$film['jadwal']?>" required>
                                    <option value="Coming Soon">Coming Soon</option>
                                    <option value="Inteater">Inteater</option>
                                </select>
                            </div>
                        </div>
                        <div class="column2">
                            <div class="group">
                                <label>File Gambar</label>
                                <div class="form-group">
                                    <img  src="<?=base_url("assets/images");?>/<?=$film['cover']?>" style="width:200px;">
                                </div>
                                <input type="file" name="coverbaru" accept=".jpg,.png" class="form-control-file" placeholder="Gambar Produk">
                                <i style="color:red">*Gambar harus file .jpg / .png <br>**Abaikan jika tidak ingin mengubah gambar produk</i>
                                <input type="hidden" name="coverlama"  value="<?=$film['cover']?>" class="form-control" value hidden required>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="col">
                        <button class="form-control btn btn-success" type="submit">Tambah</button>
                     </div>
                </form>
                <div class="col">
                        <button class="form-control btn btn-danger" data-dismiss="modal"><a href="<?=site_url('tambahfilm')?>">batal</a></button>
                </div>
			</div>
		</div>
	</div>
</div>

<?= $this->endSection();?>