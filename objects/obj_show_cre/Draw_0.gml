/*
var av_index = 0;

while(av_index < 4)
{
	//draw_sprite(av, av_index, x, y + av_index * 150)
	scr_draw_setup(c_white, font0, fa_left, fa_top, false);
	draw_text_ext(x+300 , y+ av_index * 150, t[av_index] ,45 ,100);
	av_index ++;
}
*/
scr_draw_setup(c_white, font0, fa_left, fa_top, false);
draw_text_ext(450 , 200, t[0] ,45 ,100);
draw_text_ext(916 , 200, t[3] ,45 ,100);
draw_text_ext(450 , 480, t[1] ,45 ,100);
draw_text_ext(916 , 480, t[2] ,45 ,100);
//draw_text_ext(x+300 , y+ av_index * 150, t[av_index] ,45 ,100);
//draw_text_ext(x+300 , y+ av_index * 150, t[av_index] ,45 ,100);