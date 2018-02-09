/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1
/// @DnDHash : 11E8E17D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "vspeed"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "b76b153c-de8c-490d-8e5b-301fcb1672c1"
var l11E8E17D_0 = instance_place(x + 0, y + vspeed, obj_block);
if (!(l11E8E17D_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 2AE2BC2B
	/// @DnDParent : 11E8E17D
	gravity = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 723E9818
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 5579E58C
	/// @DnDParent : 723E9818
	/// @DnDArgument : "force" "0"
	gravity = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2D4511E6
	/// @DnDParent : 723E9818
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3CFD9A55
	/// @DnDParent : 723E9818
	/// @DnDArgument : "code" "while (!place_meeting(x,y+sign(vspeed),obj_block))$(13_10){$(13_10) y = y + sign(vspeed);$(13_10)}"
	while (!place_meeting(x,y+sign(vspeed),obj_block))
	{
	 y = y + sign(vspeed);
	}
}