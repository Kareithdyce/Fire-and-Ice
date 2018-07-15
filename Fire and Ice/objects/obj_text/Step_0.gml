/// @description Progress Text
// You can write your code in this editor
letters += spd;
text_current = string_copy(text, 1, floor(letters));
draw_set_font(font0);
if(height == 0){
	height = string_height(text);
}

width = string_width(text)

//Destroy when done or play gone to far
if((letters >= length && keyboard_check_pressed(vk_anykey)) || !point_in_circle(obj_player.x, obj_player.y,x,y,128)){
	instance_destroy(self);
	with(obj_Camera){
		follow = obj_player;
	}
}

