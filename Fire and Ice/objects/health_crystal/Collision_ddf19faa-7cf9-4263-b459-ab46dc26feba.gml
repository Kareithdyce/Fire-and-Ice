/// @description Insert description here
// You can write your code in this editor
with(obj_player){
	maxHealth += 20;
	currentHealth = maxHealth;
}
paused = !paused;
if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
}

instance_destroy(self);
/*
if(paused){
    instance_deactivate_all(true);
}else{
	if(sprite_exists(screenShot)){
        sprite_delete(screenShot);
    }
    instance_activate_all();
}
*/