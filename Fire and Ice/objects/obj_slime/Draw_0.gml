/// @description Insert description here
// You can write your code in this editor
draw_self();
/*
//draw_text(x,y-40, mover);
draw_set_color(c_blue);
//draw_text(x,y-60, sign(0));
draw_set_color(c_red);
//draw_text(x,y-80, (horizontal_collision_enemy()));
draw_set_color(c_blue);
draw_set_alpha(.5);
draw_rectangle(x-(15*dirc),y-50,x+(5*dirc),y,false);
draw_set_color(c_red);
draw_rectangle(x-(15*dirc),y-20,x+(5*dirc),y,false);
*/
draw_set_color(c_fuchsia);
draw_text(x,y-20,vertical_collision_enemy());
draw_set_color(c_aqua);
draw_text(x,y-40,horizontal_collision_enemy());
