/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	if(!saved){
		saveGame(room, saveX, saveY);
		saved = true;
	}
	
}
else{
	saved = false;
}
