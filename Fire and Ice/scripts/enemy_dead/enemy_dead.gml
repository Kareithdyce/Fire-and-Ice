if(argument[0] == "skeleton"){
	sprite_index = spr_skeleton_dead;
	image_index = 0; 
	image_speed = 1;
}
if(argument[0] == "slime"){
	if(mode == 1){
		sprite_index = spr_slime_dead;
	}
	else if(mode == 2){
		sprite_index = spr_slime_fire_dead;
	}		
	image_index = 0; 
	image_speed = 1;
}

if(argument[0] == "wasp"){
	sprite_index = spr_wasp_die;
	image_index = 0; 
	image_speed = 1;
}


if(argument[0] == "mino"){
	sprite_index = spr_mino_die;
	image_index = 0; 
	image_speed = 1;
}
