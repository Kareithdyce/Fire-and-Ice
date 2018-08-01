/// @description Insert description here
// You can write your code in this editor
if (shake > 0){
    draw_sprite_ext( sprite_index, image_index, x + irandom_range(-shake, shake), y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	shake -= 5;
}
else{
    draw_self();
}

//draw_set_color(c_fuchsia);
//draw_text(x,y-100, image_index);
//draw_text(x+100,y-100, image_number);
//draw_text(x+100,y, image_index >= image_number-1);
/*
if(debug){
draw_set_color(c_red);
draw_set_alpha(0.5);
draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);
draw_set_alpha(1);

if(atk){
	if(dirc == 1) {
		draw_rectangle_colour(bbox_left,bbox_top,bbox_right+18,bbox_bottom,c_blue,c_blue,c_blue,c_blue,false);
	}
	if(dirc == -1) {
		draw_rectangle_colour(bbox_left-18,bbox_top,bbox_right,bbox_bottom,c_blue,c_blue,c_blue,c_blue,false);
	}	
}


draw_set_color(c_blue);
}
if(instance_exists(obj_jumpthru_wall)){
	draw_text(x,y, place_meeting(x,y+1,obj_jumpthru_wall));
	draw_text(x,y-20, place_meeting(x,y+1,obj_walls32));

}
*/

draw_set_color(c_fuchsia);
//draw_text(x+50 ,y-100, debugger);
draw_set_color(c_red);

