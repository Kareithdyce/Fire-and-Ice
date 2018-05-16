///Handles movement for the player
//Horizontial Movement
if(!hit){
	if(!sliding){
	move = key_left + key_right;
	crouching  = (key_crouch || sprite_index == crouch_b);
	if(move != 0){
		dirc = move;
		image_xscale = dirc;
	}
		if (vspd == 0 && !key_crouch){
			if(move == 0){
				idleMode(sprite_index);
				}
			else{
				walkMode(sprite_index);
				}
			if(sprite_index != crouch_b){
				 crouching = false;
			}
		}


	   
		hspd = move * movespeed;

		//Vertical Movement
		if(!crouching){
			if (place_meeting(x, y + 1, obj_walls)){
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

		if(crouching && vspd == 0){
			if(key_action){
				crouchMode(sprite_index);
				sliding = true;
				alarm[0] = room_speed * .25;
				hspd = 6 * dirc;
			}
			else{
				crouchMode(sprite_index);
				hspd = 0;
			}
		}
	}
}
else{
	hspd = 0;
}
//Applies Gravity
if !(place_meeting(x, y + 1, obj_walls)){
		vspd += grav;
}


//Collisions

if(sprite_index != crouch_b){
	horizontal_collision();
	x += hspd;
	vertical_collision();
	y += vspd;
}