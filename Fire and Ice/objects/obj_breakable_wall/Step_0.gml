/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_sword_hitbox)){
	if(obj_player.is_smashing){
		smashed = true;
	}
	instance_destroy(self);
}	
