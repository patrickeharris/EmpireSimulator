/// @description Insert description here
// You can write your code in this editor
randomize();
instance_create_layer(irandom_range(13, 1352), 21, "Player", oEnemy);
instance_create_layer(irandom_range(13, 1352), 756, "Player", oEnemy);
instance_create_layer(13, irandom_range(21, 756), "Player", oEnemy);
instance_create_layer(1352, irandom_range(21, 756), "Player", oEnemy);
instance_create_layer(irandom_range(13, 1352), 21, "Player", oEnemy);
instance_create_layer(irandom_range(13, 1352), 756, "Player", oEnemy);
instance_create_layer(13, irandom_range(21, 756), "Player", oEnemy);
instance_create_layer(1352, irandom_range(21, 756), "Player", oEnemy);
instance_create_layer(irandom_range(13, 1352), 21, "Player", oEnemyRanged);
instance_create_layer(irandom_range(13, 1352), 756, "Player", oEnemyRanged);
instance_create_layer(13, irandom_range(21, 756), "Player", oEnemyRanged);
instance_create_layer(1352, irandom_range(21, 756), "Player", oEnemyRanged);

if(instance_exists(oBarracks)){
    instance_create_layer(oBarracks.x + irandom_range(-100, 100), oBarracks.y + irandom_range(-100, 100), "Player", oEnemy);
}