
if(sword_level_up==true)
{
 scr_draw_setup(c_yellow, font0, fa_center, fa_top, true);
	//show_debug_message("draw");
	if(mark2 != 0)
		draw_text(obj_JonSnow.x,obj_JonSnow.y-120,text);
}
if(draw_dead==1)
{
scr_draw_setup(c_red, font2, fa_center, fa_top, true);
text1="YOU DIED";
trans_factor-=0.025;
draw_set_alpha(trans_factor);
show_debug_message(string(camx)+" "+string(camy));
draw_text(camx+50,camy,text1);
}