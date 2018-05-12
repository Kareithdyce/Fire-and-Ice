/// @description Handles falling and deletion
// You can write your code in this editor
if(place_meeting(x, y, obj_player)){
	falling = true;
}

if(instance_exists(obj_falling)){
	if(falling){
		with(obj_falling){
			if(!place_meeting(x,y+1,obj_walls)){
				y+= 5;
			}
		}
	}
}
else{
	instance_destroy(self);
}