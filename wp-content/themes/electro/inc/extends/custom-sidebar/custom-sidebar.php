<?php
/**
 * Initialisation des custom sidebars
 *
 * @package WordPress
 * @subpackage electro
 * @since electro 1.0
 * @author : Pascal RAMANANJARASOA
 */
function electro_widgets_init() {

    register_sidebar( array(
        'name' => __( 'Main Sidebar', 'electro' ),
        'id' => 'sidebar-1',
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget' => "</aside>",
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ) );

    //register other sidebar
    //http://generatewp.com/sidebar/
}
add_action( 'widgets_init', 'electro_widgets_init' );