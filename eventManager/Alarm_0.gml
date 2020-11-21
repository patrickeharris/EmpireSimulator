//Last Event

if (population > 1 && numBuildings > 0)
{
	room_goto(rGoodEnding);
} else 
{
	room_goto(rBadEnding);
}