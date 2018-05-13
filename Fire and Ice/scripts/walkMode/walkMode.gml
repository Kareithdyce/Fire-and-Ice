/// @desc walkMode(sprite)
/// @arg sprite 
if (argument[0] == idle_b || argument[0] == fall_b || argument[0] == crouch_b || argument[0] == slide_b){
    if((argument[0] == crouch_b || argument[0] == slide_b) && place_meeting(x,y-8,obj_walls)){
		sprite_index = argument[0];
	}
	else{
		sprite_index = walk_b; 
	    image_speed = .6;   
	}
}
