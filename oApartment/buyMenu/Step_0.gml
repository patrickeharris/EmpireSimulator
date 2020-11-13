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
			money -= price;
			wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oHouse);
		}
		if (item == "WoodHarvester")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
	        instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oWoodHarvester);
		}
		if (item == "QuantumQuarry")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oQuantumQuarry);
		}
        if (item == "AutoMiner")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oAutoMiner);
		}
        if (item == "Apartment")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oApartment);
		}
        if (item == "Restaurant")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oRestaurant);
		}
        if (item == "Mall")
		{
			money -= price;
            wood -= woodPrice;
			stone -= stonePrice;
			instance_create_layer(oPlayer.x - 20, oPlayer.y, "Buildings", oMall);
		}
	}
	
	
}