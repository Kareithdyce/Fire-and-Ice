/// @desc actionMode(sprite)
/// @arg sprite
if(argument[0] == idle_bs || argument[0] == walk_bs){
	image_speed = 1.5;
	image_index = 0;
	key_action = false;
	hascontrol = false;
	pAttack1 = true;
	sprite_index = sword1_bs;
	image_index = 0;
}

if(argument[0] == sword1_bs){
	image_index = 0;
	key_action = false;
	hascontrol = false;
	pAttack2 = true;
	sprite_index = sword2_bs;
	image_index = 0;
}


if(argument[0] == sword2_bs){
	image_index = 0;
	key_action = false;
	normpower = atkpower;
	atkpower += round(atkpower/2);
	hascontrol = false;
	pAttack3 = true;
	sprite_index = sword3_bs;
	image_index = 0;
}

if(argument[0] == jump_bs1 || argument[0] == jump_bs2 ||  argument[0] == fall_bs){
	key_action = false;
	hascontrol = false;
	aerial  = true;
	if(fHit){
		image_speed = 1.2;
		sprite_index = sword_air1_bs;
	}else{
		image_speed = 1;
		sprite_index = sword_air2_bs;
	}
	fHit = !fHit;
	image_index = 0;
}



/*
if(argument[0] == idle_bs2){
	hascontrol = false;
	sprite_index = sword_sheath_bs;
	image_index = 0;
}
*/