
open = false;

items = ds_list_create();

ds_list_add(items, ["Banker", "You have reached 5000 coins", 1, "Allows you to earn interest on your coins"]);
ds_list_add(items, ["Architect", "You have built 10 buildings", 2, "Allows you to get 1.5x resource output"]);
ds_list_add(items, ["Mayor", "Your population has reached 25 people", 3, "Allows trade deals to be 0.5x the price"]);

itemCount = ds_list_size(items);

selected = 0;

//GUI

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;

previewWidth = guiWidth - (menuWidth + menuMargin);

//Outfit Variables

globalvar banker;

globalvar architect;

globalvar mayor;

banker = false;
architect = false;
mayor = false;

