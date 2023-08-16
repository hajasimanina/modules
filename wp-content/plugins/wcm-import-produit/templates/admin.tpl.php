<?php
?>
<div class="wcm-import-header">
    <h2><?php echo __( 'Import des produits pour WooCommerce' , WCM_PRIMARY_LANG ); ?></h2>
    <button class="wcm-import-add-file"><i class="dashicons dashicons-plus-alt"></i>
		<?php echo __( 'Ajouter le fichier' , WCM_PRIMARY_LANG ); ?>
    </button>
</div>
<div class="wcm-ip-uploader-inline hidden">
    <button class="close dashicons dashicons-no" title="<?php echo __( 'Fermer' , WCM_PRIMARY_LANG ); ?>"></button>
    <div class="wcm-ip-uploader-inline-content no-upload-message">
        <div class="wcm-ip-upload-ui">
            <h2 class="upload-instructions drop-instructions">
				<?php echo __( 'Déposez le fichier des produits pour importer' , WCM_PRIMARY_LANG ); ?>
            </h2>
            <form id="wcm-import-form" method="post" enctype="multipart/form-data">
				<?php wp_nonce_field( 'wcm_file_add_import' , '_wpnonce_import' ) ?>
                <input type="file" required name="wcm-product-file" accept=".xls,.xlsx,.png">
                <input type="submit" class="browser button button-hero" name="wcm_import_action"
                       value="<?php echo __( 'IMPORTER LES PRODUITS' , WCM_PRIMARY_LANG ); ?>">

            </form>
        </div>

        <div class="wcm-ip-upload-inline-status"></div>

        <div class="post-upload-ui" id="post-upload-info">
            <p class="max-upload-size">
				<?php echo __( 'Le type du fichier autorisé à téléverser est: Excel( .xls ou .xlsx )' ,
					WCM_PRIMARY_LANG ); ?>
            </p>
        </div>
    </div>
</div>


<div id="progress-bar"></div>
