/// Checks vertical collision

if (place_meeting(x, y + vspd, obj_walls)) {
        while (!place_meeting(x, y + sign(vspd), obj_walls)) {
            y += sign(vspd);
        }
        vspd = 0;
        return true;
}
