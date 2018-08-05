/// @description Increasing player health
// You can write your code in this editor
if(!paused){
	with(obj_player){
		atkUpColl++;
		if(atkUpColl % 3 == 0){
			atkpower += 5;
		}
		other.swords = atkUpColl % 3;
	}
	obj_player.atkUp[num] = true;
	paused = !paused;
	if(!sprite_exists(screenShot)){
	        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
	}
}
if(paused){
    instance_deactivate_all(true);
	with(instance_create_layer(x,y,layer_create(-1000), StatusUpA)){
	}
}
