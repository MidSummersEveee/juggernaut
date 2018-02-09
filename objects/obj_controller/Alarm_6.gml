
//set bg snow speed to 0
layer_vspeed(layer_get_id("Bg_snow"), 0);

//make menu base visible
layer_background_visible(layer_background_get_id("Bg_menu"), true);
camx = camera_get_view_x(view_camera[0]);
camy=  camera_get_view_y(view_camera[0]);
camx+=250;
camy+=100;
//deactivate all object
instance_deactivate_all(false);
instance_activate_object(obj_controller);
draw_dead=1;
alarm[7]=2*room_speed;
