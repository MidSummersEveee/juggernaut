var touchi;
for( touchi = 0; touchi < 5; touchi += 1){ 

  if( device_mouse_check_button_pressed(touchi,mb_left) ) {
   if (point_in_circle(device_mouse_x_to_gui(touchi), device_mouse_y_to_gui(touchi), x, y, sprite_get_width(spr_right)/2)) {
      mark_attack=true; // button clicked, do some stuff
	  audio_play_sound(snd_attack, 0, 0);
   }
   else
   mark_attack=false;
}

}