//Leveling Up

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
	population -= 1;
	instance_destroy();
}