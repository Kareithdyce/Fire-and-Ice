/// @description Debug
// You can write your code in this editor
//global.game_stop = true;
	//image_blend = true_color;
debug = !debug;
saveGame();
/*
if(!instance_exists(idk)){
	instance_create_depth(x,y,-1001,idk);
}
*/
//currentHealth -= 15;

//jumps_max++;
if(form == 1){
	form = 0;
	sprite_index = idle_b;
}
else {
	form = 1;
	sprite_index = idle_bs;
}