<!doctype html>
<html lang="en">
  <head>
	<title>Login</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
  <section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="https://mtsn1nganjuk.sch.id/wp-content/uploads/2022/07/Pengertian-Belajar-Ciri-ciri-Belajar-dan-Prinsip-Belajar-626x393-1.jpg"
                    style="width: 185px;" alt="logo">
                  <h4 class="mt-1 mb-5 pb-1">Admin Bimbel Rangking</h4>
                </div>

				<form action="<?= url_to('login') ?>" method="post">
                <?= csrf_field() ?>
    
    <?php if ($config->validFields === ['email']): ?>
                <div class="form-group">
                  <label for="login"><?=lang('Auth.email')?></label>
                  <input type="email" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>"
                       name="login" placeholder="<?=lang('Auth.email')?>">
                  <div class="invalid-feedback">
                    <?= session('errors.login') ?>
                  </div>
                </div>
    <?php else: ?>
                <div class="form-group">
                  <label for="login"><?=lang('Auth.emailOrUsername')?></label>
                  <input type="text" class="form-control <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>"
                       name="login" placeholder="<?=lang('Auth.emailOrUsername')?>">
                  <div class="invalid-feedback">
                    <?= session('errors.login') ?>
                  </div>
                </div>
    <?php endif; ?>
    
                <div class="form-group">
                  <label for="password"><?=lang('Auth.password')?></label>
                  <input type="password" name="password" class="form-control  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?=lang('Auth.password')?>">
                  <div class="invalid-feedback">
                    <?= session('errors.password') ?>
                  </div>
                </div>
    
    <?php if ($config->allowRemembering): ?>
                <div class="form-check">
                  <label class="form-check-label">
                    <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
                    <?=lang('Auth.rememberMe')?>
                  </label>
                </div>
    <?php endif; ?>
    
                <br>
    
                <button type="submit" class="btn btn-primary btn-block"><?=lang('Auth.loginAction')?></button>
              </form>
<br>
<?php if ($config->allowRegistration) : ?>
					<p><a href="<?= url_to('register') ?>"><?=lang('Auth.needAnAccount')?></a></p>
<?php endif; ?>
<?php if ($config->activeResetter): ?>
					<p><a href="<?= url_to('forgot') ?>"><?=lang('Auth.forgotYourPassword')?></a></p>
<?php endif; ?>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>