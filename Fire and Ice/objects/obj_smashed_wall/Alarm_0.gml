/// @description Start Blinking
// You can write your code in this editor
if(instance_exists(obj_rockmaker)){
	alarm[1] = room_speed * .5;
}else{
	alarm[1] = room_speed * 3;
}
blinking = true;
