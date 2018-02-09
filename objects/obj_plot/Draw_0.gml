draw_set_font(font0);

if(draw_effect==true)
{
draw_self();
//draw_text_ext(x,y,text,stringh,boxw);
draw_text_ext(x,y,ob_plots.plots[0],stringh,boxw);
}