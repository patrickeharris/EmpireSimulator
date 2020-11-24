/// @description Insert description here
// You can write your code in this editor
items = ds_list_create();
ds_list_add(items, ["Hi! Welcome to your town! I'm MIA, the Management and Infrastructure Assistant. Would you like me to show you around? Press Y for Yes or N for No."]);
ds_list_add(items, ["Awesome! Well let's start at the bottom of the screen. There you will see the resources you have, the population size, a countdown, and the GDP per capita. \nPress 'Y' To Continue"]);
ds_list_add(items, ["If the GDP per capita falls below 2500, then your city will not be strong enought to maintain an army. \nPress 'Y' To Continue"]);
ds_list_add(items, ["In the shop (That's the computer-looking one) you can buy all the structures. \nPress 'Y' To Continue"]);
ds_list_add(items, ["Residential structures increase population. Commercial structures increase GDP. A Barracks allows you to have an army.  \nPress 'Y' To Continue"]);
ds_list_add(items, ["Now walk on over to the bottom right and open up the Shop with 'E' and buy a Wood Harvester. I'll be waiting"]);
ds_list_add(items, ["Alright! Now you're collecting wood! \nPress 'Y' To Continue"]);
ds_list_add(items, ["When you press 'E'on a structure you can sell, move or upgrade it. \nPress 'Y' To Continue"]);
ds_list_add(items, ["Go move the Wood Collector!"]);
ds_list_add(items, ["Now in the Trade Station (The other structure in the bottom right) you can trade resources to get coins. \nPress 'Y' To Continue"]);
ds_list_add(items, ["Be sure to check back as more trades become available over time. \nPress 'Y' To Continue"]);
ds_list_add(items, ["Press 'P' to see the character menu where you can unlock different classes. \nPress 'Y' To Continue"]);
ds_list_add(items, ["If you're a cheatskidoodler you can use 'C' to get resources and 'T' to skip to the next event. \nPress 'Y' To Continue"]);
ds_list_add(items, ["Once the timer gets to 0, the VILLAN's armies will attack you! So you better get building! \nPress 'Y' To Continue"]);
ds_list_add(items, ["Oh yeah! One other thing. There might be some natural events coming up that you might want to look out for. \nPress 'Y' To Continue"]);
ds_list_add(items, ["Welp, I'll leave you to it. Good luck! \nPress 'Y' To Continue"]);
itemCount = ds_list_size(items);
selected = 0;

globalvar woodshop;
woodshop = 0;
globalvar movewood;
movewood = 0;