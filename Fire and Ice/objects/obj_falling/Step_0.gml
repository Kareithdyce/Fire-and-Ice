/// @description Handles Collisions
// You can write your code in this editor
if(reset){
	if(y == ystart){
		reset = false;
		vspd = 0;
		delta = 0;
	}
	else if(abs(y - ystart) <= raise){
		vspd = y-ystart;
		reset = false;
		delta = 0;
	}
	else{
		vspd = -raise; 
	}
	y+= vspd;
}
else{
	
if(!falling && !place_meeting(x,y+1,obj_wall)){
	delta += pi/32;
	vspd = (cos(delta)/4);
}
else if(place_meeting(x,y+1,obj_wall)){
	falling = false;
	vspd = 0;	
}
else{
	vspd += grav;
}
vertical_collision();
y += vspd;

}
with(obj_player){
	var temp  = instance_place(x,y,obj_falling);
	touch = (temp != noone);
		
	if(touch && obj_falling.falling){
		if(!atk){
			y = temp.y;
			x = temp.x+16;
		}
	}	
}
