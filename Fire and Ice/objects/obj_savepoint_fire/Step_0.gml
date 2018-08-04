/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	with(obj_player){
		currentHealth = maxHealth;
		currentMana = maxMana;
	}
	if(!saved){
		saveGame(room, saveX, saveY);
		saved = true;
		visible = true;
		image_index = 0;
	}
	
}
else{
	saved = false;
}
