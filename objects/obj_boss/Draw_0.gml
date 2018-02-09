drawWidth = 60
drawHeight = 15

draw_self() 


if(healthValue != 100)
{
	//if(obj_enemy.healthValue == 0)
		//instance_destroy();
	
	draw_set_colour(c_white);
	draw_rectangle(x-25, y-50, x-25+drawWidth, y-50+drawHeight, false);
	draw_set_colour(c_red);
	draw_rectangle(x-25, y-50, x-25+ (healthValue/100)*drawWidth, y-50+drawHeight, false);
	
	
}