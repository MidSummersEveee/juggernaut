//call the prompt time line and activiate it from first moment.
timeline_index = time_line_prompt;
timeline_position = 30;
timeline_running = true;
//room setting
load_save = ds_map_secure_load("save1.dat");


//weapon initial settings
if(load_save && room != rm_level1)
{
show_debug_message("_____________________load");
sword_damage =ds_map_find_value(load_save, "sword_damage");
sword_familiarity=ds_map_find_value(load_save, "sword_familiarity");
sword_level=ds_map_find_value(load_save, "sword_level");
sword_level_requirement=ds_map_find_value(load_save, "sword_level_requirement");
ds_map_destroy(load_save);
}

else
{
sword_damage=20;
sword_familiarity=0;
sword_level_requirement=5;
sword_level=1;
}
sword_damage_current=20;
sword_level_up=false;
sword_effect_crit=false;
text="Power up!";



// counts of champion being deteced
detect_count = 0;

// counts of enemies slained
enemy_count = instance_number(obj_enemy);

// enemy intial counts
enmey_initial_count = instance_number(obj_enemy);

alarm[3] = 1;
alarm[4] = 1;
alarm[5] = 1;
//camera location
cmax=0;
cmay=0;
//makrs
mark1=1; //level_1017
mark2=1; //restart marker
count_end=0;
draw_dead=0;
trans_factor=1.0;