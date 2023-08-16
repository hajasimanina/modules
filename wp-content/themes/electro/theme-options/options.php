<?php
/**
 * Options du theme
 *
 * ajouter/modifier ici les options du themes
 */

global $electro_options_settings;

$electro_options_settings = array(
	'Configuration générale' => array(
		'logo'      => array(
			'label'       => __( 'Logo du site' , PRIMARY_LANG ) ,
			'type'        => 'image' ,
			'description' => '' ,
			'icon'        => 'dashicons-format-image' ,
			'required'    => true ,
		) ,
		'favicon'   => array(
			'label'       => __( 'Favicon' , PRIMARY_LANG ) ,
			'type'        => 'image' ,
			'description' => '' ,
			'icon'        => 'dashicons-format-image' ,
			'required'    => true ,
		) ,
		'copyright' => array(
			'label'       => __( 'Copyright' , PRIMARY_LANG ) ,
			'type'        => 'text' ,
			'description' => '' ,
			'icon'        => 'dashicons-admin-site' ,
			'required'    => true ,
		)
	) ,
	'Contacts'               => array(
		'phone'   => array(
			'label'       => __( 'Téléphone' , PRIMARY_LANG ) ,
			'type'        => 'text' ,
			'description' => '' ,
			'icon'        => 'dashicons-phone' ,
			'required'    => true ,
			'placeholder'    => '+261 XX XXX XX' ,
		) ,
		'email'   => array(
			'label'       => __( 'E-mail' , PRIMARY_LANG ) ,
			'type'        => 'email' ,
			'description' => '' ,
			'icon'        => 'dashicons-email-alt' ,
			'required'    => true ,
		) ,
		'address' => array(
			'label'       => __( 'Adresse' , PRIMARY_LANG ) ,
			'type'        => 'text' ,
			'description' => '' ,
			'icon'        => 'dashicons-location' ,
			'required'    => true ,
		) ,
		'description' => array(
			'label'       => __( 'Description' , PRIMARY_LANG ) ,
			'type'        => 'textarea' ,
			'description' => __( 'Ajouter la description dans le pied du page ici.' , PRIMARY_LANG )  ,
			'icon'        => 'dashicons-media-text' ,
			'required'    => true ,
		) ,
	) ,
);