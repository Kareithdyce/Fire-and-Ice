/// @description Handles falling and deletion
// You can write your code in this editor
if(place_meeting(x, y, obj_player)){
	obj_falling.falling = true;
}

if(instance_exists(obj_falling)){
	if(obj_falling.falling){
		with(obj_falling){
			if(!place_meeting(x,y+2,obj_walls)){
				if(!reset){
				y = ystart;
				reset = true;
				}
				y+= 1/4;
				
			}
		}
	}
}
else{
	instance_destroy(self);
}