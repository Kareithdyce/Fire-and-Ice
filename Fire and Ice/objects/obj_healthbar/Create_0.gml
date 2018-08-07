/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
instance_create_depth(x,y+2,-1000,obj_health);
if(obj_player.maxMana > 0){
	image_index = 1;
	instance_create_depth(x,y+2,-1000,obj_mana);	
}
