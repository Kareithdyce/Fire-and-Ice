/// @description Insert description here
// You can write your code in this editor
visible = true;
vspd += grav;
if(vspd >= gravMax){
	vspd = gravMax;
}
if(blinking){
	image_alpha = blink % 4;
	blink++;
	
}
hspd = dirc*movespeed;
vertical_collision();
y += vspd;
if(vspd != 0){
	if(!destroy){
		destroy = true;
		alarm[0] = room_speed * 1.5;
	}
	image_angle++;
	horizontal_collision();
	if(!hit_wall){
		x += hspd;
	}
	if(hspd == 0){
		hit_wall = true;
	}
}
if(place_meeting(x,y,obj_wall)){
	instance_destroy();
}