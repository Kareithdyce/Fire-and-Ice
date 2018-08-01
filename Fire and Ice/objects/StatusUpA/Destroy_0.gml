/// @description Saves the game
// You can write your code in this editor
if(file_exists(SAVEFILE)){
	ini_open(SAVEFILE);
	newX = ini_read_real("Location", "X", 128);
	newY = ini_read_real("Location", "Y", 864);
	newR = ini_read_real("Location", "Room", rm_demo1);
}
saveGame(newR,newX,newY);