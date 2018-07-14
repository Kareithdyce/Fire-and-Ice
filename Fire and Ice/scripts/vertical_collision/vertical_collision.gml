/// Checks vertical collision
var wall = instance_place(x, y + vspd, obj_walls);
if (wall != noone) {
	if(vspd == obj_player.gravMax){
		ScreenShake(10, 60);
	}
	
	if(!wall.jump_thru){	
		while (!place_meeting(x, y + sign(vspd), obj_walls)) {
			y += sign(vspd);
		}
	vspd = 0;
	on_ground = true;
    return true;
	}
	
	if(wall.jump_thru && vspd > 0 && !key_fall_thru){
		if(!place_meeting(x,y,obj_walls)){
			while (!place_meeting(x, y + sign(vspd), obj_walls)){
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