/// @description Handles Collisions
// You can write your code in this editor

if(!falling){
	delta += pi/32;
	 vspd = (cos(delta)/4);
}
else{
	vspd += obj_player.grav;
}
vertical_collision();
y += vspd;


with(obj_player){
	var temp  = instance_place(x,y,obj_falling);
	touch = (temp != noone);
		
	if(touch && obj_falling.falling){
		y = temp.y;
		x = temp.x+16;
	}	
}