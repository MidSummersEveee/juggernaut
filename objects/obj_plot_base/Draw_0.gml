draw_set_font(font0);

if (draw_effect == true)
{
	scr_draw_setup(c_white, font0, fa_left, fa_top, true);
	draw_text_ext(x,y,text,stringh,boxw);
}
