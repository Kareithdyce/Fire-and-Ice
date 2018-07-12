/// @description Waking up
// You can write your code in this editor
if(!revive){
	event_inherited();
}
if(!dead){
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
			player_seen = false;
		}

	}
	if(!awake){
		player_seen = false;
	}
	if(revive){
		dirc = 1;
		movespeed = 0;
	}
}else{
	if(image_index >= image_number-1 && sprite_index == spr_skeleton_dead){
		image_speed = 0;
	}
	
}