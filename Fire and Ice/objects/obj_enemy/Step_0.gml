/// @description death
// You can write your code in this editor
if(hp <= 0 && !dead){
	dead = true;
	enemy_dead(enemy);
}

if(!dead){
	image_xscale = -dirc;
}