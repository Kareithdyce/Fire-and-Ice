/// @description Insert description here
// You can write your code in this editor
with(obj_player){
	if(!hit && !invincible && !dead && !sliding && other.can_hurt /*&& !atk*/){
		currentHealth -= other.damage;
		hit = true;
		invincible = true;
		loseControl();
		hurtMode();

	}
	
}