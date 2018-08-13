/// @desc idleMode(sprite)
/// @arg sprite 
if (argument[0] == walk_b || argument[0] == fall_b || argument[0] == crouch_b || argument[0] == slide_b || argument[0] == jump_b1){
	if((argument[0] == crouch_b || argument[0] == slide_b) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_b;
		crouched = true;
	}else{
		sprite_index = idle_b; 
	    image_speed = 1;  
		crouched = false;
	}
}

if (argument[0] == walk_bs || argument[0] == fall_bs || argument[0] == crouch_bs || argument[0] == slide_bs || argument[0] == jump_bs1){
	if((argument[0] == crouch_bs || argument[0] == slide_bs) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_bs;
		crouched = true;
	}else{
		sprite_index = idle_bs; 
	    image_speed = 1;  
		crouched = false;
	}
}


if (argument[0] == walk_f || argument[0] == fall_f || argument[0] == crouch_f || argument[0] == slide_f || argument[0] == jump_f1){
	if((argument[0] == crouch_f || argument[0] == slide_f) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_f;
		crouched = true;
	}else{
		sprite_index = idle_f; 
	    image_speed = 1;  
		crouched = false;
	}
}
//Playing landing sound
if((argument[0] == fall_f || argument[0] == fall_b || argument[0] == fall_bs || argument[0] == jump_f1 || argument[0] == jump_b1 || argument[0] == jump_bs1 || argument[0] == jump_f2 || argument[0] == jump_b2 || argument[0] == jump_bs2) && hascontrol){
	audio_play_sound(s_land, 100, false);
}