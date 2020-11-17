/// @description Insert description here
// You can write your code in this editor
step++;
if(step % (room_speed * 5) == 0){
    step = 0;
    iron += 1 * lvl;
}
if(lvlup == true){
    lvlup = false;
    lvl++;
    worth *= 2;
}

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
	
	
if (keyboard_check_pressed(vk_enter) && name == "Move")
	{
        instance_destroy();
        open = false;
        shop = false;
        buildItem = oAutoMiner;
        buildPrice = 0;
        buildWood = 0;
        buildStone = 0;
        test = instance_create_layer(0, 0, "Buildings", oAutoMiner);
        width = test.bbox_right - test.bbox_left;
        height = test.bbox_bottom - test.bbox_top;
        Move(width, height);
        with test{
            instance_destroy();
        }
	}
	
	
if (keyboard_check_pressed(vk_enter) && name == "Sell")
	{
        open = false;
        shop = false;
        money += worth;
        instance_destroy();
	}

if (keyboard_check_pressed(vk_enter) && name == "Upgrade" && money >= 2 * worth)
	{
        open = false;
        shop = false;
        lvlup = true;
        money -= 2 * worth;
	}
}