/// @description All behavior for runner type enemies.
// You can write your code in this editor
event_inherited();
if(!dead && active){
xDist = x-obj_player.x;
yDist = y-obj_player.y;
if(image_index >= image_number-1 && attacking){
	image_xscale = dirc;
	image_yscale = 1;
	depth = 0;
	enemy_idle(enemy)
	alarm[2] = room_speed * cool_down;
	attacking = false;	
	active = false;
	movespeed = 0;
}
else{
	if(!player_seen){
		if((abs(xDist) <= xSight) && (yDist < ySight && yDist > sight_range) && (sign(dirc) == sign(xDist)) && !horizontal_collision()){
				player_seen = true;
				dirc = sign(xDist);
		}
		else{
			walk_cycle();
		}
	}
	
	else if(!hit && !attacking){
		if(abs(xDist) >= xSight* 1.5 || (yDist >= ySight || yDist <= sight_range) || horizontal_collision()){
			player_seen = false;
		}
		
		else if((abs(xDist) <= attack_range) && (yDist < ySight && yDist > sight_range) && !invincible){
				hspd = attack_speed * -dirc;
				enemy_atk(enemy);
		}
		else if(!horizontal_collision()){
			enemy_run(enemy);
			movespeed = run_speed;
		}	
	dirc = sign(xDist);
	}
}	
}