/// @desc jumpMode(sprite)
/// @arg sprite

if ((argument[0] == idle_b || argument[0] == walk_b)){
    sprite_index = jump_b1;
	image_index = 0;
	image_speed = .5;
}
else if(argument[0] == jump_b1 || argument[0] == jump_b2 || argument[0] == fall_b){
	sprite_index = jump_b2;
	image_index = 0;
	image_speed = .5;
}
