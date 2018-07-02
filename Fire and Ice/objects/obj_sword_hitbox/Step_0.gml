/// @description Insert description here
// You can write your code in this editor
if(!obj_player.atk || ((obj_player.pAttack1 || obj_player.pAttack2) && obj_player.image_index >= obj_player.image_number-4)){
	instance_destroy(self);
}
x = obj_player.x;
y = obj_player.y;
image_xscale = obj_player.dirc;