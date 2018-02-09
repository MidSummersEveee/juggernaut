
if(mark2==0&&count_end==0&&obj_JonSnow.immunity==false)
{
  count_end=1;
  scr_restart();
 // instance_deactivate_object(obj_JonSnow);
}
if(count_end==0)
{
// level up function
if(sword_familiarity==sword_level_requirement)   //dealing with level up
{
  show_debug_message("Power Up!");
  audio_play_sound(snd_power_up, 0, 0);
  sword_level_up=true;
  alarm_set(2, 60);
  sword_damage+=10;
  sword_familiarity=0;
  sword_level_requirement+= sword_level_requirement;
  sword_level+=1;
}

// counts of enemies slained
//enemy_fall_count = enmey_initial_count - instance_number(obj_enemy);

if(enemy_count != -1)
	enemy_count = instance_number(obj_enemy);

//level handling
if(room == rm_level2)
// detect increment
{
	if(enemy_count != -1)
	{
		if(enemy_count > 0)
		{
			if(obj_enemy.is_detected)
			{
				draw_sprite(spr_exc, 0, obj_enemy.x-70, obj_enemy.y-165);
	
				detect_count++;
	
				if(detect_count == 1)
				{
					scr_display_plots(ob_plots.plots[1]);
					obj_c_lv3.button_show_up=1;
				}
			}
		}
		else
		{
			scr_battle_complete();
			enemy_count = -1;
		}
	}
}
else if(room==rm_1017)
{
  if(obj_boss_now.healthValue<=150 && mark1==1)
  {
	 mark1=0;
	 obj_JonSnow.immunity=true;
	 obj_boss_now.y-=300;
     scr_display_plots(ob_plots.plots[5]);
	 scr_battle_complete_normal();
  }
}
/*
if(room == rm_level0)
{
	//scr_display_plots(ob_plots.plots[3]);
}

*/
}