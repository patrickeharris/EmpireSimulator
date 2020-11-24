if (!open)
{
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
draw_text_transformed(guiWidth / 2 + 200, 50, "CHARACTER MENU", 2, 2, 0);

//Draw Each Item
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
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}


//Preview
var arr = items[| selected];
var name = arr[0];
var condition = arr[1];
var index = arr[2];
var desc = arr[3];

var _x = (menuMargin + menuWidth) + previewWidth / 2;
var _y = guiHeight / 2;

//Draw Sprite

var s = 2;

draw_sprite_ext(sPlayer, index, _x, _y - 20, s, s, 0, -1, 1);


//Draw Description
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_x, _y + 80, condition);
draw_text(_x, _y + 120, desc);
draw_set_valign(fa_top);
draw_set_halign(fa_left);