/// @description Clean-up
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	obj_player.switches[num] = true;
	instance_destroy(self);
}
if(obj_player.switches[num]){
		instance_destroy(self);
}
