

if(obj_attack.visible)
	//show_debug_message("it is being displayed")


//Vertical Collision
if (place_meeting(x+hspeed,y,obj_ground))
  {
    while (!place_meeting(x+sign(hspeed),y,obj_ground))
	{
	   x = x + sign(hspeed);
	}
    hspeed = 0
    instance_destroy();
  }
  
  
if (place_meeting(x,y,obj_JonSnow))
{
	/*
	if(obj_JonSnow.beingPushed == 0)
	{
		obj_JonSnow.beingPushed = 1;
		if(obj_JonSnow.hspeed != 0)
			obj_JonSnow.hspeed = 0;
		
		obj_JonSnow.hspeed -= 20;
		//show_debug_message("in this loop")
	    instance_destroy();	
	}
	*/
	
	//show_debug_message(obj_JonSnow.state);
	if(obj_JonSnow.state != "defencing")
	{
		//show_debug_message("he is not defencing")
		obj_controller.mark2 = 0;
		
	}
	else
	{
	 audio_play_sound(snd_defenced, 0, 0);
	}
	instance_destroy();	
	
	
}


/*
if(obj_JonSnow.beingPushed == 1)
	{
		if(obj_JonSnow.hspeed + 16 < 0)
		{
			obj_JonSnow.hspeed += 16;
			show_debug_message("fuck im here")
		}
		else
		{
			obj_JonSnow.hspeed = 0;
			obj_JonSnow.beingPushed = 0;
			instance_destroy();	
		}
	}
*/