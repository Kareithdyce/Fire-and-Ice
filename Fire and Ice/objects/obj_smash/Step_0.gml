/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	with(obj_player){
		can_smash = true;
		instance_create_depth(x,y+6,-2, obj_swordskill);
		loseControl();	
	}
	instance_destroy()
}