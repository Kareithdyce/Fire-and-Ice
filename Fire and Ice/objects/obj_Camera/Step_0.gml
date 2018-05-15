/// @description Update Camera
//Update destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}else{
	instance_destroy(self);
}
//Update object position
if((xTo - x > view_h_half * 2 )|| (yTo - y > view_w_half * 2)){
	x = xTo;
	y = yTo;
}
else{
	x += (xTo - x) / 25;
	y += (yTo - y) / 25;
}
x = clamp(x,view_w_half,room_width - view_w_half);
y = clamp(y,view_h_half,room_height - view_h_half);

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
