 /// @description Insert description here
// You can write your code in this editor
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
			banker = true;
			architect = false;
			mayor = false;
		}
		if (name == "Architect" && numBuildings >= 10)
		{
			architect = true;
			banker = false;
			mayor = false;
		}
		if (name == "Mayor" && population >= 10)
		{
			mayor = true;
			banker = false;
			architect = false;
		}
	}
	
	
}
