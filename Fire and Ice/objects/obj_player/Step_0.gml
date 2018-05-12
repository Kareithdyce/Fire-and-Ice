/// @description Movement
// You can write your code in this editor
if(hascontrol){
	getInput();
	movement();
	
	///Jumping and Falling
	if(is_jumping){
	    if(vspd < 0){
			jumpMode(sprite_index)
		}
	}
}

if(vspd > 0){
	fallMode(sprite_index);
}