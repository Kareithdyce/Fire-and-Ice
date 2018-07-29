/// @description Insert description here
// You can write your code in this editor
if(press_any_key()){
with(obj_sword){
	pause = false;
	
	if(sprite_exists(screenShot)){
		    sprite_delete(screenShot);
			if(instance_exists(self)){
				instance_destroy(self);
			}
	}
}
    instance_activate_all();
	instance_destroy(self);
}