//Decrement Timer
step++;
if (timer > 0 && step > room_speed * 1)
{
    step = 0;
	timer = timer - 1;
}
if(timer <= 0){
    alarm[0] = 1;
    timer = 120;
}