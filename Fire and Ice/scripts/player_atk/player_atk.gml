
if(atk && !instance_exists(obj_sword_hitbox) && !((pAttack1 || pAttack2) && image_index >= image_number-4)){
	instance_create_depth(x, y, -2, obj_sword_hitbox);
}

if(pAttack1 || pAttack2){
	knockback = 0;
	if(image_index >= image_number-5){	
		if(key_action && !key_crouch && !key_jump){
			actionMode(sprite_index);
		}
		else if((move != 0 || key_crouch || key_jump) && image_index >= image_number-2){
			pAttack1 = false;
			pAttack2 = false;
			idleForm();
			walkMode(sprite_index);	
		}
	}
	//Stop attacking the last frame if still in attack mode.
	if (image_index >= image_number-1 && (pAttack1 || pAttack2)){
		pAttack1 = false;
		pAttack2 = false
		idleForm();	
	}
}

/*
else if(pAttack2){
	knockback = 0;
	if(image_index >= image_number-4){
		if((move != 0 || key_crouch || key_jump) && image_index >= image_number-3){
			pAttack2 = false;	
			idleForm();
			walkMode(sprite_index);
		}
		else if(key_action){
			actionMode(sprite_index);
		}
	}
	if(image_index >= image_number-1 && pAttack2){
		pAttack2 = false;
		idleForm();
	}
}
*/
else if(pAttack3) {
	knockback = knockback3;
	if(image_index >= image_number-1){
		atkpower = normpower;
		pAttack3 = false;
		idleForm();
		
	}
}


if(aerial && image_index >= image_number-1){
	aerial = false;
	idleForm();
}
