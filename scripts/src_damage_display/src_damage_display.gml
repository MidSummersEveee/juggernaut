text_x = random_range(x-sprite_width/2,x+sprite_width/2);
text_y = y-150;

instance_create_depth(text_x,text_y,depth-1,obj_damage_display);
audio_play_sound(snd_hitted, 0, 0);
