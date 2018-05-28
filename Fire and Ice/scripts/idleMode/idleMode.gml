/// @desc idleMode(sprite)
/// @arg sprite 
if (argument[0] == walk_b || argument[0] == fall_b || argument[0] == crouch_b || argument[0] == slide_b || argument[0] == jump_b1){
	if((argument[0] == crouch_b || argument[0] == slide_b) && place_meeting(x,y-8,obj_walls)){
		sprite_index = crouch_b;
	}else{
		sprite_index = idle_b; 
	    image_speed = 1.5;  
	}
}

/*   
if (argument[0] = ph_walk){
    sprite_index = ph_idle; 
    image_speed = .2;
}

if (argument[0] = spr_sb_walk){
    sprite_index = spr_sb_idle; 
    image_speed = .2;
}
*/
