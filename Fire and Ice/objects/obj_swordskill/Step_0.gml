/// @description Insert description here
// You can write your code in this editor
if(!paused){
	x = obj_player.x;
	y = obj_player.y+6;
}
else{
	if(press_any_key()){
	with(obj_atk_up){
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
}