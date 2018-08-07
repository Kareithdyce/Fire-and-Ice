/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(!point_in_circle(obj_player.x, obj_player.y,x, y, radius)){
	enemy_run(enemy);
}else{
	enemy_idle(enemy);
}