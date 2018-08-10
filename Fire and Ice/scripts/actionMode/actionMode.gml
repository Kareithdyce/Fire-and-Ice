/// @desc actionMode(sprite)
/// @arg sprite

if(can_smash && key_crouch && key_action && !grounded && !atk){
	smashMode(sprite_index);
}
else{
	//Form 1
	if((argument[0] == idle_bs || argument[0] == walk_bs) && grounded){
		image_speed = 1.5;
		image_index = 0;
		pAttack1 = true;
		sprite_index = sword1_bs;
		can_turn = false;
		image_index = 0;
	}

	if(argument[0] == sword1_bs){
		//image_index = 0;
		pAttack1 = false;
		pAttack2 = true;
		can_turn = false;
		sprite_index = sword2_bs;
		image_index = 0;
	}

	if(argument[0] == sword2_bs){
		//image_index = 0;
		normpower = atkpower;
		atkpower += round(atkpower/2);
		pAttack2 = false;
		can_turn = false;
		pAttack3 = true;
		sprite_index = sword3_bs;
		image_index = 0;
	}

	if(argument[0] == jump_bs1 || argument[0] == jump_bs2 ||  argument[0] == fall_bs){
		aerial  = true;
		if(fHit){
			image_speed = 1.2;
			sprite_index = sword_air1_bs;
		}else{
			image_speed = 1;
			sprite_index = sword_air2_bs;
		}
		fHit = !fHit;
		can_turn = false;
		image_index = 0;
	}
	
	//Form 2
	if((argument[0] == idle_f || argument[0] == walk_f) && grounded){
		image_speed = 1.5;
		image_index = 0;
		pAttack1 = true;
		sprite_index = sword1_f;
		can_turn = false;
		image_index = 0;
	}

	if(argument[0] == sword1_f){
		//image_index = 0;
		pAttack1 = false;
		pAttack2 = true;
		can_turn = false;
		sprite_index = sword2_f;
		image_index = 0;
	}

	if(argument[0] == sword2_f){
		//image_index = 0;
		normpower = atkpower;
		atkpower += round(atkpower/2);
		pAttack2 = false;
		can_turn = false;
		pAttack3 = true;
		sprite_index = sword3_f;
		image_index = 0;
	}

	if(argument[0] == jump_f1 || argument[0] == jump_f2 ||  argument[0] == fall_f){
		aerial  = true;
		if(fHit){
			image_speed = 1.2;
			sprite_index = sword_air1_f;
		}else{
			image_speed = 1;
			sprite_index = sword_air2_f;
		}
		fHit = !fHit;
		can_turn = false;
		image_index = 0;
	}
	
	
	

}


/*
if(argument[0] == idle_bs2){
	hascontrol = false;
	sprite_index = sword_sheath_bs;
	image_index = 0;
}
*/