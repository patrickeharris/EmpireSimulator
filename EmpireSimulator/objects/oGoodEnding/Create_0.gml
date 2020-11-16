//Set Variables for CutScene

xpos = 640;
a = 1;
fadeout = 0;

str = "";
print = "";

l = 0;
next = 0;

strings[0] = "You've done it!";
strings[1] = "The VILLAINS army is no match /nfor the strength of your people";
strings[2] = "It is time to finally unmask this great villain";
strings[3] = "Look the man who destroyed your home in the eyes";
strings[4] = "But wait...";
strings[5] = "Is that...";
strings[6] = "your BROTHER?!";
strings[7] = "All these years...";
strings[8] = "You thought he died with the rest of your family!";
strings[9] = "But he was the cause?!";

audio_stop_sound(sMusic);

audio_play_sound(sGoodEndingMusic, 1, true);
