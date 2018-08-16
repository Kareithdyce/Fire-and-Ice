/// @description Fliers AI
// You can write your code in this editor

// Inherit the parent event
if(!attacking && player_seen && !dead){
	if(abs(x - obj_player.x) > 2){
		dirc = sign(x - obj_player.x);
	}
}

if(!hit && !dead && !attacking){
	//Not Seen
	if(!player_seen){
		movespeed = 0;
		hoverspeed = 0;
		if(point_in_circle(obj_player.x, obj_player.y,x, y, radius*4) && dirc == sign(x - obj_player.x)){	
			player_seen = true;	
			movespeed = -fly_speed;
		}
		else{
			fly_cycle();
		}
	}
	//Seen
	else{
		movespeed = 0;
		if(y - obj_player.y < -1 &&  place_meeting(x,y+float_speed+1,obj_wall) || y - obj_player.y > float_speed  &&  place_meeting(x,y-float_speed-1,obj_wall)){
			player_seen = false;
			hoverspeed = 0;
		}
		else if(x - obj_player.x < fly_speed &&  place_meeting(x+fly_speed+1,y,obj_wall) || x - obj_player.x > fly_speed  &&  place_meeting(x-fly_speed-1,y,obj_wall)){
			player_seen = false;
			movespeed = 0;
		}
		else if(!point_in_circle(obj_player.x, obj_player.y,x, y, radius*5)){	
			player_seen = false;	
		}
		else if(point_in_circle(obj_player.x, obj_player.y,x, y, radius)){
			movespeed = 0;
			enemy_atk(enemy);
		}
		else{
			if(abs(x - obj_player.x) > fly_speed){
				movespeed = -fly_speed;
			}
			else{
				movespeed = 0;
			}
			if(abs(y - obj_player.y) > float_speed){
				hoverspeed = float_speed * sign(obj_player.y - y);
				
			}
			else{
				hoverspeed = 0;
			}
			enemy_run(enemy);
			}	
		}
}


if(attacking && !point_in_circle(obj_player.x, obj_player.y,x, y, radius)){
	attacking = false;
	player_seen = false;
}
event_inherited();