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

if(paused){
    instance_deactivate_all(true);
	instance_create_depth(x,y,depth,StatusUp);
	kill = self;
}
