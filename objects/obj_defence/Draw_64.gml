
//draw_sprite(spr_attack_button,0,x,y);
if(lv4_button==1)
{
	draw_sprite_ext(spr_defence_button, 0, x, y, xscale, yscale, 0, -1, 1);
	if(xscale>1)
	xscale-=0.1;
	if(yscale>1)
	yscale-=0.1;
}
else
  draw_sprite(spr_defence_button,0,x,y);
