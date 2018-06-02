/// @description Movement
// You can write your code in this editor
atk = pAttack1 || pAttack2 || pAttack3;
if(!pause){
grounded = place_meeting(x,y+1,obj_walls) || place_meeting(x,y+2,obj_falling) ;
if(hascontrol){
	getInput();	
}
	movement();
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

}


if(pAttack1){
	if(image_index != 0 && image_index < image_number && !key_action){
		getInput();
	}
	else if(key_action && image_index >= image_number-2){
		actionMode(sprite_index);
		pAttack1 = false;
	}
	else if (image_index >= image_number){
		idleForm();
		pAttack1 = false;
		hascontrol = true;
	}
}

if(pAttack2){
	if(image_index != 0 && image_index < image_number && !key_action){
		getInput();
	}
	else if(key_action && image_index >= image_number-2){
		actionMode(sprite_index);
		pAttack2 = false;
	}
	else if (image_index >= image_number){
		idleForm();
		pAttack2 = false;
		hascontrol = true;
	}
}




if(pAttack3 && image_index >= 5){
	idleForm();
	pAttack3 = false;
	hascontrol = true;
}
//Debug
if(debug = true){
var tempY = instance_place(x,y+1, obj_walls);
if(tempY != noone){
	diffY = (y-tempY.y)+1;
	if(diffY >= 1.5){
	y+= .1;	
	}
}
else{
	diffY = -1;
}
var tempX = instance_place(x+1,y, obj_walls);
if(tempX != noone){
	diffX = (tempX.x - x) + 6;
}
else{
	diffX = -1;
}
}


/*
if(sprite_index == sword_draw_bs && image_index >= 3){
	sprite_index = idle_bs2;
	hascontrol = true;	
}


if(sprite_index == sword_sheath_bs && image_index >= 3){
	sprite_index = idle_bs;
	hascontrol = true;
	
}

*/