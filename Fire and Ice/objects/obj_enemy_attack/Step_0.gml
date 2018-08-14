/// @description Insert description here
// You can write your code in this editor
x = user.x;
y = user.y;
image_xscale = user.dirc;
if(user.hp <= 0 || user.dead){
	instance_destroy(self);	
}
can_hurt = true;