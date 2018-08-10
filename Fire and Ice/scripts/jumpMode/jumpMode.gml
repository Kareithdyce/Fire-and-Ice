/// @desc jumpMode(sprite)
/// @arg sprite

if ((argument[0] == idle_b || argument[0] == walk_b) || (argument[0] == fall_b && jumps_max == 1)){
    sprite_index = jump_b1;
	image_index = 0;
	image_speed = .5;
}
else if(argument[0] == jump_b1 || argument[0] == jump_b2 || argument[0] == fall_b){
		sprite_index = jump_b2;
		image_index = 0;
		image_speed = .5;
}

if ((argument[0] == idle_bs || argument[0] == walk_bs) || (argument[0] == fall_bs && jumps_max == 1)){
    sprite_index = jump_bs1;
	image_index = 0;
	image_speed = .5;
}
else if(argument[0] == jump_bs1 || argument[0] == jump_bs2 || argument[0] == fall_bs){
		sprite_index = jump_bs2;
		image_index = 0;
		image_speed = .5;
}

if ((argument[0] == idle_f || argument[0] == walk_f) || (argument[0] == fall_f && jumps_max == 1)){
    sprite_index = jump_f1;
	image_index = 0;
	image_speed = .5;
}
else if(argument[0] == jump_f1 || argument[0] == jump_f2 || argument[0] == fall_f){
		sprite_index = jump_f2;
		image_index = 0;
		image_speed = .5;
}

