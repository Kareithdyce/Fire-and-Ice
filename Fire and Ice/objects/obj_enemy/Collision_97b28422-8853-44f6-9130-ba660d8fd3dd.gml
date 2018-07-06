///@description hi
if(obj_player.is_smashing){
	if(!invincible && !dead){
		if(enemy == "skeleton"){
			if(!revive){
				hit = true;
				enemy_hurt(enemy);
			}
		}
		else{
			hit = true;
			enemy_hurt(enemy);
		}
	}
}