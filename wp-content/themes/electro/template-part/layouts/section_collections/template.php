<?php
$collections = get_sub_field( 'collections' );
?>

<!-- SECTION COLLECTIONS-->
<?php if ( !empty( $collections ) ): ?>
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
				<?php foreach ( $collections as $collection ) : ?>
					<?php
					list( $img_url ) = wp_get_attachment_image_src( $collection['image']['ID'] , 'medium' , true );
					$img_srcset = wp_get_attachment_image_srcset( $collection['image']['ID'] , IMAGE_SIZE_PRODUCT );
					$img_title  = $collection['image']['title'];
					$img_alt    = ( !empty( $collection['image']['alt'] ) ) ? $collection['image']['alt'] : $collection['image']['title'];
					?>
                    <!-- shop -->
                    <div class="col-md-4 col-xs-6">
                        <div class="shop">
                            <div class="shop-img">
                                <img src="<?php echo $img_url; ?>"
                                     srcset="<?php echo $img_srcset; ?>"
                                     alt="<?php echo $img_alt; ?>"
                                     title="<?php echo $img_title; ?>"
                                >
                            </div>
                            <div class="shop-body">
                                <h3><?php echo $collection['titre']; ?></h3>
								<?php if ( !empty( $collection['lien'] ) ): ?>
                                    <a href="<?php echo $collection['lien']; ?>" class="cta-btn" target="<?php echo
									$collection['target']; ?>">
										<?php echo ( !empty( $collection['title'] ) ) ? $collection['title'] : __( 'Shop now ' ,
											PRIMARY_LANG ); ?>
                                        <i class="fa fa-arrow-circle-right"></i>
                                    </a>
								<?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <!-- /shop -->
				<?php endforeach; ?>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
<?php endif; ?>
<!-- /SECTION COLLECTIONS-->


