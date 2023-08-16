<?php
/**
 * Déclaration des profils users
 *
 * @package WordPress
 * @subpackage electro
 * @since electro 1.0
 * @author : Pascal RAMANANJARASOA
 */

add_action('init', 'electro_init_role');
function electro_init_role(){
  add_role( USER_PROFILE_ADMIN, 'Administrateur');
  add_role( USER_PROFILE_WEBMASTER, 'Webmaster');
  add_role( USER_PROFILE_MEMBRE, 'Membre');
}