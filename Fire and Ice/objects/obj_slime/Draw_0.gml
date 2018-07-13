/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_fuchsia);
draw_text(x,y-20, player_seen);
draw_set_color(c_aqua);
draw_text(x,y-40, active);
draw_set_color(c_blue);
draw_text(x,y-60, keep_walking());
//draw_set_color(c_red);
//draw_text(x,y-80, (yDist < sight));
