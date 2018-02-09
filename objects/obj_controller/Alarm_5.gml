if(keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_jump, 0, 0);
	alarm[5] = 1;
}
else
	alarm[5] = 1;