/// @description Insert description here
// You can write your code in this editor
if(!sprite_exists(screenShot)){
	        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
}
if(!paused){
    paused = true;
	image_speed = 0;
	image_index = image_number-1;
	instance_deactivate_all(true);
}