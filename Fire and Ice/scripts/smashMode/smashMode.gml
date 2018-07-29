/// @desc smashMode(sprite)
/// @arg sprite 
if (argument[0] == jump_bs1 || argument[0] == jump_bs2 || argument[0] == fall_bs || argument[0] == sword_air1_bs || argument[0] == sword_air2_bs){
    hascontrol = false;
	sprite_index = sword_air3_bs; 
	image_speed = 2;
	image_index = 0;
    is_smashing = true;
	instance_create_depth(x,y+1,-1,obj_sword_smashing_hitbox);
	normpower = atkpower;
	atkpower *= 2;
}
