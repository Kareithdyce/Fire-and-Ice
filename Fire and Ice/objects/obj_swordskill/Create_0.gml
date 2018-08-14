/// @description Setting up for pausing
// You can write your code in this editor
paused = false;
screenShot = -1;
kill = self;
init = false;
text = "You learned the downward slash!";
text += "\nWhile in the air hold down and then attack";
text += "\nPress any button to continue";
audio_play_sound(s_skill_learn,100,false);