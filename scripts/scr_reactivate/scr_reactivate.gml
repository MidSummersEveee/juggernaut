show_debug_message("Game Resumed!");
		
//set menu base to invisible
layer_background_visible(layer_background_get_id("Bg_menu"), false);
		
//resume bg snow speed
layer_vspeed(layer_get_id("Bg_snow"), 6);
		
//set menu to invisible
obj_menu.visible = false;

//activiate all instances
instance_activate_all();
instance_deactivate_object(obj_menu);		
//reset pauser's alarm0
obj_pause.alarm[0] = 1 ;