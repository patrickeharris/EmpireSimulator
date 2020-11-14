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

health = 50;

health_max = health;

healthbar_width = 60;
healthbar_height = 6;
healthbar_x = oHouse.x - (healthbar_width / 2);
healthbar_y = oHouse.y - 75;


open = false;

collide = false;