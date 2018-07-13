/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_fuchsia);
draw_text(x,y-20, keep_walking());
draw_set_color(c_aqua);
draw_text(x,y-40, mover);
draw_set_color(c_blue);
draw_text(x,y-60, alarm[1]);
draw_set_color(c_red);
draw_text(x,y-80, (horizontal_collision()));
