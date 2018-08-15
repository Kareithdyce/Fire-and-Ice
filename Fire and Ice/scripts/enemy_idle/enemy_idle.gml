if(!dead){
	if(argument[0] == "skeleton"){
		if(awake && !revive){
			sprite_index = spr_skeleton_idle;
			image_speed = 1;
		}
	}

	if(argument[0] == "slime"){
		if(mode == 1){
			sprite_index = spr_slime_idle;
		}
		else if(mode == 2){
			sprite_index = spr_slime_fire_idle;
		}
		image_speed = 1;
	}

	if(argument[0] == "mino"){
		sprite_index = spr_mino_idle;
	}


	if(argument[0] == "wasp"){
		sprite_index = spr_wasp_idle;
	}
}