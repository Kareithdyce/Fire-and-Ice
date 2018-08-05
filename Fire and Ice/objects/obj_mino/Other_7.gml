/// @description Insert description here
// You can write your code in this editor
if(ready){
	if(sprite_index == spr_mino_die){
		image_index = image_number-1;
		image_speed = 0;
		instance_create_depth(x+(20*dirc),y-(sprite_height/2-20), -2, obj_final_hit);
		obj_final_hit.boss = self;
	}
	
	else if(sprite_index == spr_mino_idle && resting){
		resting = false;
		image_speed = 1;
		enemy_idle(enemy);
	}
	else if(sprite_index == spr_mino_jumpR){
		sprite_index = spr_mino_jump;
		vspd = jumpspeed;
	}

	else if(sprite_index == spr_mino_idle && intro){
		sprite_index = spr_mino_atk2;
	}

	else if(sprite_index == spr_mino_atk2 && intro){
		sprite_index = spr_mino_idle;
		intro = false;
		obj_player.hascontrol = true;
		obj_Camera.follow = obj_player;
		with(obj_boss_battle){
			instance_destroy();
		}
	}
	else if(sprite_index == spr_mino_atk1 || sprite_index == spr_mino_atk2){
		image_speed = 0.5;
		rocked = false;
		resting = true;
		attacking = false;
		enemy_idle(enemy);
	}
	else if(sprite_index == spr_mino_hurt){
		enemy_idle(enemy);
		hit = false;
	}
}