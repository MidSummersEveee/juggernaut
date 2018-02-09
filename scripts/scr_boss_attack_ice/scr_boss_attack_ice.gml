//instance_create_layer(obj_JonSnow.x, obj_JonSnow.y-500, layer_get_id("Player"), obj_attack_ice);
//instance_create_layer(obj_boss_now.x + 23, obj_boss_now.y - 150, layer_get_id("Player"), obj_bullet);



if(abs(x - obj_JonSnow.x) <= 250)
{
	instance_create_layer(obj_JonSnow.x, obj_JonSnow.y-500, layer_get_id("Player"), obj_attack_ice);
}
else
{
	instance_create_layer(x + 23, y - 300, layer_get_id("Player"), obj_bullet);
}
audio_play_sound(snd_ice_attack, 0, 0);