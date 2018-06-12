/// @description Insert description here
// You can write your code in this editor
event_inherited();
	

if(!player_seen){
	if(x-obj_player.x <= sight*dirc && y-obj_player.y > sight/3 * dirc){
		player_seen = true;
		dirc = sign(x-obj_player.x);
	}
}
else if(abs(x-obj_player.x) > sight*3 || y-obj_player.y <= sight/3 * dirc){
		player_seen = false;
}
if(player_seen){
	dirc = sign(x-obj_player.x);
}
/*
else{
	//image_speed = 1;
}
*/