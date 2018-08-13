/// @desc walkMode(sprite)
/// @arg sprite 
if (argument[0] == idle_b || argument[0] == fall_b || argument[0] == crouch_b || argument[0] == slide_b || argument[0] == jump_b1 || argument[0] == jump_b2){
    if((argument[0] == crouch_b || argument[0] == slide_b) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_b;
	}
	else{
		sprite_index = walk_b; 
	    image_speed = 1;   
	}
}

if (argument[0] == idle_bs || argument[0] == fall_bs || argument[0] == crouch_bs || argument[0] == slide_bs || argument[0] == jump_bs1 || argument[0] == jump_bs2){
    if((argument[0] == crouch_bs || argument[0] == slide_bs) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_bs;
	}
	else{
		sprite_index = walk_bs; 
	    image_speed = 1;   
	}
}


if (argument[0] == idle_f || argument[0] == fall_f || argument[0] == crouch_f || argument[0] == slide_f || argument[0] == jump_f1 || argument[0] == jump_f2){
    if((argument[0] == crouch_f || argument[0] == slide_f) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_f;
	}
	else{
		sprite_index = walk_f; 
	    image_speed = 1;   
	}
}


//Playing landing sound
if(argument[0] == fall_f || argument[0] == fall_b || argument[0] == fall_bs || argument[0] == jump_f1 || argument[0] == jump_b1 || argument[0] == jump_bs1 || argument[0] == jump_f2 || argument[0] == jump_b2 || argument[0] == jump_bs2){
	audio_play_sound(s_land, 100, false);
}