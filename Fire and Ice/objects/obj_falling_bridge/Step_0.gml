/// @description Insert description here
// You can write your code in this editor

if(falling){
	vspd += obj_player.grav;
	vertical_collision();
	y += vspd;
}