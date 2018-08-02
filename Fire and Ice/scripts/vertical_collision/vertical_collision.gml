/// Checks vertical collision
var wall = instance_place(x, y + vspd, obj_wall);
if (wall != noone) {
	if(vspd >= obj_player.gravMax){
		ScreenShake(10, 60);
	}
	
	if(!wall.jump_thru || (wall.jump_thru && place_meeting(x, y + vspd, obj_walls))){	
		while (!place_meeting(x, y + sign(vspd), obj_wall)) {
			y += sign(vspd);
		}
	on_ground = vspd > 0;
    vspd = 0;
	
	return true;
	}
	
	if(wall.jump_thru && vspd > 0 && !key_fall_thru){
		if(!place_meeting(x,y,obj_wall)){
			while (!place_meeting(x, y + sign(vspd), obj_wall)){
			    y += 1;
			}	
		vspd = 0;
		on_ground = true;
		return true;
		}
	}
	
}
on_ground = false;
return false;	