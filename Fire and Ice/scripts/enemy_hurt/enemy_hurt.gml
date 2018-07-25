if(!invincible){
	if(argument[0] == "skeleton"){
		if(awake && !revive){
			invincible = true;
			hp -= obj_player.atkpower;
			sprite_index = spr_skeleton_hit;
			image_speed = 1;
			image_index = 0;
			player_seen = true;
			alarm[0] = room_speed/3;
		}
	}
	if(argument[0] == "slime"){
		if(mode == 1){
			sprite_index = spr_slime_hit;
		}else if(mode == 2){
			sprite_index = spr_slime_fire_hit;
		}
		hp -= obj_player.atkpower;
		image_speed = 1;
		image_index = 0;
		invincible = true;
		player_seen = true;
		alarm[0] = room_speed*.4;
	}
	
	hspd = obj_player.dirc*(hitspeed + obj_player.knockback); 
	horizontal_collision();
	x+= hspd;
	hspd = 0;
}