/// @description Transports player to next room
// You can write your code in this editor
with(obj_player){
	if(hascontrol){
		hascontrol = false;
	}
}
slideTrans(TRANS_MODE.GOTO,target);
obj_player.sprite_index = idle_b;
obj_player.x = setX;
obj_player.y = setY;
