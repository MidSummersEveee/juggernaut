
//draw_sprite(spr_attack_button,0,x,y);

if(room!=rm_level2)
{
	
	draw_sprite(spr_attack_button,0,x,y);
}
else
{

if(obj_controller.detect_count > 0)
{
	if(lv3_button==1)
	{
		show_debug_message("hi");
		draw_sprite_ext(spr_attack_button, 0, x, y, xscale, yscale, 0, -1, 1);
		if(xscale>1)
		xscale-=0.1;
		if(yscale>1)
		yscale-=0.1;
	}
	else
		draw_sprite(spr_attack_button,0,x,y);
}

}