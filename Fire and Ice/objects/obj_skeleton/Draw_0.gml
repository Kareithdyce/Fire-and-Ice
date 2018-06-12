/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_blue);
draw_text(x,y, y-obj_player.y);
draw_set_color(c_yellow);
draw_text(x,y-20, player_seen);
