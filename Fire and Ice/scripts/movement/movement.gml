///Handles movement for the player
//Horizontial Movement
if(!sliding){
move = key_left + key_right;
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
	}


	   
	hspd = move * movespeed;

	//Vertical Movement
	if(!key_crouch){
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

	if(key_crouch && vspd == 0){
		if(key_action){
			crouchMode(sprite_index);
			sliding = true;
			alarm[0] = room_speed * .25;
			hspd = 4 * dirc;
		}
		else{
			crouchMode(sprite_index);
			hspd = 0;
		}
	}
}

//Applies Gravity
if !(place_meeting(x, y + 1, obj_walls)){
		vspd += grav;
}


//Collisions
if(sprite_index != crouch_b){
	horizontal_collision();
	x += hspd;
}	
	vertical_collision();
	y += vspd;