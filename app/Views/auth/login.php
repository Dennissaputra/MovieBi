<?= $this->extend('auth\layout');?>
<?= $this->section('bodycontent');?>
    <div class="main">

        <div class="container">
            <div class="signup-content">
            <?= view('Myth\Auth\Views\_message_block') ?>
            
                <form action="<?= route_to('login') ?>" method="post" id="signup-form" class="signup-form">
                <?= csrf_field() ?>
                    <h2><?=lang('Auth.loginTitle')?></h2>
                    <!-- <div class="form-group">
                        <input type="text" class="form-input" name="name" id="name" placeholder="Your Name"/>                      
                    </div> -->
                    <?php if ($config->validFields === ['email']): ?>
                    <div class="form-group">
                        <input type="email" class="form-input <?php if(session('errors.login')) : ?>is-invalid<?php endif ?>"  name="login" id="email" placeholder="Email" name="login" placeholder="<?=lang('Auth.email')?>"/>            
                            <div class="invalid-feedback">
								<?= session('errors.login') ?>
							</div>  
                    <?php else: ?>
                        <div class="form-group">
                        <input type="email" class="form-input <?php if(session('errors.login')) : ?>is-invalid<?php endif ?>"  name="login" id="email" placeholder="Email" name="login" placeholder="<?=lang('Auth.email')?>"/>
							<div class="invalid-feedback">
								<?= session('errors.login') ?>
							</div>
						</div>
<?php endif; ?>
                    <div class="form-group">
                        <input type="password" class="form-input <?php if(session('errors.password')) : ?>is-invalid<?php endif ?>" name="password" id="password" placeholder="Password" />
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        <div class="invalid-feedback">
								<?= session('errors.password') ?>
							</div>
                    </div> 
                    <?php if ($config->allowRemembering): ?>           
                    <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" <?php if(old('remember')) : ?> checked <?php endif ?>/>
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                    </div>
                    <?php endif; ?>
                    <div class="form-group">
                    <a href="/register" class="submit-link submit">Register</a>
                        <input type="submit" name="submit" id="submit" class="form-submit submit" value="<?=lang('Auth.loginAction')?>"/>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <?= $this->endSection();?>