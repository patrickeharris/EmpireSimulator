/// @description Insert description here
// You can write your code in this editor

//Menu To Show Health, Upgrade, and Sell


if(!collide){
    exit;
}

//Draw House Health Bar

draw_sprite(sHealthBarBG, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sHealthBar, 0, healthbar_x, healthbar_y, (health / health_max) * healthbar_width, healthbar_height);
draw_sprite(sHealthBarBorder, 0, healthbar_x, healthbar_y);
draw_set_halign(fa_center);
draw_text_transformed(healthbar_x + 27, healthbar_y - 18, "HOUSE", 0.5, 0.5, 0);


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

draw_set_halign(fa_center);
draw_text_transformed(guiWidth / 2, 50, "HOUSE", 2, 2, 0);

//Draw Each Item
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(guiWidth / 2 + 40, 150, string(lvl));
draw_text(guiWidth / 2, 150, "Level: ");

for(var i = 0; i < itemCount; i++){
    var arr = items[| i];
    var name = arr[0];
    
    var _x = menuMargin + menuWidth / 2;
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
    if(name == "Upgrade" || name == "> Upgrade <"){
        draw_text(_x + 150, _y, "Cost: ");
        draw_text(_x + 240, _y, string(2 * worth));
        draw_set_halign(fa_center);
        draw_sprite_ext(sMoney, 0, _x + 200, _y, 0.75, 0.75, 0, -1, 1);
    }
    if(name == "Sell" || name == "> Sell <"){
        draw_text(_x + 25, _y + 30, string(worth));
        draw_set_halign(fa_center);
        draw_sprite_ext(sMoney, 0, _x - 15, _y + 30, 0.75, 0.75, 0, -1, 1);
    }
}

draw_set_halign(fa_right);
draw_text(guiWidth / 2 + 100, guiHeight - 150, "Hit ENTER To Select");
draw_set_halign(fa_left);
draw_set_valign(fa_top);
