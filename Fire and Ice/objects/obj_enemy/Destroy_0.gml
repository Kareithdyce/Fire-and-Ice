/// @description Spawn pickups
// You can write your code in this editor
var spawn = irandom(99);
if(spawn < 15){
	instance_create_depth(x,y-sprite_height, 0, obj_heart);
}
else if(spawn < 20){
	instance_create_depth(x,y-sprite_height, 0, obj_heartB);	
}