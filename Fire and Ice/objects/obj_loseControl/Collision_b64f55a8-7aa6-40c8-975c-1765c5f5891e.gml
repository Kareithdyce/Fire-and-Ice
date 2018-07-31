/// @description Insert description here
// You can write your code in this editor
with(obj_player){
	if(hascontrol){
		hascontrol = false;
		key_left = false;
		key_right = false;
		move = 0;
		instance_destroy(other);
	}
}
	