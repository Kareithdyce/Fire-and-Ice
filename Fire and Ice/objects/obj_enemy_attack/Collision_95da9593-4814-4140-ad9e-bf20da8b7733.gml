/// @description Insert description here
// You can write your code in this editor
if(!obj_player.hit && !obj_player.invincible && !obj_player.dead && !obj_player.sliding  /*&& !obj_player.atk*/){
	obj_player.currentHealth -= damage;
	obj_player.hit = true;
	obj_player.invincible = true;
	with(obj_player){
		hurtMode();
	}
}
