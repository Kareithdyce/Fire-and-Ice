/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	with(obj_elevator){
		if(!active){
			sDirc *= -1 ;
			active = true;
		}
	}
}