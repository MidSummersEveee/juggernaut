//Player Input
key_left =  keyboard_check(vk_left) || keyboard_check(ord("A"))||obj_left.mark_left;
key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"))||obj_right.mark_right;
key_jump = keyboard_check(vk_space)||obj_jump.mark_jump;
key_attack = keyboard_check_pressed(vk_shift)||keyboard_check_pressed(ord("J"))||obj_attack.mark_attack;
key_defence = keyboard_check_direct(ord("L"))||obj_defence.mark_defence;


//show_debug_message("right"+" "+string(keyboard_check(vk_right))+" "+string(keyboard_check(ord("D"))));
//Calculate Movement
var move = key_right - key_left; 




hsp = move * walksp;


//show_debug_message("move and hsp"+" "+string(move)+" "+string(hsp));
vsp = vsp + grv;
if(obj_left.mark_left)
  obj_left.mark_left=false;
if(obj_right.mark_right)
   obj_right.mark_right=false;
if(obj_defence.mark_defence)
     obj_defence.mark_defence=false;

if (place_meeting(x,y+1,obj_ground)) && (key_jump)
  {
	  obj_jump.mark_jump=false;
        vsp = -14;
  }


//Horizontal Collision

if (place_meeting(x+hsp,y,obj_ground))
  {
    while (!place_meeting(x+sign(hsp),y,obj_ground))
	{
	   x = x + sign(hsp);
	}
    hsp = 0;
  }
  

	x = x + hsp;
	
//Vertical Collision
if (place_meeting(x,y+vsp,obj_ground))
  {
    while (!place_meeting(x,y+sign(vsp),obj_ground))
	{
	   y = y + sign(vsp);
	}
    vsp = 0;
  }
  
    y = y + vsp;
	
	
	
/*
if (state == "idle") {
	
	
	if (key_attack) {
		state = "punching";
		obj_attack.mark_attack=false;
		
		obj_controller.sword_familiarity+=1;
		if(obj_controller.sword_level>=2)
		{
		  temp=random_range(1,10);
		  temp+=obj_controller.sword_level;
		  if(temp>=7)
		   obj_controller.sword_effect_crit=true;
		}
		if(obj_controller.sword_effect_crit)
		{
		 if(key_left)
			sprite_index = spr_attack_crit_left;
		 else
			sprite_index = spr_attack_crit_right;
		 image_speed = 1;
		 image_index = 0;
		 obj_controller.sword_effect_crit=false;
		 obj_controller.sword_damage_current=obj_controller.sword_damage*1.5;
		}
		else
		{
	     if(key_left)
			sprite_index = spr_attack_normal_left;
		 else
			sprite_index = spr_attack_normal_right;
		image_speed = 1;
		image_index = 0;
		obj_controller.sword_damage_current=obj_controller.sword_damage;
		}
		show_debug_message(obj_controller.sword_damage_current);
		//show_message("You pressed the god damn key");
		
		
		
		
  }
} else if (state == "punching") {
  // This code won't get run on the same step you press space while in "idle" state
  // So this check only triggers if we just hit the last frame of the animation and looped around
  if (image_index == 0) {
    state = "idle";

    //
	//
	//
	if (!place_meeting(x,y+1,obj_ground))
		{
			sprite_index = spr_JonSnow_Jump; 
			//the sprite has two images, first is jumping, second is falling
			
			audio_play_sound(snd_jump, 0, 0);
			
			image_speed = 0;
			if (sign(vsp) > 0) 
			image_index = 1; 
			else image_index = 0; //use second image when falling
		}
	  else {
		image_speed = 1;
		if(hsp == 0)
			sprite_index = spr_JonSnow_Stand;
		else if (hsp > 0)
			sprite_index = spr_JonSnow_Walk_right;
		else if (hsp < 0)
			sprite_index = spr_JonSnow_Walk_left;
	  }
	
	
  }
}
*/
if (state == "idle") {
	if (key_attack) {
		state = "punching";
		obj_attack.mark_attack=false;
		attack_finish=false;
		obj_controller.sword_familiarity+=1;
		if(obj_controller.sword_level>=2)
		{
		  temp=random_range(1,10);
		  temp+=obj_controller.sword_level;
		  if(temp>=7)
		   obj_controller.sword_effect_crit=true;
		}
		if(obj_controller.sword_effect_crit)
		{
		 if(key_left)
			sprite_index = spr_attack_crit_left;
		 else
			sprite_index = spr_attack_crit_right;
		 image_speed = 1;
		 image_index = 0;
		 obj_controller.sword_effect_crit=false;
		 obj_controller.sword_damage_current=obj_controller.sword_damage*1.5;
		}
		else
		{
	     if(key_left)
			sprite_index = spr_attack_normal_left;
		 else
			sprite_index = spr_attack_normal_right;
		image_speed = 1;
		image_index = 0;
		obj_controller.sword_damage_current=obj_controller.sword_damage;
		}
		show_debug_message(obj_controller.sword_damage_current);
		//show_message("You pressed the god damn key");
  }
  
  else if(key_defence)
	{
		
		state = "defencing"
		sprite_index = spr_defence_left;
	}
  
  else{  
		
	if (!place_meeting(x,y+1,obj_ground))
		{
			sprite_index = spr_JonSnow_Jump; 
			//the sprite has two images, first is jumping, second is falling
			image_speed = 0;
			if (sign(vsp) > 0) 
			image_index = 1; 
			else image_index = 0; //use second image when falling
		}
	else{
		image_speed = 1;
        if(hsp == 0)

			sprite_index = spr_JonSnow_Stand;

		else if (hsp > 0)

			sprite_index = spr_JonSnow_Walk_right;

		else if (hsp < 0)

			sprite_index = spr_JonSnow_Walk_left;

	}
  }
} 
/*
else if (state == "punching") {
  // This code won't get run on the same step you press space while in "idle" state
  // So this check only triggers if we just hit the last frame of the animation and looped around
    show_debug_message(image_index);
  if (image_index ==0) {
	
    state = "idle";
  }
}

*/



//if (hsp != 0)  image_xscale = sign(hsp); //change walking sprite left or right!!



//Keep the player inside the map
if (x <= 100) {
  x = 100;
  }
if (x >= room_width - 100){
  x = room_width - 100;
  }
  
//Different backgrounds different speed
var camx = camera_get_view_x(view_camera[0]);
layer_x("Bg_cloud_1", camx * 0.2);
layer_x("Bg_cloud_2", camx * 0.6);
layer_x("Bg_snow", camx * 0.1);
