/// @desc smashMode(sprite)
/// @arg sprite 
if (argument[0] == jump_bs1 || argument[0] == jump_bs2 || argument[0] == fall_bs){
    hascontrol = false;
	sprite_index = sword_air3_bs; 
	image_speed = 2;
	image_index = 0;
    is_smashing = true;
	normpower = atkpower;
	atkpower *= 2;
}
