/// @description Draw Text Box
// You can write your code in this editor
var halfwidth = width * .5;
//Draw The Box
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect_ext(x-halfwidth-border,y-height-(border*2),x+halfwidth+border,y,radius,radius,false);
draw_sprite(spr_marker,0,x,y);
draw_set_alpha(1);

//Draw Text
draw_set_color(c_white);
draw_set_font(font0);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x,y-height-border, text_current);
