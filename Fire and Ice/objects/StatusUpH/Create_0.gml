/// @description Insert description here
// You can write your code in this editor
hearts = health_crystal.hearts;
if(hearts != 0){
	textH = "Collect " + string(4 - hearts) + " more crystals to raise health by 100.";
}
else{
	textH = "Max Health raised by 100!";
}
text = "Press any button to continue";depth = -1001;

write = textH;
write += "\n"+text;