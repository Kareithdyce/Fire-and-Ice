/// @description Insert description here
// You can write your code in this editor
///*
if(instance_exists(obj_player)){
	death = obj_player.dead;
	percent = obj_player.powerUpColl/(obj_player.NumHealthUps+obj_player.NumManaUps);
	percent*=100;
	if(percent < 50){
	message = "Look around for power-ups next time.";
	}
	else if(percent < 75){
		message = "There are still quite a few upgrades out there!";
	}
	else if(percent >= 99){
		message = "You found everything Congrats!";
	}
	else{
		message = "You're almost there keep going!";
	}
	instance_destroy(obj_player);
}
if(death){
	text = "No!!! It can't end here! Don't lose hope!";	
}
else{
	text = "Congrats you beat the demo!!!\n";
	text += message+"\n";
	text+=string(percent);
	text+="% of items found!";
}
//*/
