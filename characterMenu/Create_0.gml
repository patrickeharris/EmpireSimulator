
open = false;

items = ds_list_create();

ds_list_add(items, ["Banker", "You have reached 2000 coins", 1]);
ds_list_add(items, ["Architect", "You have built ten buildings", 2]);
ds_list_add(items, ["Mayor", "Your population has reached ten people", 3]);

itemCount = ds_list_size(items);

selected = 0;

//GUI

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = guiWidth - (menuWidth + menuMargin);