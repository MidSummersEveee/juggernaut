if(is_detected)
{
	is_detected = false;
	alarm_set(3,60)
	
}
else
{
	audio_stop_sound(snd_boss_fight);
	alarm_set(2,1)
}

