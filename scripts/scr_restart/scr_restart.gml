
	save_1 = ds_map_create();
    ds_map_add(save_1,"sword_damage",obj_controller.sword_damage);
	ds_map_add(save_1,"sword_familiarity",obj_controller.sword_familiarity);
	ds_map_add(save_1,"sword_level",obj_controller.sword_level);
	ds_map_add(save_1,"sword_level_requirement",obj_controller.sword_level_requirement);
	ds_map_secure_save(save_1, "save1.dat" ) ;
    ds_map_destroy(save_1);//free memory
	audio_play_sound(snd_dead, 0, 0);
	alarm[6] = 1*room_speed;



// this script is called by controller!
// be sure to refer to controller.step
