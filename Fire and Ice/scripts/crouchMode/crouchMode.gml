/// @desc crouchMode(sprite)
/// @arg sprite

if (argument[0] == idle_b || argument[0] == walk_b || argument[0] == fall_b || argument[0] == slide_b || argument[0] == crouch_b){
    if(key_action){
		sprite_index = slide_b;
		image_index = 0;
	}
	else{
		sprite_index = crouch_b;
	}
	image_speed = 1;
}
if (argument[0] == idle_bs || argument[0] == walk_bs || argument[0] == fall_bs || argument[0] == slide_bs || argument[0] == crouch_bs){
    if(key_action){
		sprite_index = slide_bs;
		image_index = 0;
	}
	else{
		sprite_index = crouch_bs;
	}
	image_speed = 1;
}