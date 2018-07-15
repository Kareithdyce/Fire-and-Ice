/// @desc horizontal_collision(is_enemy)
var wall = instance_place(x+hspd, y, obj_walls);
if (wall != noone){
	//if(!wall.jump_thru) {
	    raise = 0;
		//while(!place_meeting(x+hspd, y-raise, obj_walls) && raise <= abs(hspd)){
		//	raise += 1;
		//}
		if(place_meeting(x+hspd, y-raise, obj_walls)){
			while (!place_meeting(x + sign(hspd), y, obj_walls)) {
			    x += sign(hspd);
			}
			hspd = 0;
			return true;
		}
	//}
	else{
	y -= raise; 
	}
}
return false;