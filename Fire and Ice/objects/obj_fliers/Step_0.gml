/// @description FLiers AI
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!attacking){
	dirc = sign(x - obj_player.x);
}

if(!hit && !dead){
	if(!point_in_circle(obj_player.x, obj_player.y,x, y, radius) && point_in_circle(obj_player.x, obj_player.y,x, y, radius*4)){
		enemy_run(enemy);
	}else{
		enemy_idle(enemy);
	}
}