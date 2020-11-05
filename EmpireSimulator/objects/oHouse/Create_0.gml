//Checking Level

lvl = 1;
enabled = false;
alarm[0] = room_speed * 1;
lvlup = false;

//Increasing Stats

numResidential++;
if(numResidential > numCommercial && populationHappiness < 100){
    populationHappiness += 10;
}

//Set House Health

health = 100;

