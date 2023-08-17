<?php

use Box\Spout\Common\Type;
use Box\Spout\Reader\ReaderFactory;

require_once( WCM_IP_PATH . '/lib/Spout/Autoloader/autoload.php' );

class WCM_Import_Produit {
	public function __construct() {
		add_action( 'admin_menu' , array( $this , 'admin_menu' ) );
		add_action( 'admin_enqueue_scripts' , array( $this , 'admin_enqueues' ) );
		add_action( 'admin_init' , array( $this , 'import_validation' ) );
	}

	public function admin_menu() {
		add_menu_page(
			__( 'Importer les products de WooCommerce dépuis le fichier Excel' , WCM_PRIMARY_LANG ) ,
			__( 'Import Produit' , WCM_PRIMARY_LANG ) ,
			'manage_options' ,
			'page-import-produit' ,
			array( $this , 'admin_page' ) ,
			'dashicons-products' ,
			10
		);
	}

	public function admin_page() {
		ob_start();
		include WCM_IP_PATH . '/templates/admin.tpl.php';

		echo ob_get_clean();
	}

	public function admin_enqueues() {
		//CSS
		wp_enqueue_style( 'wcm-ip-style' , WCM_IP_URL . 'assets/css/style.css' );
		wp_enqueue_style( 'jquery-ui-progress-bar-processus' , WCM_IP_URL . 'lib/jquery-ui/redmond/jquery-ui-1.7.2.custom.css' , array() , '1.7.2' );

		//JS
		// WordPress 3.1 vs older version compatibility
		if ( wp_script_is( 'jquery-ui-widget' , 'registered' ) ) {
			wp_enqueue_script( 'jquery-ui-progressbar' , WCM_IP_URL . 'lib/jquery-ui/jquery.ui.progressbar.min.js' , array(
				'jquery-ui-core' ,
				'jquery-ui-widget'
			) , '1.8.6' );
		} else {
			wp_enqueue_script( 'jquery-ui-progressbar' , WCM_IP_URL . 'lib/jquery-ui/jquery.ui.progressbar.min.1.7.2.js' , array( 'jquery-ui-core' ) , '1.7.2' );
		}

		wp_enqueue_script( 'wcm-ip-script' , WCM_IP_URL . 'assets/js/script.js' , array( 'jquery' ) ,
			false , );
	}

	public function import_validation() {
		$errors = array();
		global $wcm_validation_errors;
		if ( isset( $_POST['_wpnonce_import'] ) && wp_verify_nonce( $_POST['_wpnonce_import'] , 'wcm_file_add_import' )
		) {
			$upload_dir = wp_upload_dir();
			if ( isset( $_POST['wcm_import_action'] ) ) {
				if ( !empty( $upload_dir['basedir'] ) && !empty( $_FILES['wcm_product_file']['tmp_name'] ) ) {
					$file_dirname = $upload_dir['basedir'] . '/wcm-import-produit';
					if ( !file_exists( $file_dirname ) ) {
						wp_mkdir_p( $file_dirname );
					}

					$excel_path = $_FILES['wcm_product_file']['tmp_name'];
					$reader     = ReaderFactory::create( Type::XLSX );
					$reader->open( $excel_path );
					$sheets = $reader->getSheetIterator();
					if ( !empty( $sheets ) ) {
						foreach ( $sheets as $sheet ) {
							$file_sheet_name = $sheet->getName();
							if ( $file_sheet_name ) {
								$i    = 0;
								$rows = $sheet->getRowIterator();

								if ( !empty( $rows ) ) {
									foreach ( $rows as $row ) {
										if ( $i > 0 ) {
											$type     = $row[0];
											$wc_types = wc_get_product_types();
											$wc_types = array_keys( $wc_types );
											if ( !empty( $type ) ) {
												if ( !in_array( $type , $wc_types ) ) {
													$errors[] = "Type $type dans la LIGNE $i n'existe plus dans WooCommerce";
												}
											}
										}
										$i ++;
									}
								}
							}
						}


						if ( empty( $errors ) ) {
							move_uploaded_file( $_FILES['wcm_product_file']['tmp_name'] , $file_dirname . '/' . 'wcm-produit.xlsx' );
						}
					}
				}
			}
		}

		$wcm_validation_errors = $errors;
		$error_message         = implode( '<br>' , $wcm_validation_errors );
		add_settings_error( 'wcm_validation_errors' , '401' , $error_message , 'error' );

		return true;
	}

	public static function isExcelValid() {
		$wcm_errors = get_settings_errors( 'wcm_validation_errors' );
		if ( !empty( $wcm_errors[0]['message'] ) ) {
			return false;
		} else {
			return true;
		}
	}
}