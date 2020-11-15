//Set Variables for CutScene

xpos = 640;
a = 1;
fadeout = 0;

str = "";
print = "";

l = 0;
next = 0;

strings[0] = "Unfortunately...";
strings[1] = "Your army was no match for the VILLAIN and his minions";
strings[2] = "You lay on your deathbed";
strings[3] = "Maybe you will at least get to see \nthe face of the man that destroyed your life";
strings[4] = "Wait a minute...";
strings[5] = "Is that...";
strings[6] = "your BROTHER?!";
strings[7] = "All these years...";
strings[8] = "You thought he died with the rest of your family";
strings[9] = "But he was the cause...";

audio_stop_sound(sBadEndingMusic);

audio_play_sound(sBadEndingMusic, 1, true);
