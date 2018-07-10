/// @description All behavior for runner type enemies.
// You can write your code in this editor
event_inherited();
if(!dead){
xDist = x-obj_player.x;
yDist = y-obj_player.y;
if(image_index >= image_number-1 && attacking){
	attacking = false;
	//invincible = false;	
}

	if(!player_seen){
		
		if((abs(xDist) <= sight) && (abs(yDist) <= sight/4)){
			if(sign(dirc) == sign(xDist)){
				player_seen = true;
				dirc = sign(xDist);
			}
		}
		else{
			walk_cycle();
		}
	}
	
	else if(!hit && !attacking){
		if((abs(xDist) > sight*2) || (abs(yDist) > sight)){
			player_seen = false;
		}
		
		else if(abs(xDist) <= range){
			if(sign(dirc) == sign(xDist) && (abs(yDist) <= sight/4) && !invincible){
				hspd = 0;
				enemy_atk(enemy);
			}
		}
		else if(!horizontal_collision()){
			enemy_run(enemy);
			movespeed = run_speed;
		}	
	dirc = sign(xDist);
	}
	
}