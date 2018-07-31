/// @description Insert description here
// Reset the falling objects
if(instance_exists(obj_button)){
	with(obj_button){
		instance_destroy();
	}
}
obj_falling.reset = true;
obj_falling.falling = false;
