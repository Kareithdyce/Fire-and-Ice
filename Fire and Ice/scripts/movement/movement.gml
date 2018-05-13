///Handles movement for the player
//Horizontial Movement
move = key_left + key_right;
if (vspd == 0 && !key_crouch){
	if(move == 0){
		idleMode(sprite_index);
	}
	else{
		walkMode(sprite_index);
		dirc = move;
	}
}


if (move != 0) {
    image_xscale = move;
}   
hspd = move * movespeed;

//Vertical Movement
if (place_meeting(x, y + 1, obj_walls)){
    number_of_jumps = jumps_max;
    is_jumping = false;
	vspd = 0;	
}
if !(place_meeting(x, y + 1, obj_walls)){
	vspd += grav;
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

//Crouching and sliding

if(key_crouch && vspd == 0){
	//if(key_action){
		crouchMode(sprite_index);
	//hspd = 0;
	//}else{}
}



//Collisions
horizontal_collision();
x += hspd;
vertical_collision();
y += vspd;
