<?php
/**
 * electro functions and definitions
 *
 * Sets up the theme and provides some helper functions. Some helper functions
 * are used in the theme as custom template tags. Others are attached to action and
 * filter hooks in WordPress to change core functionality.
 *
 * The first function, electro_setup(), sets up the theme by registering support
 * for various features in WordPress, such as post thumbnails, navigation menus, and the like.
 *
 * When using a child theme (see http://codex.wordpress.org/Theme_Development and
 * http://codex.wordpress.org/Child_Themes), you can override certain functions
 * (those wrapped in a function_exists() call) by defining them first in your child theme's
 * functions.php file. The child theme's functions.php file is included before the parent
 * theme's file, so the child theme functions would be used.
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are instead attached
 * to a filter or action hook. The hook can be removed by using remove_action() or
 * remove_filter() and you can attach your own function to the hook.
 *
 * We can remove the parent theme's hook only after it is attached, which means we need to
 * wait until setting up the child theme:
 *
 * <code>
 * add_action( 'after_setup_theme', 'my_child_theme_setup' );
 * function my_child_theme_setup() {
 *     // We are providing our own filter for excerpt_length (or using the unfiltered value)
 *     remove_filter( 'excerpt_length', 'electro_excerpt_length' );
 *     ...
 * }
 * </code>
 *
 * For more information on hooks, actions, and filters, see http://codex.wordpress.org/Plugin_API.
 *
 * @package    WordPress
 * @subpackage electro
 * @since      electro 1.0
 * @author     : Pascal RAMANANJARASOA
 */

require_once( get_template_directory() . '/inc/constante.inc.php' );
require_once( get_template_directory() . '/inc/default.config.php' );
require_once( get_template_directory() . '/inc/utils/helpers.php' );
require_once( get_template_directory() . '/login.php' );
require_once( get_template_directory() . '/layouts.php' );

//classes de service
require_once_files_in( get_template_directory() . '/inc/classes/posttype' );
require_once_files_in( get_template_directory() . '/inc/classes/taxonomy' );
require_once_files_in( get_template_directory() . '/inc/classes/user' );

if ( is_admin() ) {
	require_once( get_template_directory() . '/admin-functions.php' );

	/*** Theme Option ***/
	if ( is_dir( get_template_directory() . '/theme-options' ) ) {
		require get_template_directory() . '/theme-options/theme-options.php';
	}
}

global $electro_options;
$electro_options = get_option( 'electro_theme_options' );

/**
 * Tell WordPress to run electro_setup() when the 'after_setup_theme' hook is run.
 */
add_action( 'after_setup_theme' , 'electro_setup' );

if ( !function_exists( 'electro_setup' ) ):
	function electro_setup() {
		require_once_files_in( get_template_directory() . '/inc/extends/custom-sidebar' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-fields' , true );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-metaboxes' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-rules' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-role' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-mce-tools' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-shortcodes' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-sidebar' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-types' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-taxonomies' );
		require_once_files_in( get_template_directory() . '/inc/extends/custom-widgets' );

		/* Make electro available for translation.
		 * Translations can be added to the /languages/ directory.
		 * If you're building a theme based on electro, use a find and replace
		 * to change 'electro' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'electro' , get_template_directory() . '/languages' );

		// This theme styles the visual editor with editor-style.css to match the theme style.
		//add_editor_style();

		// Add default posts and comments RSS feed links to <head>.
		add_theme_support( 'automatic-feed-links' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menu( MENU_PRIMARY , __( 'Menu principal' , PRIMARY_LANG ) );
		register_nav_menu( MENU_CATEGORY , __( 'Menu catégorie' , PRIMARY_LANG ) );
		register_nav_menu( MENU_INFORMATION , __( 'Menu information' , PRIMARY_LANG ) );
		register_nav_menu( MENU_SERVICE , __( 'Menu service' , PRIMARY_LANG ) );

		// This theme uses Featured Images (also known as post thumbnails) for per-post/per-page Custom Header images
		add_theme_support( 'post-thumbnails' );

		add_image_size( IMAGE_SIZE_ACTUS_VIGNETTE , 100 , 100 , true );
		add_image_size( IMAGE_SIZE_ACTUS_MEDIUM , 500 , 300 );
		add_image_size( IMAGE_SIZE_PRODUCT , 340 , 240 , true );

	}
endif;

add_action( 'wp_enqueue_scripts' , 'electro_enqueue_scripts' );

function electro_enqueue_scripts() {
	$version = false;
	//styles
	wp_enqueue_style( 'bootstrap' , get_template_directory_uri() . '/assets/css/bootstrap.min.css' , array() );
	wp_enqueue_style( 'slick' , get_template_directory_uri() . '/assets/css/slick.css' , array()  );
	wp_enqueue_style( 'slick-theme' , get_template_directory_uri() . '/assets/css/slick-theme.css' , array() );
	wp_enqueue_style( 'nouislider' , get_template_directory_uri() . '/assets/css/nouislider.min.css' , array() );
	wp_enqueue_style( 'font-awesome' , get_template_directory_uri() . '/assets/css/font-awesome.min.css' , array() );
	wp_enqueue_style( 'electro-style' , get_template_directory_uri() . '/assets/css/style.css' , array() );

	//script
	wp_enqueue_script( 'jquery' , get_template_directory_uri() . '/assets/js/jquery.min.js' , array() , $version , true );
	wp_enqueue_script( 'bootstrap' , get_template_directory_uri() . '/assets/js/bootstrap.min.js' , array() , $version ,
		true );
	wp_enqueue_script( 'slick' , get_template_directory_uri() . '/assets/js/slick.min.js' , array() , $version , true );
	wp_enqueue_script( 'nouislider-min' , get_template_directory_uri() . '/assets/js/nouislider.min.js' , array() , $version
		, true );
	wp_enqueue_script( 'jquery-zoom' , get_template_directory_uri() . '/assets/js/jquery.zoom.min.js' , array() , $version ,
		true );
	wp_enqueue_script( 'script-main' , get_template_directory_uri() . '/assets/js/main.js' , array() , $version , true );
	wp_enqueue_script( 'electro-custom-script' , get_template_directory_uri() . '/assets/js/custom-script.js' , array
	() , $version , true );
	wp_localize_script( 'electro-custom-script' , 'electro_settings' , array(
		'ajaxUrl'   => admin_url( 'admin-ajax.php' ) ,
		'url_theme' => get_template_directory_uri() ,
	) );
}

