/// @description Insert description here
// You can write your code in this editor
if(lvlup == true){
    lvlup = false;
    lvl++;
    alarm[0] = 0;
}

//House Destruction

if (health == 0)
{
	numResidential--;
	populationHappiness -= 20;
	population -= 3;
	instance_destroy();
}