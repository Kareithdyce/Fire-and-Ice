/// @description Insert description here
// You can write your code in this editor
if(!alert){
	if(!paused){
		if(point_in_circle(obj_player.x, obj_player.y,x,y,64) && !instance_exists(obj_text)){
			with(instance_create_layer(x,y-64,layer_create(-1000), obj_text)){
				text = other.text;
				spd = 1;
				length = string_length(text);
			}
			alert = true;
		}	
	}
}