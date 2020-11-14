/// @description Insert description here
// You can write your code in this editor
lvl = 1;
alarm[0] = room_speed * 1;
lvlup = false;

numCommercial++;
if(numResidential > numCommercial && populationHappiness < 100){
    populationHappiness += 10;
}

//Set Health

health = 50;

health_max = health;

healthbar_width = 60;
healthbar_height = 6;
healthbar_x = oMall.x - (healthbar_width / 2);
healthbar_y = oMall.y - 75;