key_pause = keyboard_check(vk_escape)||mark_pause;

// Pause functionality
if(key_pause)
{
	mark_pause = false;
	scr_pause();
}
else
	alarm_set(0,1);
