/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(!open){
    exit;
}

//Draw Shop UI
draw_set_color(c_black);
draw_set_alpha(0.8);
draw_rectangle(0, 0, guiWidth, guiHeight, 0);
draw_set_alpha(0.5);
draw_rectangle(menuMargin, 0, menuMargin + menuWidth, guiHeight, 0);
draw_set_alpha(1);
draw_set_color(c_white);

draw_set_halign(fa_right);
draw_text_transformed(guiWidth / 2 + 100, 50, "TRADER", 2, 2, 0);

//Draw Each Item
for(var i = 0; i < itemCount; i++){
    var arr = items[| i];
    var name = arr[0];
    var woodPrice = arr[1];
    var stonePrice = arr[2];
    var coins = arr[3];
    
    var _x = menuMargin + menuWidth / 2 - 200;
    var _y = (guiHeight / 2) + (i - selected) * 32;
    
    var s = 1;
    if(i == selected){
        s = 1.4;
    }
    if(i == selected){
        name = "> " + name + " <";
    }
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed(_x, _y, name, s, s , 0);
    draw_set_halign(fa_left);
    draw_text(_x + 170, _y, string(woodPrice));
    draw_text(_x + 235, _y, "+");
    draw_text(_x + 300, _y, string(stonePrice));
    draw_text(_x + 365, _y, "=");
    draw_text(_x + 430, _y, string(coins));
    draw_set_halign(fa_center);
    draw_sprite_ext(sMoney, 0, _x + 410, _y, 0.75, 0.75, 0, -1, 1);
    draw_sprite_ext(sWood, 0, _x + 150, _y, 0.75, 0.75, 0, -1, 1);
    draw_sprite_ext(sStone, 0, _x + 280, _y, 0.75, 0.75, 0, -1, 1);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}

draw_set_halign(fa_right);
draw_text(guiWidth / 2 + 100, guiHeight - 150, "Hit ENTER To Trade");
draw_set_halign(fa_left);
draw_set_valign(fa_top);
