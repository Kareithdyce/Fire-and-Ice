/// @description Draws screenshot
// You can write your code in this editor
//draw_self();
draw_set_halign(fa_center);

if(paused){
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_rectangle(0, view_hview, view_wview*2, view_hview*1.3, false);
	draw_set_color(c_silver);
	draw_rectangle(-1, view_hview, view_wview*2, view_hview*1.3, true);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(view_wview, view_hview, text);
}