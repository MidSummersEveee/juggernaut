// scripts executed after level0 is complete
scr_display_plots(ob_plots.plots[4]);
show_debug_message("terminated!");
alarm[1] = 3*room_speed;


// this script is called by obj_wall
// be sure to refer to obj_cube.alarm[1]