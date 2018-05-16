/// @description 
// You can write your code in this editor
with(obj_player){
	if(!hit && !invincible){
		hit = true;
		invincible = true;
		if(has_sword){
			sprite_index = hurt_b2;
		}
		else{
			sprite_index = hurt_b1;
		}
		alarm[1] = room_speed * .5;
		alarm[2] = room_speed * 1.5;
	}
}