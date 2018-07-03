/// @desc horizontal_collision(is_enemy)
if(place_meeting(x + hspd, y, obj_walls)) {
    while (!place_meeting(x + sign(hspd), y, obj_walls)) {
        x += sign(hspd);
    }
    hspd = 0;
	return true;
}
if(argument_count >= 1){
	if(argument[0]){
		if(place_meeting(x + hspd, y, obj_player)) {
		    while (!place_meeting(x + (10*sign(hspd)), y, obj_player)) {
		        x += sign(hspd);
		    }
		    hspd = 0;
			return true;
		}
	}
}
return false;