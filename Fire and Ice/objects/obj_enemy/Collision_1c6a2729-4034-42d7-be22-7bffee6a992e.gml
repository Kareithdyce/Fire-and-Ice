/// @description hit
// You can write your code in this editor
if(!invincible && !dead){
	if(enemy == "skeleton"){
		if(awake){
			hit = true;
			enemy_hurt(enemy);
		}
	}
	else{
		hit = true;
		enemy_hurt(enemy);
	}

}