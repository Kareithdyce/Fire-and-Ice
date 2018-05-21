/// @description Movement
// You can write your code in this editor
grounded = place_meeting(x,y+1,obj_walls);
if(hascontrol){
	getInput();
	movement();
}

if(currentHealth > maxHealth || (currentHealth < maxHealth / 4 && demo)){
	currentHealth = maxHealth;
}
if(invincible){
	image_alpha = blink % 2;
	blink++;
}
else if(blink != 0){
	blink = 0;
	image_alpha = 1;
}
if(vspd > 0 && !vplat){
	fallMode(sprite_index);
}
if(place_meeting(x,y,obj_shadow)){
	image_blend = c_black;
	depth = -101;
}else{
	image_blend = true_color;
	depth = -1;
}
