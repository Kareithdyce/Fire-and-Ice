/// @description Draw Text Box
// You can write your code in this editor
draw_set_font(font0);
draw_set_color(c_black);
draw_rectangle(0, view_hview, view_wview*2, view_hview*1.2, false);
draw_set_color(c_silver);
draw_rectangle(0, view_hview, view_wview*2, view_hview*1.2, true);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(view_wview, view_hview, write);