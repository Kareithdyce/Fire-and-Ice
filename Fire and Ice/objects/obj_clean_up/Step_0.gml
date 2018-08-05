/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_falling_rock)){
	with(obj_falling_rock){
		instance_destroy();
	}
}


if(place_meeting(x,y,obj_smashed_wall)){
	with(obj_smashed_wall){
		instance_destroy();
	}
}