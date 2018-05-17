/// @description Setup Camera
cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) * .5;
view_h_half = camera_get_view_height(cam)* .5;
xTo = xstart;
yTo = ystart;
current_room = room;
if(instance_exists(follow)){
	x = follow.x;
	y = follow.y;
	instance_create_depth(x-20,y-view_h_half,-1001, obj_healthbar);
}