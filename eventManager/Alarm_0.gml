//Last Event

if (population > 20 && numBuildings > 20)
{
	room_goto(rGoodEnding);
} else 
{
	room_goto(rBadEnding);
}