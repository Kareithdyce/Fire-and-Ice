/// @description Insert description here
// You can write your code in this editor
draw_set_font(fontBig);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/2 + 150, "New Game");
if(!can_load){
	draw_set_color(c_gray);
}
draw_text((room_width/2)-18, room_height/2 + 225, "Continue");
if(!can_load){
	draw_set_color(c_white);
}
draw_text(room_width/2, room_height/2 + 300, "Quit Game");
//draw_line(room_width/2 - 107,	room_height/2 + 150, room_width/2 - 107, room_height/2 + 400);
