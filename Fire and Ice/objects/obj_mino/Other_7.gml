/// @description Insert description here
// You can write your code in this editor
if(ready){
	if(sprite_index == spr_mino_die){
		instance_destroy();
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
		with(obj_boss_batte){
			instance_destroy();
		}
	}
	else if(sprite_index == spr_mino_atk1 || sprite_index == spr_mino_atk2){
	//	ScreenShake(10, 60);
		enemy_idle(enemy);
	}
}