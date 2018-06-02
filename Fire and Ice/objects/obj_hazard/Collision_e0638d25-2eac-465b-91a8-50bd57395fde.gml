/// @description Handles damage
// You can write your code in this editor
with(obj_player){
	if(!hit && !invincible){
		currentHealth -= 10;
		hit = true;
		invincible = true;
		hurtMode();
	}
}
image_blend = c_purple;
depth = -10001;
		