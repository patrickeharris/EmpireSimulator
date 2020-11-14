/// @description Insert description here
// You can write your code in this editor
lvl = 1;
alarm[0] = room_speed * 1;
lvlup = false;

numResidential++;
if(numResidential > numCommercial && populationHappiness < 100){
    populationHappiness += 10;
}

//Set Apartment Health

health = 50;

health_max = health;

healthbar_width = 60;
healthbar_height = 6;
healthbar_x = oApartment.x - (healthbar_width / 2);
healthbar_y = oApartment.y - 75;