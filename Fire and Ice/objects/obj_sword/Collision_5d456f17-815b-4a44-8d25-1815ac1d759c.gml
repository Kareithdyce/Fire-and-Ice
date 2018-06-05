/// @description Destroys self
// You can write your code in this editor
getInput();
if(key_action){
	obj_skeleton.awake = true;
	with(obj_player){
		form = 1;
		idleForm();
	}
	instance_destroy(self);
}
