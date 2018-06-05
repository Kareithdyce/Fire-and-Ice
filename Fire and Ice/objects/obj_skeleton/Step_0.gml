/// @description Waking up
// You can write your code in this editor
event_inherited();
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
if(can_be_hurt){
	if(player_seen){
		sprite_index = spr_skeleton_react;
	}
	else if(!hit){
		sprite_index = spr_skeleton_idle;
	}	
	
}	
if(hit){
	sprite_index = spr_skeleton_hit;
	image_index = 0;
	//x-= 10;
	hit = false;
	invincible = true;
}

else if(invincible && image_index >= image_number-1){
	invincible = false;
	sprite_index = spr_skeleton_idle;
}