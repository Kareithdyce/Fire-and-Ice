/// @description Waking up
// You can write your code in this editor
if(!revive){
	event_inherited();
}
if(!dead){
	if(attacking){
		if(image_index >= 5 && image_index <= 7 && !play){
			audio_play_sound(s_sword2,100,false);
			play = true;
		}
		if(!triggered && image_index >= 7){
			triggered = true;
			play = false;
			with(instance_create_layer(x, y, layer_create(-1000), obj_skeleton_hitbox)){
				user = other;
			}
		}
	}
	else{
		triggered = false;	
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
	if(image_index >= image_number-1 && dead){
		image_speed = 0;
		instance_destroy(self);
	}
	
}
if(dead && !vertical_collision()){
	hspd += grav;
	vertical_collision();
}