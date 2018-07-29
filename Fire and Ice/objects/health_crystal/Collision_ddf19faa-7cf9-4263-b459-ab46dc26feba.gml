/// @description Increasing player health
// You can write your code in this editor
with(obj_player){
	maxHealth += 20;
	currentHealth = maxHealth;
	powerUpColl++;
}
obj_player.healthUp[num] = true;
paused = !paused;
if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
}

if(paused){
    instance_deactivate_all(true);
	with(instance_create_layer(x,y,layer_create(-1000),StatusUp)){
		stats = 0;	
	}
}
