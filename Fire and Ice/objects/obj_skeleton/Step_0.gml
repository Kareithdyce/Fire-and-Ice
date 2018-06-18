/// @description Waking up
// You can write your code in this editor
event_inherited();
if(image_index >= image_number-1 && sprite_index == spr_skeleton_attack){
		attacking = false;
		invincible = false;
	
}
if(!dead){
	if(sprite_index == spr_skeleton_walk){
		movespeed = awakespeed;
	}
	else{
		movespeed = 0;
	}
	if(awake){
		if(sprite_index == spr_skeleton){
			sprite_index = spr_skeleton_dead; 
			image_index = image_number - 1; 
			image_speed = -1;
		}
	
		else if(sprite_index == spr_skeleton_dead && image_index == 0){
			sprite_index = spr_skeleton_idle;
			image_speed = 1;
			revive = false;
		}

	}
	if(!awake){
		player_seen = false;
		dirc = -1;
	}
}else{
	if(image_index >= image_number-1 && sprite_index == spr_skeleton_dead){
		image_speed = 0;
	}
	
}