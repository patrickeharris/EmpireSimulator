//Checking Level

lvl = 1;
alarm[0] = room_speed * 2;
lvlup = false;

//Increasing Stats

numResidential++;
if(numResidential > numCommercial && populationHappiness < 100){
    populationHappiness += 10;
}

//Set House Health

health = 50;

