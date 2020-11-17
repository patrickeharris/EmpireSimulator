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
	if (population >= 10)
	{
		population -= 10;
	} else if (population < 10)
	{
		population = 1;
	}
	while (count < 600)
	{
        draw_sprite(sTextBox, 0, 683, 384);

        text = "A famine has hit your growing town. \nSome of your people have been killed.";

	    draw_text(683, 434, text);
		
		
		count++;
	}
	
	
	tFamine = 1000000;
	count = 0;
}

//Tornado Event

if (tTornado > 0)
{
	tTornado = tTornado - 1;
}
if(tTornado <= 0){
	
    instance_create_layer(250, 300, "Player", oTornado);

	instance_create_layer(250, 400, "Player", oTornado);

	instance_create_layer(250, 500, "Player", oTornado);
	
	while (count < 600)
	{
		draw_sprite(sTextBox, 0, 683, 384);

		text = "Storms erupt. \nTornados destroy some of your buildings.";

		draw_text(683, 434, text);
		
		count++;
	}
	
	tTornado = 1000000;
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
		draw_sprite(sTextBox, 0, 683, 384);

		text = "A resource shortage hits your growing town. \nYour resources deplete during this trying time.";

		draw_text(683, 434, text);
		
		count++;
	}
	
	tShortage = 1000000;
	count = 0;
}