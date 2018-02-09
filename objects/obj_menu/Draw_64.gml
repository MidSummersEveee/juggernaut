/*
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
draw_set_color(c_white);
*/
var camx = camera_get_view_x(view_camera[0]);
var camy = camera_get_view_y(view_camera[0]);
scr_draw_setup(c_white, font0, fa_left, fa_middle, false);

var m;
for(m = 0; m < array_length_1d(menu); m += 1)
{
	if(m < 6)
	{
		draw_text(x + space + 20, y + m * space + 32, string(menu[m]));
        text_x[m]=camx+x + space + 20;
		text_y[m]= camy+y + m * space + 32;
	}
	else
	{
		draw_text(x + space + 500, y + (m-5)*space + 32, string(menu[m]));
		text_x[m]=camx+x + space + 500;
		text_y[m]=camy +y+ (m-5)*space + 32;
	}
}

if(mpos < 6)
	draw_sprite(sprite_index, 0, x + 16, y + mpos * space);
else
	draw_sprite(sprite_index, 0, x + 496, y + (mpos-5) * space);
