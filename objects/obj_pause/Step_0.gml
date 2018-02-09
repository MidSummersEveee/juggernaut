var touchi;
for( touchi = 0; touchi < 5; touchi += 1){ 

  if( device_mouse_check_button(touchi,mb_left) ) 
  {
   if (point_in_circle(device_mouse_x_to_gui(touchi), device_mouse_y_to_gui(touchi), x, y, sprite_get_width(spr_pause)/2))
   {
      mark_pause = true; // button clicked, do some stuff
	  
	 audio_stop_sound(snd_boss_fight);
	 scr_pause();
   }
	else
		mark_pause = false;
}

}

