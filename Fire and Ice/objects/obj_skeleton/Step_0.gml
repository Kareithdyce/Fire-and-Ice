/// @description Waking up
// You can write your code in this editor
event_inherited();
if(!dead){
	if(awake){
		if(sprite_index == spr_skeleton){
			sprite_index = spr_skeleton_dead; 
			image_index = image_number - 1; 
			image_speed = -1;
		}
	
		else if(sprite_index == spr_skeleton_dead && image_index == 0){
			revive = true;
		}
		else if(revive){
			sprite_index = spr_skeleton_idle;
			image_speed = 1;
			revive = false;
			can_be_hurt = true;
		}

	}
	if(!awake){
		player_seen = false;
		dirc = -1;
	}
	if(can_be_hurt && !invincible){
		sprite_index = spr_skeleton_idle;
	}

	if(hit){
		sprite_index = spr_skeleton_hit;
		image_index = 0;
		x-= 10;
		hit = false;
		invincible = true;
		alarm[0] = room_speed * .58;
	}

	else if(invincible && image_index >= image_number-1){
		sprite_index = spr_skeleton_idle;
	}
}else{
	if(image_index >= image_number-1 && sprite_index == spr_skeleton_dead){
		image_speed = 0;
	}
	
}