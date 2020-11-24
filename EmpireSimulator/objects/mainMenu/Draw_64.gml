/// @description Insert description here
// You can write your code in this editor
draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_items; i++)
{
    var offset = 2;
    var txt = menu[i];
    if(menu_cursor == i)
    {
        txt = string_insert("> ", txt, 0);
        var col = c_white;
    }
    else{
        var col = c_gray;
    }
    var xx = menu_x;
    var yy = menu_y - (menu_itemheight * (i * 1.5));
    draw_set_color(c_black);
    draw_text(xx-offset, yy, txt);
    draw_text(xx+offset, yy, txt);
    draw_text(xx, yy+offset, txt);
    draw_text(xx, yy-offset, txt);
    draw_set_color(col);
    draw_text(xx, yy, txt);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_text(gui_width/2, gui_height/2 + 200, "WASD to Move. Press E to Interact.");
    draw_set_halign(fa_right);
	//draw_text(gui_width - 400, gui_height/2 + 250, "Press T to Trigger Tornado Event (For Testing)");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
