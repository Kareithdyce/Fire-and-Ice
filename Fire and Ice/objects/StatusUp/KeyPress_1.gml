/// @description Insert description here
// You can write your code in this editor
with(health_crystal){
	pause = false;
	
	if(sprite_exists(screenShot)){
		    sprite_delete(screenShot);
			instance_destroy(kill);
	}
}
    instance_activate_all();
	instance_destroy(self);