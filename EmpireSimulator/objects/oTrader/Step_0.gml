/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(!open && keyboard_check_pressed(ord("E")) && collide){
    open = true;
    shop = true;
}
else if(open && (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_escape))){
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
    var woodPrice = arr[1];
    var stonePrice = arr[2];
    var coins = arr[3];
	
	
	if (keyboard_check_pressed(vk_enter) && wood >= woodPrice && stone >= stonePrice)
	{
        money += coins;
		wood -= woodPrice;
		stone -= stonePrice;
	}
	
	
}