
if(place_meeting(x + hspd, y, obj_walls)) {
    while (!place_meeting(x + sign(hspd), y, obj_walls)) {
        x += sign(hspd);
    }
    hspd = 0;
    return true;
}