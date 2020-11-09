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
if(tFamine <= 0){
    alarm[1] = 1;
	tFamine = 1000000;
}

//Tornado Event

if (tTornado > 0)
{
	tTornado = tTornado - 1;
}
if(tTornado <= 0){
    alarm[3] = 1;
	tTornado = 1000000;
}

//Resource Shortage Event

if (tShortage > 0)
{
	tShortage = tShortage - 1;
}
if(tShortage <= 0){
    alarm[2] = 1;
	tShortage = 1000000;
}