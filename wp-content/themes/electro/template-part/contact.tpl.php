<?php
global $electro_options;
$phone   = ( ! empty( $electro_options['phone'] ) ) ? $electro_options['phone'] : '';
$email   = ( ! empty( $electro_options['email'] ) ) ? $electro_options['email'] : '';
$address = ( ! empty( $electro_options['address'] ) ) ? $electro_options['address'] : '';
?>
<?php if ( ! empty( $phone ) ): ?>
	<li>
		<a href="phone:<?php echo $phone; ?>"><i class="fa fa-phone"></i><?php echo $phone; ?></a>
	</li>
<?php endif; ?>
<?php if ( ! empty( $email ) ): ?>
	<li>
		<a href="mailto:<?php echo $email; ?>"><i class="fa fa-envelope-o"></i><?php echo $email; ?></a>
	</li>
<?php endif; ?>
<?php if ( ! empty( $address ) ): ?>
	<li>
		<a href="#"><i class="fa fa-map-marker"></i><?php echo $address; ?></a>
	</li>
<?php endif; ?>
