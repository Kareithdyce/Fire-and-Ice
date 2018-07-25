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
		
	image_index = 0;
	image_speed = 1;
	attacking = true;
	//attack_speed = 0;
}



