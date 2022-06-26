<?= $this->extend('template');?>
<?= $this->section('bodycontent');?>


<div class="movie-items">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-12">
				<div class="title-hd">
					<h2>in theater</h2>
                    <a href="#" data-toggle="modal" data-target="#addmodal" class="addfilm"> Tambah</a>
				</div>
                <?=csrf_field()?>

				<div class="tabfilm" >
                    <table borde="1" id="table">
                        <tr>
                            <th width='40px'>no</th>
                            <th>Cover</th>
                            <th>Judul</th>
                            <th width='70px'>Rating</th>
                            <th>Deskripsi</th>
                            <th>Trailer</th>
                            <th>Jadwal</th>
                            <th>Status</th>
                            <th>aksi</th>
                        </tr>
                        <?php foreach ($film as $keys =>$value): ?>
                            <tr>
                                <td><?=$keys+1;?></td>
                                <td><img src="assets/images/<?=$value['cover']?>"></td>
                                <td><?=$value['judul']?></td>
                                <td><?=$value['rating']?></td>
                                <td><a href="<?=site_url('deskripsi/'.$value['id'])?>" class="deskripsiID">isi deskirpsi</a></td>
                                <td><?=$value['trailer']?></td>
                                <td><?=$value['jadwal']?></td>
                                <td><?=$value['status']?></td>
                                <td>
                                    <form action="<?=site_url('hapusdata/'.$value['id'])?>" method="post">
                                        <button class='btn-delete'>delete</button>
                                    </form>
                                    <form action="<?=site_url('updateview/'.$value['id'])?>" method="post">
                                                <button class='btn-update'>update</button>
                                    </form>
                                </td>
                            </tr>
                        <?php endforeach?> 
                    </table>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- modal tambah data -->
<div class="modal fade" id="addmodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Data</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Cross Site Request Forgery enctype="multipart/form-data" -->
                <form action="<?=site_url('Tambahdata');?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Judul Film</label>
                        <input type="text" name="judul" class="form-control" placeholder="Nama Film" autofocus required>
                    </div>

                    <div class="form-group">
                        <label>Rating</label>
                        <input type="Number" step="any" name="rating" class="form-control" placeholder="Rating" autofocus required>
                    </div>

                    <div class="form-group">
                        <label>Deskripsi</label>
                        <textarea class="form-control" name="deskripsi"></textarea>
                    </div>

                    <div class="form-group">
                        <label>Link Trailer</label>
                        <input type="text" name="trailer" class="form-control" placeholder="link trailer" autofocus required>
                    </div>

                    <div class="form-group">
                        <label>Jadual Tayang</label>
                        <input type="date" name="jadwal" class="form-control" placeholder="jadwal tayang" autofocus required>
                    </div>

                    <div class="form-group">
                        <label>Status</label>
                        <<select class="form-control" name="status" required>
                            <option value="Coming Soon">Coming Soon</option>
                            <option value="Inteater">Inteater</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>File Cover</label>
                        <input type="file" name="cover" accept=".jpg,.jpeg,.png" class="form-control-file" placeholder="Gambar film">
                        <i style="color:red">*Gambar harus file .jpg / .png <br>**Abaikan jika tidak ada gambar produk</i>
                        <!-- <input type="text" name="product_img" class="form-control" placeholder="Nama File" required> -->
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col">
                            <button class="form-control btn btn-danger" data-dismiss="modal">Batal</button>
                        </div>
                        <div class="col">
                            <button class="form-control btn btn-success" type="submit">Tambah</button>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection();?>