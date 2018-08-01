/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	with(obj_player){
		currentHealth += other.healing;
	}
	instance_destroy();
}

if(flashing){
	image_alpha = blink % 4;
	blink++;
}
vspd = grav;
vertical_collision();
y+=vspd;
