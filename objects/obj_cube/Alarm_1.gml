switch (room_get_name(room))
{
	case "rm_level0": 
		show_debug_message("right place")
		room_goto(rm_level1);
		break;
	case "rm_level1":
		room_goto(rm_level2);
		break;
	case "rm_level_defence":
		room_goto(rm_1017);
		break;
	case "rm_level3":
		room_goto(rm_level4);
		break;
	case "rm_level4":
		room_goto(rm_level5);
		break;
	case "rm_level5":
		room_goto(rm_level6);
		break;
	case "rm_level6":
		room_goto(rm_level7);
		break;
}
