/// @description Insert description here
// You can write your code in this editor
event_inherited();
xDist = x-obj_player.x;
yDist = y-obj_player.y;
if(!dead){
	if(!player_seen){
		
		if((abs(xDist) <= sight) && (abs(yDist) <= sight/3)){
			if(sign(dirc) == sign(xDist)){
				player_seen = true;
				dirc = sign(xDist);
			}
		}
		else{
			enemy_idle(enemy);
		}
	}
	
	else if(!hit && !attacking){
		if((abs(xDist) > sight*2) || (abs(yDist) > sight)){
			player_seen = false;
		}
		
		else if(abs(xDist) <= range){
			if(sign(dirc) == sign(xDist)){
				enemy_atk(enemy);
			}
		}
		else{
			enemy_run(enemy);
		}
	}
	dirc = sign(xDist);
}