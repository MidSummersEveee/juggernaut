var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (move != 0)
{
	mpos += move;
	if(mpos < 0)
		mpos = array_length_1d(menu) - 1;
	if(mpos > array_length_1d(menu) - 1)
		mpos = 0;
}


var push = max(keyboard_check_released(vk_enter), 0);

if (push == 1)
	scr_menu();
	
var touched = 0;
touched += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),
				keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);

if (touched != 0)
	
	
if (keyboard_check_pressed(vk_enter))
	audio_play_sound(snd_selected, 0, 0);
	
for(var m = 0; m < array_length_1d(menu); m += 1)
{
if point_in_rectangle(mouse_x, mouse_y, text_x[m], text_y[m], text_x[m] + text_width, text_y[m] + text_height)
{
   audio_play_sound(snd_menu, 0, 0);
   mpos=m;
   if(mouse_check_button(mb_left))
   {
	 audio_play_sound(snd_selected, 0, 0);
     scr_menu();
   }
    
}	
}