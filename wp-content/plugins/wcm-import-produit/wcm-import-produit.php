<?php
/*
 * Plugin Name: WooCommerce Import Produit
 * Description: Module WP qui permet d'importer des produits pour WooCommerce à partir d'un fichier excel.
 * Version: 1.0
 * Author: Pascal & Fetra
 * Text Domain: wcm-pip
 * Domain Path: /i18n/languages/
 * Requires at least: 6.2
 * Requires PHP: 7.3 or latest
*/

if ( !defined( 'ABSPATH' ) ) {
	die;
}

if ( !is_admin() ) {
	return;
}

define( 'WCM_IP_PATH' , plugin_dir_path( __FILE__ ) );
define( 'WCM_IP_URL' , plugin_dir_url( __FILE__ ) );
define( 'WCM_PRIMARY_LANG' , 'wcm-pip' );
require_once 'inc/wcm-import-produit.class.php';
new WCM_Import_Produit();

//require_once 'examples/class-example-batch.php';


// Callback function to display the import page
function import_excel_page_callback() {
	?>
    <div class="wrap">
        <h2>Import Excel to WooCommerce</h2>
        <form id="import-form" method="post" enctype="multipart/form-data">
            <input type="file" name="excel-file" accept=".xls,.xlsx">
            <input type="submit" name="submit" value="Import">
        </form>
        <div id="progress-bar"></div>
    </div>

    <script>
        // JavaScript code for handling progress bar and AJAX requests
        // ...
    </script>
	<?php

	$element = 'image';
	//ajouter le hook pour specifier les ids à traiter
	add_filter( 'progress_action_data_' . $element , 'my_callback' );
	function my_callback( $data ) {
		return array( 1 , 2 , 3 , 4 , 5 , 6 );
	}

//ajouter le hook pour faire le traitement des elements
	add_filter( 'progress_action_callback_' . $element , 'my_action_callback' );
	function my_action_callback( $id ) {
		//do some action with $id

		//return a string if error
		return 'error message for ' . $id;

		//return true if success
		return true;
	}

	//diplay form
	$element         = 'image';
	$progress_action = new WIP_Progression_Import( $element , 'Image' , array( 'process_title' => 'Conversion des images' ) );
	$progress_action->display();
}

add_action( 'wp_ajax_progress_action' , array( 'WIP_Progression_Import' , 'progress_action_callback' ) );
add_action( 'admin_enqueue_scripts' , array( 'WIP_Progression_Import' , 'admin_enqueues' ) );


// JavaScript code for handling progress bar and AJAX requests


// Add AJAX action for processing the import


