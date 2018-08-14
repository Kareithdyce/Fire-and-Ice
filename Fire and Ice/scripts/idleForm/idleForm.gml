/// @desc idleForm()
image_speed = 1;
var image = sprite_index;
switch(form){
	case 0:
	sprite_index = idle_b;
	break;
	case 1:
	sprite_index = idle_bs;
	break;
	case 2:
	sprite_index = idle_f;
	break;
	case 3:
	break;

}
if(image == sword_air3_bs2 || image == sword_air3_f2){

}
else if(vspd > 0){
	fallMode(sprite_index);
}

else if(vspd < 0 ){
	if(image == sword_air1_bs || image == sword_air2_bs){
		sprite_index = jump_bs1;
	}
	else if(image == sword_air1_f || image == sword_air2_f){
		sprite_index = jump_f1;
	}
	else{
		jumpMode(sprite_index);
	}
}
else if(is_smashing && (sprite_index != sword_air3_bs2 && sprite_index != sword_air3_f2)){
	switch(form){
		case 1:
		sprite_index = sword_air3_bs2;
		break;
		case 2:
		sprite_index = sword_air3_f2;
		break;
	
	}
	image_speed = 1;
	image_index = 0;
}
else if(crouching){
	crouchMode(sprite_index);
}
else if(move!= 0){
	walkMode(sprite_index);
}
else{
	if(image == sword_air1_f || image == sword_air2_f || image == sword_air1_bs || image == sword_air2_bs ){
		audio_play_sound(s_land,100,false);
	}
}