/// @description Insert description here
// You can write your code in this editor
if(step > room_speed * 1){
    step = 0;
}
if(step == 0){
    wood += 1 * lvl;
}
step++;
if(lvlup == true){
    lvlup = false;
    lvl++;
}