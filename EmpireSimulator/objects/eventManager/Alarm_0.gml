//Last Event

if (population > 1 && instance_exists(oBarracks))
{
	instance_create_layer(0, 0, "UI", oWar);
    //room_goto(rGoodEnding);
} else 
{
	room_goto(rBadEnding);
}