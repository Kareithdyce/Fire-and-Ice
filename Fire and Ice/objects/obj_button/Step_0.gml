/// @description Handles falling and deletion
// You can write your code in this editor
if(place_meeting(x, y, obj_player)){
	if(instance_exists(obj_falling)){
		obj_falling.falling = true;
	}
	if(instance_exists(obj_skeleton)){
		obj_skeleton.awake = true;
	}
}

if(instance_exists(obj_falling)){
	if(obj_falling.falling || obj_falling.reset){
		instance_destroy(self)
		/*with(obj_falling){
			if(!place_meeting(x,y+2,obj_wall)){
				if(!reset){
				y = ystart;
				reset = true;
				}
				
				
			}
		}*/
	}
}
else{
	instance_destroy(self);
}