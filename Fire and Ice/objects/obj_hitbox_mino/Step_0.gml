/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(user.hp <= 0 || user.dead || user.image_index < 8){
	if(instance_exists(user)){
		user.triggered = false;	
	}
	instance_destroy(self);	
}