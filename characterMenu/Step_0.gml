if(!open && keyboard_check_pressed(ord("P"))){
    open = true;
    shop = true;
}
else if(open && (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape))){
    open = false;
    shop = false;
}

if(open){
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
    var name = arr[0];
    var condition = arr[1];
	
	
	if (keyboard_check_pressed(vk_enter))
	{
        if (name == "Banker" && money >= 2000)
		{
			sPlayer.image_index = 1;
		}
		if (name == "Architect" && numBuildings >= 10)
		{
			sPlayer.image_index = 2;
		}
		if (name == "Mayor" && population >= 10)
		{
			sPlayer.image_index = 3;
		}
	}
	
	
}
