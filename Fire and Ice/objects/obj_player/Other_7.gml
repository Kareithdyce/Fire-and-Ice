/// @description Insert description here
// You can write your code in this editor
if(sprite_index == greatfall_b){
	image_speed = 0;
	sprite_index = getup_b;
	trapped = true;
}

else if(sprite_index == getup_b){
	idleForm();
	trapped = false;
	hascontrol = true;
}
else if(sprite_index == sword_sheath_bs){
	idleForm();
	hascontrol = true;
}


/*
else if(sprite_index == sword_draw_bs){
	sprite_index = idle_bs2;
	hascontrol = true;	
}


else if(sprite_index == sword_sheath_bs){
	sprite_index = idle_bs;
	hascontrol = true;
	
}

*/