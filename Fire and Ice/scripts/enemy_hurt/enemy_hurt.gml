if(!invincible){
	if(argument[0] == "skeleton"){
		if(awake && !revive){
			invincible = true;
			hp -= obj_player.atkpower;
			sprite_index = spr_skeleton_hit;
			image_speed = 1;
			image_index = 0;
			hit = false;
			player_seen = true;
			alarm[0] = room_speed/3;
		}
	}
	if(argument[0] == "slime"){
		sprite_index = spr_slime_hit;
		hp -= obj_player.atkpower;
		image_speed = 1;
		image_index = 0;
		hit = false;
		invincible = true;
		player_seen = true;
		alarm[0] = room_speed*.4;
	}
	hspd = obj_player.dirc*(hitspeed + obj_player.knockback); 
	horizontal_collision(true);
	x+= hspd;
	hspd = 0;
}