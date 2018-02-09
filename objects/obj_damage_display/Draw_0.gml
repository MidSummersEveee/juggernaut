draw_set_font(font3);

draw_set_halign(fa_center)
//show_debug_message(string(x)+" "+string(y));
draw_text_transformed_color(x,y,string(text_to_draw),image_xscale/2,image_yscale/2,src_wave(-10,10,5,0),color1_to_draw,color2_to_draw,color3_to_draw,color4_to_draw,image_alpha);