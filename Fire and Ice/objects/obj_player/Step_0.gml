/// @description Movement
// You can write your code in this editor
if(hascontrol){
	getInput();
	movement();
}

if(vspd > 0){
	fallMode(sprite_index);
}
if(place_meeting(x,y,obj_shadow)){
	image_blend = c_black;
	depth = -101;
}else{
	image_blend = true_color;
	depth = -1;
}