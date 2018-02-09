//up
y -= 5 ;

//scale
image_xscale += 0.05;
image_yscale += 0.05;

//fade out
image_alpha -= 0.05;

//destroy
if (image_alpha <= 0 ) instance_destroy();
