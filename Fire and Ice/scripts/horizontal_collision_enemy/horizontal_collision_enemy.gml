/// @desc horizontal_collision_enemy()
var eExit = false; 
if(place_meeting(x + hspd, y, obj_walls)) {
    while (!eExit && !place_meeting(x - dirc, y, obj_walls)) {
        if(keep_walking()){
			x -= dirc;
		}else{
			eExit = true;
		}
    }
    hspd = 0;
	return true;
}
return false;