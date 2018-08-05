/// @description Insert description here
// You can write your code in this editor
vspd += grav;
if(vspd > gravMax){
	grav = gravMax;
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
	x += hspd;
}
