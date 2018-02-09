sprite_index = spr_ysera_walk_side;


if (!place_meeting(x-5,y-1,obj_block))
  {
  x = x - 10;
  }
  else {
      while(!place_meeting(x-1,y-1,obj_block)){
	   x = x - 1;
	  }
  }
