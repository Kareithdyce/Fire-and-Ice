/// @desc idleForm()
image_speed = 1;
	
switch(form){
	case 0:
	sprite_index = idle_b;
	break;
	case 1:
	sprite_index = idle_bs;
	break;
	case 2:
	break;
	case 3:
	break;

}
if(vspd > 0 ){
	fallMode(sprite_index);
}

else if(vspd < 0 ){
	jumpMode(sprite_index);
}
else if(crouching){
	crouchMode(sprite_index);
}
else if(move!= 0){
	walkMode(sprite_index);
}