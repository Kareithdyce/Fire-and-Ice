/// @description Handles Collisions
// You can write your code in this editor
if(!falling){
	delta += pi/32;
	y += (cos(delta)/4);
}
with(obj_player){
	var temp  = instance_place(x,y,obj_falling);
	touch = (temp != noone);
	
	if(touch && obj_falling.falling){
		y = temp.y;
		x = temp.x+16;
	}	
	toucher = place_meeting(x,y+1,obj_falling);
	if(place_meeting(x,y+1,obj_falling) && !obj_falling.falling){
		y += (cos(obj_falling.delta)/32);
	}
}
