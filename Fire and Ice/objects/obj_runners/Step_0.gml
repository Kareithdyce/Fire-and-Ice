/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(!dead){
	if(!player_seen){
		if((abs(x-obj_player.x) <= sight) && (abs(y-obj_player.y) <= sight/3)){
			if(sign(dirc) == sign(x-obj_player.x)){
				player_seen = true;
				dirc = sign(x-obj_player.x);
			}
		}
	}
	else{
		if((abs(x-obj_player.x) > sight*2) || (abs(y-obj_player.y) > sight)){
			player_seen = false;
		}
		dirc = sign(x-obj_player.x);
	}
}