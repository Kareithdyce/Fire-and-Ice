/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(dead && image_index >= image_number -1){
	instance_destroy(self);
}

if(attacking){
	vspd += grav;
	if(image_index <= 3){
		image_xscale *= sizeMod;
		image_yscale *= sizeMod;
		depth = -2;
	}
	else if(image_index < 3 && image_index > 4 ){
		hspd = -dirc * attack_speed;
		image_xscale *= sizeMod;
		image_yscale *= sizeMod;
		
	}
	else{
		image_xscale /= sizeMod;
		image_yscale /= sizeMod;
		hspd = -dirc * attack_speed;
	}
	enemy_movement();
}

