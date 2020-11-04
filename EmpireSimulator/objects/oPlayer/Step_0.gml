//Determine if in Shop
if(shop){
    exit;
}


//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//Get Money (FOR TESTING REMOVE LATER)
if(keyboard_check_pressed((ord("C")))){
    money += 1000;
    wood += 1000;
    stone += 1000;
}

//Calculate Movement
var hMove = key_right - key_left;
var vMove = key_down - key_up;

hsp = hMove * walksp;
vsp = vMove * walksp;


//Horizontal Collision
if(place_meeting(x + hsp,y, oWall))
{
    while(!place_meeting(x + sign(hsp), y, oWall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if(place_meeting(x, y + vsp, oWall))
{
    while(!place_meeting(x, y + sign(vsp), oWall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Animation
image_speed = 1;
if(hsp == 0 && vsp == 0)
{
    sprite_index = sPlayer;
}
else
{
    sprite_index = sPlayerR;
}

if(hsp != 0)
{
    image_xscale = sign(hsp);
}

