///Handles movement for the player
//Horizontial Movement
if(!hit){
	if(!sliding){
	move = key_left + key_right;
	crouching  = (key_crouch || (sprite_index == crouch_b || sprite_index == crouch_bs));
	if(move != 0){
		dirc = move;
		image_xscale = dirc;
	}
		if ((grounded) && !key_crouch){
			if(move == 0){
				idleMode(sprite_index);
				}
			else{
				walkMode(sprite_index);
				}
			if(sprite_index != crouch_b && sprite_index != crouch_bs){
				 crouching = false;
			}
		}


	   
		hspd = move * movespeed;

		//Vertical Movement
		if(!crouching){
			if (grounded){
			    number_of_jumps = jumps_max;
			    is_jumping = false;
				vspd = 0;	
			}
			if (key_jump_release && vspd < 0) {
			    vspd = 0;
			}

			if (number_of_jumps > 0 && key_jump) {
				jumpMode(sprite_index);
			    vspd = key_jump * -jumpspeed;
			    number_of_jumps--;
			    is_jumping = true;
			}
		
		}
	

		//Crouching and sliding

		if(crouching && grounded){
			if(key_action){
				crouchMode(sprite_index);
				sliding = true;
				alarm[0] = room_speed * .25;
				hspd = 6  * dirc;
			}
			else{
				crouchMode(sprite_index);
				//hspd = 0;
			}
		}
		else if(key_action && hascontrol){
			actionMode(sprite_index);
		}
			
	}
}
else{
	hspd = 0;
}
//Applies Gravity
vspd += grav;
if(vspd > gravMax){
	vspd = gravMax;
}
		

//Aerial Smash
if(is_smashing && sprite_index != sword_air3_bs2){
	hspd = 0;
	if(image_index >= image_number-1){
		image_index = 2;
	}
	vspd = gravMax;
	if(grounded){
	vspd = 0;
	//Make sure that the character is not crouching at the end of the attack.
	key_crouch = false;
	idleForm();
	}
}
if(sprite_index == sword_air3_bs2){
	if(image_index >= image_number-1){
	hascontrol = true;
	is_smashing = false;
	atkpower = normpower;
	idleForm();
	}
}


//Attacking Movement

if(atk && !aerial){
	if(pAttack3 && image_index == 2){
		hspd = dirc*movespeed*4;
	}
	else{
		hspd = 0;
	}
	vspd = 0;
}

//Collisions
var float = instance_place(x,y+1, obj_falling)
if(float != noone && !key_jump && !float.falling){
	vplat = true;
	y += float.vspd;	
	vspd = 0;
	if(!place_meeting(x,y, obj_falling)){
		y+= 1;
	}
}
else{		
vplat = false;
vertical_collision();
y += vspd;
hTouch = horizontal_collision();
}
	
if(sprite_index != crouch_b && sprite_index != crouch_bs){
	x += hspd;
}	
	