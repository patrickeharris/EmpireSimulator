//Can't get text to draw for events

//Decrement Timer for Last Event
step++;
if (timer > 0 && step > room_speed * 1)
{
    step = 0;
	timer = timer - 1;
}
if(timer <= 0){
    alarm[0] = 1;
}

//Famine Event

if (tFamine > 0)
{
	tFamine = tFamine - 1;
}
if(tFamine <= 0)
{
	population = irandom(population);
	while (count < 600)
	{
		famineTextbox = true;
		count++;
	}
	famineTextbox = false;
	
	tFamine = 100000000;
	count = 0;
}

//Tornado Event

if (tTornado > 0)
{
	tTornado = tTornado - 1;
}
if(tTornado <= 0){
	
    instance_create_layer(250, random(700), "Player", oTornado);

	instance_create_layer(250, random(700), "Player", oTornado);

	instance_create_layer(250, random(700), "Player", oTornado);
	
	while (count < 600)
	{
		tornadoTextbox = true;
		
		count++;
	}
	tornadoTextbox = false;
	
	tTornado = 100000000;
	count = 0;
}

//Resource Shortage Event

if (tShortage > 0)
{
	tShortage = tShortage - 1;
}
if(tShortage <= 0){
    wood -= 500;
	stone -= 500;
	
	while (count < 600)
	{
		shortageTextbox = true;
		
		count++;
	}
	shortageTextbox = false;
	
	tShortage = 1000000;
	count = 0;
}