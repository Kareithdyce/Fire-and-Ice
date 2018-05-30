/// @description Insert description here
// You can write your code in this editor
textH = "Max Health increased by 20!";
textM = "Max Mana increased by 10!";
text = "Press any button to continue";
stats = 0; //0 for health; 1 for mana
depth = -1001;

write = (stats == 0) ?textH : textM;
write += "\n"+text;