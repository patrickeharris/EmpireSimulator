/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x - image_xscale / 2;
y = oPlayer.y - image_yscale / 2;


enter = keyboard_check_pressed(vk_enter);

if(enter && image_index == 0){
    if(buildItem == oWoodHarvester && movewood == 0){
        movewood++;
    }
    money -= buildPrice;
	wood -= buildWood;
	stone -= buildStone;
	instance_create_layer(oPlayer.x, oPlayer.y, "Buildings", buildItem);
    /*if (buildItem == "House")
		{
			money -= buildPrice;
			wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oHouse);
		}
		if (buildItem == "WoodHarvester")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
	        instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oWoodHarvester);
		}
		if (buildItem == "QuantumQuarry")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oQuantumQuarry);
		}
        if (buildItem == "AutoMiner")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oAutoMiner);
		}
        if (buildItem == "Apartment")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oApartment);
		}
        if (buildItem == "Restaurant")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oRestaurant);
		}
        if (buildItem == "Mall")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oMall);
		}*/
    instance_destroy();
	audio_play_sound(sPlaceBuilding, 1, 0);
}


if(image_index == 1){
    image_index = 0;
}