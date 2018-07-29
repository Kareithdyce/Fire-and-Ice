/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;
image_xscale = obj_player.dirc;
if(!obj_player.is_smashing){
	instance_destroy(self);
}