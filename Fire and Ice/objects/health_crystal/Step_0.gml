/// @description Makes sure that the crystals are gone after collected
// You can write your code in this editor
if(init){
	if(instance_exists(obj_player) && obj_player.healthUp[num]){
		instance_destroy(self);
	}
}
else{
	init = true;
}