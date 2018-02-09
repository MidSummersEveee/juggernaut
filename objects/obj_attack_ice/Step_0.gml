
vsp = vsp + grv;
//Vertical Collision
if (place_meeting(x,y+vsp,obj_ground))
  {
    while (!place_meeting(x,y+sign(vsp),obj_ground))
	{
	   y = y + sign(vsp);
	}
    vsp = 0;
    instance_destroy();
  }
if (place_meeting(x,y+vsp,obj_JonSnow))
{
	vsp = 0;
	if(obj_JonSnow.state != "defencing")
	{
		obj_controller.mark2 = 0;	
	}
	else
	{
	 audio_play_sound(snd_defenced, 0, 0);
	}
    instance_destroy();

}

  
    y = y + vsp;
