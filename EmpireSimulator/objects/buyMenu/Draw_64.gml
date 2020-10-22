/// @description Insert description here
// You can write your code in this editor
if(!shopOpen){
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

//Draw Each Item
for(var i = 0; i < itemCount; i++){
    var arr = items[| i];
    var item = arr[1];
    
    var _x = menuMargin + menuWidth / 2;
    var _y = (guiHeight / 2) + (i - selected) * 32;
    
    var s = 1;
    if(i == selected){
        s = 1.4;
    }
    if(i == selected){
        item = "> " + item + " <";
    }
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed(_x, _y, item, s, s , 0);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}


//Preview
var arr = items[| selected];
var item = arr[0];
var name = arr[1];
var price = arr[2];
var desc = arr[3];

var _x = (menuMargin + menuWidth) + previewWidth / 2;
var _y = guiHeight / 2;

var spr = asset_get_index("s" + item);

if(sprite_exists(spr)){
    var s = 2;
    draw_sprite_ext(spr, 0, _x - 60, _y - 75, s, s, 0, -1, 1);
}

//Draw Description
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_x, _y + 80, desc);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//Draw Price
draw_set_valign(fa_bottom);
draw_text(menuMargin + menuWidth + 4, guiHeight - 4, "Price: " + string(price));
draw_set_halign(fa_right);
draw_text(guiWidth - 4, guiHeight - 4, "Hit ENTER to Buy");
draw_set_halign(fa_left);
draw_set_valign(fa_top);

