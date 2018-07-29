/// @description Insert description here
// You can write your code in this editor
depth = 1;
text = "Press X to pick up";
paused = false;
screenShot = -1;
if(obj_player.form > 0){
	instance_destroy(self);
}
alert = false;