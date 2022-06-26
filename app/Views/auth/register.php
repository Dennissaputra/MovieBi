<?= $this->extend('auth\layout');?>
<?= $this->section('bodycontent');?>
    <div class="main">

        <div class="container">
            <div class="signup-content">
            <?= view('Myth\Auth\Views\_message_block') ?>
            
                <form action="<?= route_to('register') ?>" method="post" id="signup-form" class="signup-form">
                <?= csrf_field() ?>
                    <h2><?=lang('Auth.register')?></h2>
                    <div class="form-group">
                        <input type="text" class="form-input <?php if(session('errors.username')) : ?>is-invalid<?php endif ?>" name="username" id="name" placeholder="<?=lang('Auth.username')?>"/>                      
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-input <?php if(session('errors.email')) : ?>is-invalid<?php endif ?>"  name="email" id="email" placeholder="Email" name="login" placeholder="<?=lang('Auth.email')?>"/>            
                            <small id="emailHelp" class="form-text text-muted"><?=lang('Auth.weNeverShare')?></small>
						</div>
                    <div class="form-group">
                        <input type="password" class="form-input <?php if(session('errors.password')) : ?>is-invalid<?php endif ?>" name="password" id="password" placeholder="<?=lang('Auth.password')?>" />
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </div> 
                    <div class="form-group">
                        <input type="password" class="form-input <?php if(session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" name="pass_confirm" id="password" placeholder="<?=lang('Auth.repeatPassword')?>" />
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </div> 
                    <div class="form-group">
                        <input type="submit" name="submit" id="submit" class="form-submit submit" value="<?=lang('Auth.register')?>"/>
                    </div>
                </form>
                <label for="agree-term" class="label-agree-term"><?=lang('Auth.alreadyRegistered')?>  <a href="<?= route_to('login') ?>"><?=lang('Auth.signIn')?></a></label>
            </div>
        </div>

    </div>

    <?= $this->endSection();?>