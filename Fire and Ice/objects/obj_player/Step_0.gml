/// @description Movement
// You can write your code in this editor
if(room == rm_gameOver){
	hascontrol = false;
	visible = false;
}
if(!pause && !dead){
	atk = pAttack1 || pAttack2 || pAttack3 || aerial;
	grounded = on_ground || place_meeting(x,y+1,obj_falling) ;
	if(hascontrol){
		getInput();	
	}
	movement();
	
	if(currentHealth > maxHealth) {  
		currentHealth = maxHealth;
	}
	
	//Temporary hopefully
	if(currentHealth <= 0 && demo){
		currentHealth = 1;
	}else if (currentHealth <= 0) {
		sprite_index = death_bs;
		dead = true;
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
	}
	else{
		image_blend = true_color;
		depth = -1;
	}
}

//Attacking

if(atk && !instance_exists(obj_sword_hitbox) && !((pAttack1 || pAttack2) && image_index >= image_number-4)){
	instance_create_depth(x, y, -2, obj_sword_hitbox);
}

if(pAttack1){
	if(image_index != 0 && image_index < image_number && !key_action){
		getInput();
	}
	if(image_index >= image_number-4){
		if(move != 0 && image_index >= image_number-3){
			idleForm();
			walkMode(sprite_index);
			hascontrol = true;
			pAttack1 = false;
		}
		else if(key_action){
			actionMode(sprite_index);
			pAttack1 = false;
		}
	}
	if (image_index >= image_number-1 && pAttack1){
		idleForm();
		pAttack1 = false;
		hascontrol = true;
	}
}

if(pAttack2){
	if(image_index != 0 && image_index < image_number && !key_action){
		getInput();
	}
	if(image_index >= image_number-4){
		if(move != 0 && image_index >= image_number-3){
			idleForm();
			walkMode(sprite_index);
			hascontrol = true;
			pAttack2 = false;
		}
		else if(key_action){
			actionMode(sprite_index);
			pAttack2 = false;
		}
	}
	if (image_index >= image_number-1 && pAttack2){
		idleForm();
		pAttack2 = false;
		hascontrol = true;
	}
}


if(pAttack3) {
	knockback = knockback3;
	if(image_index >= image_number-1){
		atkpower = normpower;
		idleForm();
		pAttack3 = false;
		hascontrol = true;
	}
}
else{
	knockback = 0;
}

if(aerial && image_index >= image_number-1){
	idleForm();
	aerial = false;
	hascontrol = true;	
}

//Prevents player from being to low.
var tempY = instance_place(x,y+1, obj_wall);
	if(tempY != noone){
		diffY = (y-tempY.y)+1;
		if(diffY >= 1.5 && !vplat){
			y-= .1;	
	//image_blend = c_red;
		}
	}
//}
/*
else{
	diffY = -1;
}
if(debug){
var tempX = instance_place(x+1,y, obj_walls);
if(tempX != noone){
	diffX = (tempX.x - x) + 6;
}
else{
	diffX = -1;
}
}
*/
if(form != 0){
	demo = false;
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
if(dead){
	image_alpha = 1;
}

if(dead && image_index >= image_number-1){
	image_speed = 0;
	if(!gameOver){
		alarm[4] = room_speed * 1.5;
		gameOver = true;
	}
}