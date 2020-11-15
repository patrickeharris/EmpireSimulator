/// @description Insert description here
// You can write your code in this editor
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 12;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Skip Cutscene";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;


audio_play_sound(sMenuMusic, 1, true);