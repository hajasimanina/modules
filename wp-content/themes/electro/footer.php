<?php
global $electro_options;
$logo        = ( ! empty( $electro_options['logo'] ) ) ? $electro_options['logo'] : get_template_directory_uri() . '/assets/images/logo.png';
$description = ( ! empty( $electro_options['description'] ) ) ? $electro_options['description'] : '';
$copyright   = ( ! empty( $electro_options['copyright'] ) ) ? $electro_options['copyright'] : '';
wp_footer();
?>
<!-- FOOTER -->
<footer id="footer">
    <!-- top footer -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title"><?php echo __( 'About Us' , PRIMARY_LANG ); ?></h3>
                        <p><?php echo $description; ?></p>
                        <ul class="footer-links">
							<?php include get_template_directory() . '/template-part/contact.tpl.php'; ?>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title"><?php echo __( 'Categories' , PRIMARY_LANG ); ?></h3>
						<?php
						wp_nav_menu(
							array(
								'menu'           => 'nav_menu' ,
								'container'      => '' ,
								'menu_class'     => 'footer-links' ,
								'theme_location' => MENU_CATEGORY ,
							)
						);
						?>
                    </div>
                </div>

                <div class="clearfix visible-xs"></div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title"><?php echo __( 'Informations' , PRIMARY_LANG ); ?></h3>
						<?php
						wp_nav_menu(
							array(
								'menu'           => 'nav_menu' ,
								'container'      => '' ,
								'menu_class'     => 'footer-links' ,
								'theme_location' => MENU_INFORMATION ,
							)
						);
						?>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title"><?php echo __( 'Services' , PRIMARY_LANG ); ?></h3>
						<?php
						wp_nav_menu(
							array(
								'menu'           => 'nav_menu' ,
								'container'      => '' ,
								'menu_class'     => 'footer-links' ,
								'theme_location' => MENU_SERVICE ,
							)
						);
						?>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /top footer -->

    <!-- bottom footer -->
    <div id="bottom-footer" class="section">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                    <span class="copyright">
							Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            <?php echo $copyright; ?>
                        <i class="fa fa-heart-o" aria-hidden="true"></i> by
                        <a href="mailto:haja.ramananjarasoa@gmail.com" target="_blank">Hajasimanina R</a>
                    </span>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bottom footer -->
</footer>
<!-- /FOOTER -->


</body>
</html>