/// @description Display text 
// You can write your code in this editor
if(!alert){
	if(point_in_circle(obj_player.x, obj_player.y,x,y,64) && !instance_exists(obj_text)){
		with(instance_create_layer(x,y-64,layer, obj_text)){
			text = other.text;
			length = string_length(text);
		}
		with(obj_Camera){
			follow = other.id;
		}
		alert = true;
	}
}