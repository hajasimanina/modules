<?php
/**
 * page d'administration option du thème
 *
 * @package    WordPress
 * @subpackage electro
 * @since      electro 1.0
 * @author     : Pascal RAMANANJARASOA
 */

global $electro_options_settings , $electro_options;

if ( ! isset( $_REQUEST['settings-updated'] ) ) {
	$_REQUEST['settings-updated'] = false;
}

?>
<div class="electro-themes">
    <form method="post" action="options.php" id="form-option" class="theme_option_ft">
        <div class="electro-header">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/theme-options/images/logo.png"
                     alt="electro theme options"/>
                <h1>electro theme options</h1>
            </div>
            <div class="header-right">
                <h1> <?php _e( 'Theme Options' , PRIMARY_LANG ) ?> </h1>
                <div class='btn-save'>
                    <input type='submit' class='button-primary' value='<?php _e( 'Enregistrer' , PRIMARY_LANG ) ?>'/>
                </div>
            </div>
        </div>

        <div class="electro-details">
            <div class="electro-options">

                <div class="right-box">
                    <div class="nav-tab-wrapper">
                        <ul>
							<?php foreach ( $electro_options_settings as $tab => $fields ) : ?>
                                <li><a id="options-group-<?php echo sanitize_title( $tab ); ?>-tab" class="nav-tab"
                                       title="<?php echo $tab; ?>"
                                       href="#options-group-<?php echo sanitize_title( $tab ); ?>"><?php echo $tab; ?></a>
                                </li>
							<?php endforeach; ?>
                        </ul>
                    </div>
                </div>
                <div class="right-box-bg"></div>

                <div class="postbox left-box">
                    <!--======================== F I N A L - - T H E M E - - O P T I O N ===================-->
					<?php settings_fields( 'electro_options' ); ?>

					<?php foreach ( $electro_options_settings as $tab => $fields ) : ?>

                        <div id="options-group-<?php echo sanitize_title( $tab ); ?>" class="group electro-inner-tabs">
                            <h3><?php echo $tab; ?></h3>
							<?php foreach ( $fields as $name => $field ): ?>
								<?php
								$required = ( isset( $field['required'] ) && $field['required'] ) ? 'required' : '';
								$icon     = ( isset( $field['icon'] ) && ! empty( $field['icon'] ) ) ? '<i class="dashicons ' . $field['icon'] . '"></i>' : '';
								$desc     = ( isset( $field['description'] ) && ! empty( $field['description'] ) ) ?
									'<div class="explain">' . $field['description'] . '</div>' : '';
								?>
                                <div class="section theme-tabs">
                                    <a class="heading electro-inner-tab" href="javascript:void(0)">
										<?php echo $icon; ?>
										<?php echo $field['label']; ?>
                                    </a>
                                    <div class="electro-inner-tab-group">
                                        <div class="ft-control">
											<?php
											switch ( $field['type'] ) {
												case 'image' :
													?>
                                                    <input style="width: 50%" id="<?php echo sanitize_title( $field['label'] ); ?>"
                                                           class="upload" type="text"
														<?php echo $required; ?>
                                                           name="electro_theme_options[<?php echo $name; ?>]"
                                                           value="<?php if ( ! empty( $electro_options[ $name ] ) ) {
															   echo esc_url( $electro_options[ $name ] );
														   } ?>"
                                                           placeholder="<?php _e( 'Aucun fichier' , PRIMARY_LANG ); ?>"/>
                                                    <input id="upload_image_button" class="upload-button button"
                                                           type="button"
                                                           value="<?php _e( 'Upload' , PRIMARY_LANG ); ?>"/>
                                                    <div class="screenshot" id="<?php echo $name; ?>-image">
														<?php if ( ! empty( $electro_options[ $name ] ) ) {
															echo "<img src='" . esc_url( $electro_options[ $name ] ) . "' />
                                                            <a class='remove-image'></a>";
														} ?>
                                                    </div>
													<?php
													break;
												case 'text' :
													?>

                                                    <?php echo $desc; ?>
                                                    <input style="width: 50%" size="36" type="text" id="<?php echo $name; ?>-text"
                                                           class="of-input"
														<?php echo $required; ?>
                                                           name="electro_theme_options[<?php echo $name; ?>]"
                                                           value="<?php if ( ! empty( $electro_options[ $name ] ) ) {
															   echo esc_attr( $electro_options[ $name ] );
														   } ?>">
													<?php
													break;
												case 'textarea':
													?>
                                                    <?php echo $desc; ?>
                                                    <textarea style="width: 50%" name="electro_theme_options[<?php echo
                                                    $name;
                                                    ?>]"
                                                              rows="4" id="<?php echo $name; ?>-text"
                                                              <?php echo $required; ?>
                                                              class="of-input"><?php if ( ! empty( $electro_options[ $name ] ) ) {
															echo esc_attr( $electro_options[ $name ] );
														} ?>
                                                    </textarea>
													<?php
													break;
												case 'date':
													break;
												case 'select':
													?>
                                                    <?php echo $desc; ?>
                                                    <select name="electro_theme_options[<?php echo $name; ?>]"
                                                            id="<?php echo $name; ?>-select"
														<?php echo $required; ?>
                                                    >
                                                        <option><?php echo __( 'Séléctionnez' , PRIMARY_LANG ); ?></option>
														<?php foreach ( $field['options'] as $value => $label ): ?>
                                                            <option value="<?php echo $value; ?>" <?php if ( $electro_options[ $name ] == $value )
																echo 'selected=selected' ?>>
																<?php echo $label; ?>
                                                            </option>
														<?php endforeach; ?>
                                                    </select>
													<?php
													break;
												case 'url':
													?>
                                                    <?php echo $desc; ?>
                                                    <input style="width: 50%" size="36" id="<?php echo $name; ?>-text" class="of-input"
                                                           name="electro_theme_options[<?php echo $name; ?>]"
                                                           type="text"
														<?php echo $required; ?>
                                                           value="<?php if ( ! empty( $electro_options[ $name ] ) ) {
															   echo esc_url( $electro_options[ $name ] );
														   } ?>"
                                                    />
													<?php
													break;
												case 'email':
													?>
													<?php echo $desc; ?>
                                                    <input style="width: 50%" size="36" id="<?php echo $name; ?>-text"
                                                           class="of-input"
                                                           name="electro_theme_options[<?php echo $name; ?>]"
                                                           type="email"
														<?php echo $required; ?>
                                                           value="<?php if ( ! empty( $electro_options[ $name ] ) ) {
															   echo $electro_options[ $name ];
														   } ?>"
                                                    />
													<?php
													break;
												default:
											}
											?>
                                        </div>
                                    </div>
                                </div>
							<?php endforeach; ?>
                        </div>
					<?php endforeach; ?>
                    <!--======================== F I N A L - - T H E M E - - O P T I O N S ===================-->
                </div>
            </div>
        </div>

        <div class="electro-footer">
            <ul>
                <li class="btn-save">
                    <input type="submit"
                           class="button-primary"
                           value="<?php _e( 'Enregistrer' , PRIMARY_LANG ); ?>"/>
                </li>
            </ul>
        </div>

    </form>
</div>
<div class="save-options"><h2><?php _e( 'Options sauvegardés avec succés.' , PRIMARY_LANG ); ?></h2></div>