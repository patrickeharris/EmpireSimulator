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
}