/// @desc walkMode(sprite)
/// @arg sprite 
if (argument[0] == idle_b || argument[0] == fall_b || argument[0] == crouch_b || argument[0] == slide_b || argument[0] == jump_b1){
    if((argument[0] == crouch_b || argument[0] == slide_b) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_b;
	}
	else{
		sprite_index = walk_b; 
	    image_speed = 1;   
	}
}

if (argument[0] == idle_bs || argument[0] == fall_bs || argument[0] == crouch_bs || argument[0] == slide_bs || argument[0] == jump_bs1){
    if((argument[0] == crouch_bs || argument[0] == slide_bs) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_bs;
	}
	else{
		sprite_index = walk_bs; 
	    image_speed = 1;   
	}
}
