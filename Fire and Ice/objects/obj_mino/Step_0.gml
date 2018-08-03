/// @description Normal AI
// You can write your code in this editor
if(hp <= 0 && !dead){
	dead = true;
	enemy_dead(enemy);
}

if(!dead && !hit){

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
	
	if(!intro){
	
		//Movement
		if(!point_in_rectangle(obj_player.x, obj_player.y,x-50,sprite_height,x+50,y+10)){
			hspd = movespeed;
			enemy_run(enemy);
		}
	
		//Attacks
	
		else if(sprite_index == spr_mino_atk1 && (image_index >= 5 && image_index < 6)){
			ScreenShake(10, 60);
			//enemy_idle(enemy);
		}
		
		else{
			enemy_idle(enemy);
			hspd = 0;
		}
	}
	
}


if(!dead && dirc != 0 && ready){
	if(obj_player.x - x != 0){
		dirc = sign(obj_player.x- x);
	
	}
	image_xscale = -dirc * 2;
	hspd *= dirc;
	vspd += grav;
	if(vspd > gravMax){
		vspd = gravMax;
	}
	//Collisions
	vertical_collision_enemy();
	y += vspd;
	if(!keep_walking()){
		horizontal_collision_enemy();
		x += hspd;
	}

}