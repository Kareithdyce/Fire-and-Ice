/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(dead && image_index >= image_number -1){
	instance_destroy(self);
}

if(attacking){
	if(!triggered){
		triggered = true;
		//hp = 100;
		
		with(instance_create_layer(x, y, layer_create(-1000), obj_slime_hitbox)){
			user = other;
		}
	}
	if(image_index <= 3){
		image_xscale *= sizeMod;
		image_yscale *= sizeMod;
		hspd = -dirc * attack_speed;
		depth = -2;
	}
	else{
		image_xscale /= sizeMod;
		image_yscale /= sizeMod;
		hspd = -dirc * attack_speed/4;
	}
	//vspd += grav;
	//enemy_movement();
}
else{
	triggered = false;
}
