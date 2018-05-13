/// @desc crouchMode(sprite)
/// @arg sprite

if (argument[0] == idle_b || argument[0] == walk_b || argument[0] == fall_b || argument[0] == slide_b || argument[0] == crouch_b){
    if(key_action){
		sprite_index = slide_b;
	}
	else{
		sprite_index = crouch_b;
	}
	image_speed = .5;
}