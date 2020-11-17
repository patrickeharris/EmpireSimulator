/// @description Insert description here
// You can write your code in this editor
items = ds_list_create();
ds_list_add(items, ["Hi! Welcome to your town! I'm MIA, the Management and Infrastructure Assistant. Would you like me to show you around? Press Y for Yes or N for No."]);
ds_list_add(items, ["Awesome! Well let's start at the bottom of the screen. There you will see how many resources you have, the population size, the countdown for the next event, and the GDP."]);
ds_list_add(items, ["If the GDP falls below INSERT times the population, then your city will not be strong enought to maintain an army."]);
ds_list_add(items, ["Now walk on over to the bottom right and open up the Shop."]);
ds_list_add(items, ["Here you can buy all the structures. Residential structures increase population. Commercial structures increase GDP. A Barracks allows you to have an army. Let's start by building a Wood Harvester!"]);
ds_list_add(items, ["Alright! Now you're collecting wood!"]);
ds_list_add(items, ["Now open the Trade Station (The other structure in the bottom right)"]);
ds_list_add(items, ["Here you can get coins by trading resources."]);
itemCount = ds_list_size(items);
selected = 0;