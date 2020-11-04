/// @description Insert description here
// You can write your code in this editor
if(!shopOpen && keyboard_check_pressed(ord("E"))){
    shopOpen = true;
    shop = true;
}
else if(shopOpen && (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_escape))){
    shopOpen = false;
    shop = false;
}


if(shopOpen){
    //Down
    if(keyboard_check_pressed(vk_down)){
        selected++;
        if(selected == itemCount){
            selected = 0;
        }
    }
    
    //Up
    if(keyboard_check_pressed(vk_up)){
        selected--;
        if(selected < 0){
            selected = itemCount - 1;
        }
    }
    
    //Buy
    var arr = items[| selected];
    var item = arr[0];
    var price = arr[2];
    var woodPrice = arr[4];
    var stonePrice = arr[5];
	
	
	if (keyboard_check_pressed(vk_enter) && money >= price && wood >= woodPrice && stone >= stonePrice)
	{
		if (item == "House")
		{
			/*money -= price;
			wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oHouse);*/
            shopOpen = false;
            shop = false;
            buildItem = oHouse;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(100, 100);
		}
		if (item == "WoodHarvester")
		{
			shopOpen = false;
            shop = false;
            buildItem = oWoodHarvester;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(64, 64);
		}
		if (item == "QuantumQuarry")
		{
			shopOpen = false;
            shop = false;
            buildItem = oQuantumQuarry;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(64, 64);
		}
        if (item == "AutoMiner")
		{
			shopOpen = false;
            shop = false;
            buildItem = oAutoMiner;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(64, 64);
		}
        if (item == "Apartment")
		{
			shopOpen = false;
            shop = false;
            buildItem = oApartment;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(64, 64);
		}
        if (item == "Restaurant")
		{
			shopOpen = false;
            shop = false;
            buildItem = oRestaurant;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(64, 64);
		}
        if (item == "Mall")
		{
			shopOpen = false;
            shop = false;
            buildItem = oMall;
            buildPrice = price;
            buildWood = woodPrice;
            buildStone = stonePrice;
            Build(64, 64);
		}
	}
	
	
}