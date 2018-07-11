/// @description death
// You can write your code in this editor
if(hp <= 0 && !dead){
	dead = true;
	enemy_dead(enemy);
}

if(!dead && dirc != 0 && !attacking){
	image_xscale = dirc;
	enemy_movement();
}
var tempY = instance_place(x,y+1, obj_walls);
if(tempY != noone){
	diffY = (y-tempY.y)+1;
	if(diffY >= 1.5){
	y-= .1;	
	//image_blend = c_red;
	}
}
/*
if(attacking && !hit){
	depth = -1
}
else{
	depth = 0;
}*/