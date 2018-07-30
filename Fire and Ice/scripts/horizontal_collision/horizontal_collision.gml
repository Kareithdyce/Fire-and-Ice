/// @desc horizontal_collision(is_enemy)
var wall = instance_place(x+hspd, y, obj_wall);
if (wall != noone){
	if(!wall.jump_thru || place_meeting(x+hspd, y, obj_walls)){
		raise = 0;
		while(place_meeting(x+hspd,y-raise,obj_wall) && raise <= abs(hspd)){
			raise++;		
		}
		if(place_meeting(x+hspd, y-raise, obj_wall)){			
			while (!place_meeting(x + sign(hspd), y, obj_wall)) {
				x += sign(hspd);
			}
			hspd = 0;
			return true;
		}
		else {
			y-= raise;
		}
	}
}
lower = 0;
while(!place_meeting(x+hspd,y+lower+1,obj_wall) && lower <= abs(hspd)){
			lower++;		
}		
if(place_meeting(x+hspd, y+lower+1, obj_wall)){
	y+= lower;
}

return false;
			