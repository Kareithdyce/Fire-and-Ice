/// @description Movement
// You can write your code in this editor
if(room == rm_gameOver){
	hascontrol = false;
	visible = false;
}

//Boss Killing animation
if(boss_kill){
	sprite_index = idle_bs2;
	image_speed = 1;
	//image_index = 0;
	hascontrol = false;
}

//The animation of the falling into the cave.
if(trapped){
	if(press_any_key()){
		shake =  10;
		count++;
	}
	if(count >= 3){
		count = 0;
		shake = 0;
		image_speed = 1;
	}
}
if(!pause && !dead){
	terrestrial =  (pAttack1 || pAttack2 || pAttack3);
	atk = (terrestrial || aerial || magical);
	
	grounded = on_ground || place_meeting(x,y+1,obj_falling) || place_meeting(x+hspd, y, obj_slope);
	if(hascontrol){
		getInput();	
	}
	
	//Saving
	if(place_meeting(x,y,obj_savepoint)){
		key_action = false;
	}
	
	//Attacking
	player_atk();
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
		image_alpha = blink % 4;
		blink++;
	}
	
	else if(blink != 0){
		blink = 0;
		image_alpha = 1;
	}
	
	if(vspd > 0  && !vplat && !grounded){
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


//Prevents player from being to low.
var tempY = instance_place(x,y+1, obj_walls);
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