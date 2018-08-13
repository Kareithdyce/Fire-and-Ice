/// @description Normal AI
// You can write your code in this editor
if(hp <= 0 && !dead){
	dead = true;
	image_blend = true_color;
	with(obj_player){
		loseControl();
		boss_kill = true;
	}
	enemy_dead(enemy);
}
if(!dead){
if(invincible){
	image_alpha = blink % 4;
	blink++;
}else{
	image_alpha = 1;
}

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
	
	if(!intro && !attacking && !resting){
		//slam
		if(!point_in_rectangle(obj_player.x, obj_player.y,x-vrange,sprite_height,x+vrange,y+10) && point_in_rectangle(obj_player.x, obj_player.y,x-vrange-20,sprite_height,x+vrange+20,y+10)){
			attacking = true;
			hspd = 0;
			sprite_index = spr_mino_atk1;
			image_index = 0;	
		}
		//slam bc too far
		else if(!point_in_rectangle(obj_player.x, obj_player.y,x-(vrange*3),sprite_height,x+(vrange*3),y+10)){		
			hspd = 0;
			attacking = true;
			sprite_index = spr_mino_atk1;
			image_index = 0;
			image_speed = .75;
		}
		//Run at player
		else if(!point_in_rectangle(obj_player.x, obj_player.y,x-vrange,sprite_height,x+vrange,y+10) && point_in_rectangle(obj_player.x, obj_player.y,x-(vrange*3),sprite_height,x+(vrange*3),y+10)){
			hspd = movespeed;
			enemy_run(enemy);
		}
		
		
		else{
			sprite_index = spr_mino_atk2;
			image_index = 0;
			image_speed = .75;
			attacking = true;
			hspd = 0;
		}
		
		
	}
	
	//Shakes the screen
	if(sprite_index == spr_mino_atk1 && (image_index >= 5 && image_index < 6) && !rocked){
		rocked = true;
		ScreenShake(10, 60);
		with(obj_rockmaker){
			if(!spawn){
				spawn = true;
			}
		}
	}
	//Hitboxes
	if(attacking){
		if(!triggered){
			if(sprite_index == spr_mino_atk1 && (image_index >= 5 && image_index < 8)){
				triggered = true;
				with(instance_create_layer(x + (75* dirc),y, layer_create(-1000), obj_hitbox_mino)){
					user = other;
					sprite_index = spr_mino_hitbox1;
					damage = user.atk;
				}
			}
			if(sprite_index == spr_mino_atk2 && (image_index >= 5 && image_index < 8)){
				triggered = true;
				with(instance_create_layer(x + (dirc * 29), y - 20, layer_create(-1000), obj_hitbox_mino)){
					user = other;
					sprite_index = spr_mino_hitbox2;
					damage = other.atk;
				}
			}	
		}
		
	}
}

if(!dead && dirc != 0 && ready){
	if(obj_player.x - x != 0 && !attacking){
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