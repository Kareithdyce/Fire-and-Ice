/// @description I-frames
// You can write your code in this editor
if(!dead){
	switch(enemy){
		case "skeleton":
			sprite_index = spr_skeleton_idle;
			break;
		case "slime":
			sprite_index = spr_slime_idle;
			break;
	}
	attacking = false;
	dirc = obj_player.dirc;
	invincible = false;
	
}