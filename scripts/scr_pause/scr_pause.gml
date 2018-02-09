show_debug_message("paused");
show_debug_message("god damned stopped")


//layer_vspeed(layer_background_get_id(layer_id), vspd)

//set bg snow speed to 0
layer_vspeed(layer_get_id("Bg_snow"), 0);

//make menu base visible
layer_background_visible(layer_background_get_id("Bg_menu"), true);

//deactivate all object
instance_deactivate_all(false);

//activate menu
instance_activate_object(obj_menu);

//make menu visible
obj_menu.visible = true;

if(obj_menu.visible)
	show_debug_message("The menu is successfullg visiualized!")



