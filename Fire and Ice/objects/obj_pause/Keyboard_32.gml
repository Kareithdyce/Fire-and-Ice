/// @description Insert description here
// You can write your code in this editor
if(pause){
	
	instance_activate_all();
	//image_blend = c_black;
}
else{
	instance_deactivate_all(true);
}
pause = !pause;