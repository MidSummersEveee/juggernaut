obj_menu.visible = true;

switch (mpos)
{
	case 0:
	{
		scr_reactivate();
		break;
	}
	
	case 1:
	{
		show_debug_message("to level 1");
		scr_reactivate();
		scr_save();
		room_goto(rm_level0);
		break;
	}
	
	case 2:
	{
		show_debug_message("to level 2");
		scr_reactivate();
		scr_save();
		room_goto(rm_level1);
		break;
	}
	
	
	case 3:
	{
		show_debug_message("to level 3");
		scr_reactivate();
		scr_save();
		room_goto(rm_level2);
		break;
	}
	
	case 4:
	{
		show_debug_message("to level 4");
		scr_reactivate();
		scr_save();
		room_goto(rm_level_defence);
		break;
	}
	
	case 5:
	{
		show_debug_message("to level 5");
		scr_reactivate();
		scr_save();
		room_goto(rm_1017);
		break;
	}
	case 6:
	{
		show_debug_message("to level 6");
		scr_reactivate();
		scr_save();
		room_goto(rm_level3);
		break;
	}
	case 7:
	{
		show_debug_message("to level 7");
		scr_reactivate();
		scr_save();
		room_goto(rm_level4);
		break;
	}
	case 8:
	{
		show_debug_message("to level 8");
		scr_reactivate();
		scr_save();
		room_goto(rm_level5);
		break;
	}
	case 9:
	{
		show_debug_message("to level 9");
		scr_reactivate();
		scr_save();
		room_goto(rm_level6);
		break;
	}
	case 10:
	{
		show_debug_message("to level 10");
		scr_reactivate();
		scr_save();
		room_goto(rm_level7);
		break;
	}
	default: break;
	
}