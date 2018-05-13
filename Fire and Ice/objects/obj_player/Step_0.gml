/// @description Movement
// You can write your code in this editor
if(hascontrol){
	getInput();
	movement();
}

if(vspd > 0){
	fallMode(sprite_index);
	//first_jump = false;
}