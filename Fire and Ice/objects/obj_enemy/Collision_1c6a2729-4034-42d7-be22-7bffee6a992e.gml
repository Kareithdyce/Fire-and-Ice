/// @description hit
// You can write your code in this editor
if(!invincible && !dead){
	if(enemy == "skeleton"){
		if(!revive){
			hit = true;
			audio_play_sound(s_hit,100,false);
			enemy_hurt(enemy);
		}
	}
	else{
		hit = true;
		audio_play_sound(s_hit,100,false);
		enemy_hurt(enemy);
	}

}