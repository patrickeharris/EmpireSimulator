/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("Y"))){
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