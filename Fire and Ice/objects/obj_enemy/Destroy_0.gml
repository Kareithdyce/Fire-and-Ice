/// @description Spawn pickups
// You can write your code in this editor
random_set_seed(randomize());
var spawn = irandom(99);
if(spawn < 20){
	instance_create_depth(x,y-sprite_height, 0, obj_heart);
}
else if(spawn < 25){
	instance_create_depth(x,y-sprite_height, 0, obj_heartB);	
}