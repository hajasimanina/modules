<?php
/**
 * Theme options
 *
 * @package WordPress
 * @subpackage electro
 * @since electro 1.0
 * @author : Pascal RAMANANJARASOA
 */
global $electro_options;
require_once get_template_directory() . '/theme-options/options.php';
$electro_options = get_option( 'electro_theme_options' );

add_action( 'admin_init', 'electro_options_init' );
function electro_options_init(){
 register_setting( 'electro_options', 'electro_theme_options','electro_options_validate');
} 

function electro_options_validate($input)
{
   $allfields_settings = electro_get_all_settings();

   foreach ( $input as $i ){
     if ( isset($allfields_settings[$i]) ){
        switch ( $allfields_settings[$i]['type'] ){
          case 'text':
            $input[$i] = sanitize_text_field( $input[$i] );
            break;
          case 'select':
            break;
          case 'date':
            break;
          case 'url':
            $input[$i] = esc_url_raw( $input[$i] );
            break;
          case 'textarea':
            $input[$i] = sanitize_text_field( $input[$i] );
            break;
          case 'image':
            $input[$i] = electro_image_validation(esc_url_raw( $input[$i]));
            break;
          default:
        }
     }
   }

	  return $input;
}
function electro_image_validation($electro_imge_url){
	$electro_filetype = wp_check_filetype($electro_imge_url);
	$electro_supported_image = array('gif','jpg','jpeg','png','ico');
	if (in_array($electro_filetype['ext'], $electro_supported_image)) {
		return $electro_imge_url;
	} else {
	return '';
	}
}
function electro_get_all_settings(){
  global $electro_options_settings;
  $allfields = array();
  foreach ( $electro_options_settings as $tab) {
      $allfields = array_merge( $allfields, $tab );
  }
  return $allfields;
}

add_action( 'admin_enqueue_scripts', 'electro_framework_load_scripts' );
function electro_framework_load_scripts(){
	wp_enqueue_media();
	wp_enqueue_style( 'electro_framework', get_template_directory_uri(). '/theme-options/css/theme-options.css' ,false, '1.0.0');
	// Enqueue custom option panel JS
	wp_enqueue_script( 'options-custom', get_template_directory_uri(). '/theme-options/js/theme-options.js', array( 'jquery' ) );
	wp_enqueue_script( 'media-uploader', get_template_directory_uri(). '/theme-options/js/media-uploader.js', array( 'jquery') );		
}

add_action( 'admin_menu', 'electro_options_add_page' );
function electro_options_add_page() {
	add_theme_page( 'electro Options', 'Theme Options', 'edit_theme_options', 'electro_framework', 'electro_framework_page');
}

function electro_framework_page(){
  include 'admin-page.php';
}

//compatibilité WPML, rendre les options translatables
if ( function_exists('icl_register_string')){
  add_action('wp_ajax_icl_tl_rescan', 'electro_options_wpml_translate');
  function electro_options_wpml_translate(){
    $theme_options = get_option( 'electro_theme_options' );
    foreach ( $theme_options as $key => $option ){
      if ( intval($option)>0 ) continue;
      if ( !is_string($option) ) continue;
      icl_register_string( 'electro_options', $key, apply_filters('widget_text', $option));
    }
  }
}