if(keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("J")))
{
	audio_play_sound(snd_attack, 0, 0);
	alarm[4] = 1;
}
else
	alarm[4] = 1;