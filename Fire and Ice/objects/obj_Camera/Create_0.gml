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
//setup for layers
forestlayer1 = undefined;
forestlayer2 = undefined;
forestlayer3 = undefined;
forestlayer4 = undefined;
forestlayer5 = undefined;
forestlayer6 = undefined;
forestlayer7 = undefined;
forestlayer8 = undefined;
forestlayer9 = undefined;
forestlayer10 = undefined;
forestlayer11 = undefined;



if(layer_exists("Forest1")){
forestlayer1 = layer_get_id("Forest1");	
}

if(layer_exists("Forest2")){
forestlayer2 = layer_get_id("Forest2");	
}
if(layer_exists("Forest3")){
forestlayer3 = layer_get_id("Forest3");	
}
if(layer_exists("Forest4")){
forestlayer4 = layer_get_id("Forest4");	
}
if(layer_exists("Forest5")){
forestlayer5 = layer_get_id("Forest5");	
}
if(layer_exists("Forest6")){
forestlayer6 = layer_get_id("Forest6");	
}
if(layer_exists("Forest7")){
forestlayer7 = layer_get_id("Forest7");	
}

if(layer_exists("Forest8")){
forestlayer8 = layer_get_id("Forest8");	
}
if(layer_exists("Forest9")){
forestlayer9 = layer_get_id("Forest9");	
}
