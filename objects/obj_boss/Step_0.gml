

if place_meeting(x - 1, y, obj_JonSnow)
{
	// collision with John Snow
	
	// see if John is attacking
	if(obj_JonSnow.sprite_index == spr_attack1)
		healthValue -= obj_controller.sword_damage;
		
}


if(healthValue <= 0)
{
	
	instance_destroy();
}