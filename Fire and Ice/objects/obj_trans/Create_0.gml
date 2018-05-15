/// @description Size variables and mode setup
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * .5;
newX = 0;
newY = 0;
travel = false;
enum TRANS_MODE{
	OFF,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;