//call plot displayer

switch (room_get_name(room))
{
	case "rm_level0": 
		scr_display_plots(ob_plots.plots[3]);
		obj_c_lv1.button_show_up=1;
		break;
	case "rm_level1":
	    scr_display_plots(ob_plots.plots[6]);
		obj_c_lv2.button_show_up=1;
		break;
	case "rm_level2":
		scr_display_plots(ob_plots.plots[0]);
		break;
	case "rm_level_defence":
	    scr_display_plots(ob_plots.plots[8]);
		obj_c_level_defence.button_show_up=1;
		break;
}