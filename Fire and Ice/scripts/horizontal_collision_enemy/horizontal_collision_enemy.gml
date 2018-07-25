/// @desc horizontal_collision_enemy()
var eExit = false; 
if(place_meeting(x + hspd, y, obj_wall)) {
    while (!eExit && !place_meeting(x - dirc, y, obj_wall)) {
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