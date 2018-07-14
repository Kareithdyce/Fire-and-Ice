/// @description Insert description here
// You can write your code in this editor
 // Inherit the parent event
event_inherited();

if(user.attacking){
	if(user.image_index <=1  || user.image_index >= 4){
		spr_index = spr_slime_hitbox1;
	}
	else{
		sprite_index = spr_slime_hitbox2;
	}
}else{
	instance_destroy(self);
}

