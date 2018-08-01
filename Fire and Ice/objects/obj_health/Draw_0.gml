/// @description Insert description here
// You can write your code in this editor
draw_sprite_part(spr_health, image_index, 0, 0, sprite_width*ratio, sprite_height, x, y);
draw_set_colour(c_white);
draw_set_font(infoText);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_text(x + 200, y - 8,string(obj_player.currentHealth));