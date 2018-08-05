/// @description Insert description here
// You can write your code in this editor
with(obj_falling){
	falling = true;
}
with(obj_rockmaker){
	instance_destroy();
}
with(obj_player){
	if(boss_kill){
	boss_kill = false;
	sprite_index = sword_sheath_bs;
	image_index = 0;
	}
}