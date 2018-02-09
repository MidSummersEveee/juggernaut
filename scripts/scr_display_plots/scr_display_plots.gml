//Plots Displayer(plot)

plot = argument0;

//creat plot base object
instance_create_layer(obj_JonSnow.x-100, obj_JonSnow.y-300, layer_get_id("Control"), obj_plot_base);

// argument pass
obj_plot_base.text = argument0;

//ready to draw
obj_plot_base.draw_effect = true;
alarm[0] = room_speed * 4;
//instance_destroy();
