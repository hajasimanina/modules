<?php
/**
 * layout configuration
 */

global $fixed_gabarit_layouts;
$fixed_gabarit_layouts = array(
	'layout_homepage' => array(
		'section_collections' ,
	) ,

	//put your fixed gabarit layout here
);

//Hook: Template Render Path
add_filter( 'acfe/flexible/render/template' , 'electro_acf_layout_template' , 10 , 4 );
function electro_acf_layout_template( $file , $field , $layout , $is_preview ) {
	//$flexible_name = $field['_name'];
	$layout_name = $layout['name'];
	$layout_file = get_template_directory() . '/template-part/layouts/' . $layout_name . '/template.php';
	if ( is_file( $layout_file ) == true ) {
		return $layout_file;
	}

	// Do not include the template file
	// return false;
	return $file;
}

//Hook: Style Render Path
add_filter( 'acfe/flexible/render/style' , 'electro_acf_layout_style' , 10 , 4 );
function electro_acf_layout_style( $file , $field , $layout , $is_preview ) {
	//$flexible_name = $field['_name'];
	$layout_name = $layout['name'];
	$layout_file = get_template_directory() . '/template-part/layouts/' . $layout_name . '/admin.css';
	if ( $is_preview && is_file( $layout_file ) == true ) {
		return $layout_file;
	}

	// Do not include the style file
	// return false;
	return $file;
}

//load default front css to BO
add_action( 'acfe/flexible/enqueue' , 'electro_acf_flexible_enqueue' , 10 , 2 );
function electro_acf_flexible_enqueue( $field , $is_preview ) {
	electro_enqueue_scripts();
}

//configurer les layouts par défaut des gabarits
if ( !empty( $fixed_gabarit_layouts ) ) {
	foreach ( $fixed_gabarit_layouts as $gabarit => $layouts ) {
		add_filter( 'acf/load_value/name=' . $gabarit , 'electro_init_layout_gabarit' , 10 , 3 );
	}
}

function electro_init_layout_gabarit( $value , $post_id , $field ) {
	global $post , $fixed_gabarit_layouts;
	$gabarit_name = $field['name'];

	if ( isset( $post ) && $post_id == $post->ID ) {
		$fixed_layouts = isset( $fixed_gabarit_layouts[ $gabarit_name ] ) ? $fixed_gabarit_layouts[ $gabarit_name ] : array();
		if ( !is_array( $value ) ) {
			$value = array();
		}
		$existing_layouts = !empty( $value ) ? array_map( function ( $a ) {
			return $a['acf_fc_layout'];
		} , $value ) : array();
		if ( !empty( $fixed_layouts ) ) {
			foreach ( $fixed_layouts as $layout ) {
				if ( !in_array( $layout , $existing_layouts ) ) {
					$value[] = array( 'acf_fc_layout' => $layout );
				}
			}
			usort( $value , function ( $a , $b ) use ( $fixed_layouts ) {
				$pos_a = array_search( $a['acf_fc_layout'] , $fixed_layouts );
				$pos_b = array_search( $b['acf_fc_layout'] , $fixed_layouts );

				return $pos_a - $pos_b;
			} );
		}
	}

	return $value;
}