if(argument[0] == "skeleton"){
	if(awake && !revive){
		sprite_index = spr_skeleton_walk;
		image_speed = 1;
	}
}

if(argument[0] == "slime"){
	if(mode == 1){
		sprite_index = spr_slime_move;
	}
	else if(mode == 2){
		sprite_index = spr_slime_fire_move;
	}
	image_speed = 1;
}

if(argument[0] == "mino"){
	sprite_index = spr_mino_run;
	image_speed = 1;
	
}
