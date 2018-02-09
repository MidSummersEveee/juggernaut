// jump to last room
//room_goto(rm_1017);


switch (room_get_name(room))
{
	case "rm_level0": 
		show_debug_message("right place")
		room_goto(rm_level1);
		break;
	case "rm_level1":
		room_goto(rm_level2);
		break;
	case "rm_level2":
		room_goto(rm_level_defence);
		break;
	case "rm_1017":
		room_goto(rm_level3);
		break;
}
