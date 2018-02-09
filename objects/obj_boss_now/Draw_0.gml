drawWidth = 60
drawHeight = 15

draw_self();


if(healthValue != 300)
{
	//if(obj_enemy.healthValue == 0)
		//instance_destroy();
	
	draw_set_colour(c_white);
	draw_rectangle(x-100, y-70, x-25+drawWidth*3, y-70+drawHeight, false);
	draw_set_colour(c_red);
	draw_rectangle(x-100, y-70, x-25+(healthValue/100)*drawWidth, y-70+drawHeight, false);
	
	
}


if(is_detected)
{
	draw_sprite(spr_exc, 0, x-70, y-185);
}