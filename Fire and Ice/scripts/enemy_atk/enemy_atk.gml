if(!dead){
	if(argument[0] == "skeleton"){
		if(awake && !revive){
			sprite_index = spr_skeleton_attack;
			image_index = 0;
			image_speed = 1;
			//invincible = true;
			attacking = true;
			}
	}
	if(argument[0] == "slime"){
		if(mode == 1){
			sprite_index = spr_slime_attack;
		}else if(mode == 2){
			sprite_index = spr_slime_fire_attack;
		}
		audio_play_sound(s_slime_atk,100,false);
		image_index = 0;
		image_speed = 1;
		attacking = true;
		//attack_speed = 0;
	}

	if(argument[0] == "wasp"){
		sprite_index = spr_wasp_atk;
		image_index = 0;
		image_speed = 1;
		//invincible = true;
		attacking = true;
	}


	if(argument[0] == "mino"){
		sprite_index = spr_mino_atk1;
		sprite_index = spr_mino_atk2;
	}

}

