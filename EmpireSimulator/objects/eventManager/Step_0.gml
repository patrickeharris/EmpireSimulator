//Can't get text to draw for events

//Decrement Timer for Last Event
step++;
if (timer > 0 && step > room_speed * 2)
{
    step = 0;
	timer = timer - 1;
}
if(banker && step == 0){
    money = money + 1 + round(money * 0.0001);
}
if(timer <= 0 && !finished){
    finished = true;
    alarm[0] = 1;
}

//Famine Event

if (tFamine > 0)
{
	tFamine = tFamine - 1;
}
if(tFamine <= 0)
{
    with(oTrader){
        alarm[3] = 1;
    }
	population = irandom(population);
	count = 300;
	famineTextbox = true;
	
	tFamine = 100000000;
}

//Tornado Event

if (tTornado > 0)
{
	tTornado = tTornado - 1;
}
if(tTornado <= 0){
	with(oTrader){
        alarm[2] = 1;
    }
    var _y = irandom_range(20, 750);
    if(!instance_exists(oTornado)){
        tornado = instance_create_layer(250, _y, "Player", oTornado);
    }

    count = 300;
	tornadoTextbox = true;
	
	tTornado = 100000000;
}

//Resource Shortage Event

if (tShortage > 0)
{
	tShortage = tShortage - 1;
}
if(tShortage <= 0){
    with(oTrader){
        alarm[1] = 1;
    }
    wood -= irandom_range(wood / 3,wood / 2);
	stone -= irandom_range(stone / 3, stone / 2);
    count = 300;
	shortageTextbox = true;

	
	tShortage = 1000000;
}
if (tBarracks > 0)
{
	tBarracks = tBarracks - 1;
}

if(tBarracks <= 0){
    count = 300;
    barracksTextbox = true;
    tBarracks = 1000000;
}

if (tWar > 0)
{
	tWar = tWar - 1;
}
if(tWar <= 0){
    count = 300;
    warTextbox = true;
    tWar = 1000000;
}

if(count > 0){
    count--;
}
if(count <= 0 && (((tornadoTextbox || shortageTextbox)||(barracksTextbox || warTextbox))||famineTextbox)){
    tornadoTextbox = false;
    shortageTextbox = false;
    famineTextbox = false;
    barracksTextbox = false;
    warTextbox = false;
    
}