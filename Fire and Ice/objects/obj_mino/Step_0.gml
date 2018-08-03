/// @description Normal AI
// You can write your code in this editor
if(hp <= 0 && !dead){
	dead = true;
	enemy_dead(enemy);
}

if(!dead){

	var tempY = instance_place(x,y+1, obj_walls);
	if(tempY != noone){
		diffY = (y-tempY.y)+1;
		if(diffY >= 1.5){
		y-= .1;	
		}
	}
	
	//Falling 
	if(vspd > grav){
		sprite_index = spr_mino_land;
	}
	else if(vspd == 0 && sprite_index == spr_mino_land){
		enemy_idle(enemy);
	}
	
	
	//Movement
	
	//Attacks
	
	if(sprite_index == spr_mino_atk1 && (image_index >= 5 && image_index < 6)){
		ScreenShake(10, 60);
		//enemy_idle(enemy);
	}
	
}


if(!dead && dirc != 0 && ready){
	image_xscale = -dirc * 2;
	enemy_movement();
}