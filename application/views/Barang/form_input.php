<link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>assets/app/css/style.css">
<?php if ($this->session->flashdata('message')) { ?>
<div class="col-lg-12 alerts">
	<div class="alert alert-dismissible alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4> <i class="icon fa fa-check"></i> Suscess</h4>
    	<p><?php echo $this->session->flashdata('message'); ?></p>
    </div>
</div>
<?php } else { } ?>
<section class="content">
	<div class="row">
		<div class='col-xs-12'>
			<div class='box box-primary'>
				<div class='box-header  with-border'>
					<h3 class='box-title'>Tambah Data Barang</h3>
				</div>
				<div class="box-body">
					<?php echo form_open_multipart('Barang/post', array('role' => "form", 'id' => "myForm", 'data-toggle' => "validator")); ?>
					<div class="form-group">
						<label for="barcode" class="control-label">Barcode</label>
						<div class="input-group">
							<input type="text" class="form-control" name="barcode" id="barcode" data-error="Barcode harus diisi" placeholder="barcode" value="" required />
							<span class="input-group-addon">
								<span class="fa fa-cubes"></span>
							</span>
						</div>
						<div class="help-block with-errors"></div>
					</div>
					<div class="form-group">
						<label for="nama_barang" class="control-label">Nama Barang</label>
						<div class="input-group">
							<input type="text" class="form-control" name="nama_barang" id="nama_barang" data-error="Nama Barang harus diisi" placeholder="nama barang" value="" required />
							<span class="input-group-addon">
								<span class="fa fa-cube"></span>
							</span>
						</div>
						<div class="help-block with-errors"></div>
					</div>
					<div class="form-group">
						<label for="kategori" class="control-label">Kategori</label>
						<div class="input-group">
							<select class="form-control" name="kategori">
								<?php
								foreach ($kategori as $k) {
									echo "<option value=' $k->id_kategori'>$k->nama_kategori</option>";
								}
								?>
							</select>
							<span class="input-group-addon">
								<span class="fa fa-list"></span>
							</span>
						</div>
						<div class="help-block with-errors"></div>
					</div>
					<div class="form-group">
						<label for="ukuran" class="control-label">Ukuran</label>
						<div class="input-group">
							<select class="form-control" name="ukuran">
								<?php
								foreach ($ukuran as $u) {
									echo "<option value=' $u->id_ukuran'>$u->nama_ukuran</option>";
								}
								?>
							</select>
							<span class="input-group-addon">
								<span class="fa fa-expand"></span>
							</span>
						</div>
					</div>
					<div class="form-group">
						<label for="harga_beli" class="control-label">Harga Beli</label>
						<div class="input-group">
							<input type="text" name="harga_beli" id="harga_beli" data-error="harga beli harus di isi" class="form-control" placeholder="Harga Beli Barang" required>
							<span class="input-group-addon">
								<span class="fas fa-money">
								</span>
							</span>
						</div>
						<div class="help-block with-errors"></div>
					</div>
					<div class="form-group">
						<label for="harga" class="control-label">Harga Jual</label>
						<div class="input-group">
							<input type="text" name="harga" id="harga" data-error="harga jual harus di isi" class="form-control" placeholder="Harga Jual Barang" required>
							<span class="input-group-addon">
								<span class="fas fa-money">
								</span>
							</span>
						</div>
						<div class="help-block with-errors"></div>
					</div>
					<div class="form-group">
						<label for="foto" class="control-label">Foto</label>
						<div class="input-group">
							<input type="file" name="foto" class="form-control">
							<span class="input-group-addon">
								<span class="fa fa-photo">
								</span>
							</span>
						</div>
						<div class="help-block with-errors"></div>
					</div>
					<div class="box-footer">
						<button type="submit" name="submit" class="btn btn-primary ">Simpan</button>
						<a href="<?php echo base_url() ?>barang" class="btn btn-default ">Cancel</a>
					</div>
					</form>
				</div><!-- /.box-body -->
			</div><!-- /.box -->
		</div>
	</div>
</section>