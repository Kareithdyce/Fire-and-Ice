/// @description Insert description here
// You can write your code in this editor
if(obj_player.form > 0){
	if(instance_exists(obj_skeleton)){
		obj_skeleton.awake = true;
		obj_skeleton.player_seen = true;
	}
	instance_destroy(self);
}