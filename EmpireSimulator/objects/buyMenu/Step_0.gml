/// @description Insert description here
// You can write your code in this editor
if(!shopOpen && keyboard_check_pressed(ord("E"))){
    shopOpen = true;
    shop = true;
}
else if(shopOpen && keyboard_check_pressed(ord("E"))){
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
    if(keyboard_check_pressed(vk_enter) && money >= price){
        money -= price;
    }
}