/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(dead && sprite_index == spr_wasp_die){
	if(image_index >= image_number - 1){
		image_speed = 0;
		sprite_index = spr_wasp_die;
		image_index = image_number -1;
	}
	ready = true;
}
if(ready){
	grav = .3;
	if(vspd > gravMax){
		vspd = gravMax;
	}
	vspd += grav;
	vertical_collision()
	if(vspd == 0 && image_speed == 0){
		instance_destroy();
	}
	y += vspd;

}
