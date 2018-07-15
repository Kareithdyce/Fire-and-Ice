/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fontBig);
//draw_set_font(font0);
draw_text(room_width/2, room_height/2 - 50, text);
draw_text(room_width/2, room_height/2 + 150, "Try Again");
draw_text((room_width/2)+10, room_height/2 + 225, "Quit Game");
