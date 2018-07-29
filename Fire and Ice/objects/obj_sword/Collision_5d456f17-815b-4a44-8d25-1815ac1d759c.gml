/// @description Destroys self
// You can write your code in this editor
getInput();
if(key_action){
	with(obj_player){
		form = 1;
		hspd = 0;
		idleForm();
	}
	if(instance_exists(obj_text)){
		instance_destroy(obj_text);
	}
	paused = !paused;
	if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
	}

	if(paused){
		instance_deactivate_all(true);
		instance_create_layer(x,y,layer_create(-1000),SwordGet);
	}
	//instance_destroy(self);
}
