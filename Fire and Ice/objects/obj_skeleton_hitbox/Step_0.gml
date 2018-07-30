/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!user.attacking || user.image_index > 10){
	instance_destroy(self);
}
