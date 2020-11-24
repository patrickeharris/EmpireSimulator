/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("Y")) && (selected != 5 && selected != 8)){
    if(selected < itemCount - 1){
        selected++;
    }
    else{
        with(oBot){
            instance_destroy();
        }
        instance_destroy();
    }
}

if(woodshop == 1){
    woodshop = 2;
    selected++;
}
if(movewood == 1){
    movewood = 2;
    selected++;
}