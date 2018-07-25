/// Checks vertical collision
//var wall = ;
if (place_meeting(x, y + vspd, obj_wall)) {
	while (!place_meeting(x, y + sign(vspd), obj_wall)) {
        y += sign(vspd);
    }
	vspd = 0;
    return true;
}
return false;	