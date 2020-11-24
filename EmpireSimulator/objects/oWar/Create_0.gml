/// @description Insert description here
// You can write your code in this editor
randomize();
instance_create_layer(irandom_range(13, 1352), 21, "Player", oEnemy);
instance_create_layer(irandom_range(13, 1352), 756, "Player", oEnemy);
instance_create_layer(13, irandom_range(21, 756), "Player", oEnemy);
instance_create_layer(1352, irandom_range(21, 756), "Player", oEnemy);
instance_create_layer(irandom_range(13, 1352), 21, "Player", oEnemyRanged);
instance_create_layer(irandom_range(13, 1352), 756, "Player", oEnemyRanged);
instance_create_layer(13, irandom_range(21, 756), "Player", oEnemyRanged);
instance_create_layer(1352, irandom_range(21, 756), "Player", oEnemyRanged);

globalvar numEnemies;
numEnemies = false;
globalvar lose;
lose = false;

if(instance_exists(oBarracks)){
    if(population * 50 <= gdp){
        if(round(population * 0.1) < 10){
            for(var i = 0; i < round(population * 0.1); i++){
                instance_create_layer(irandom_range(83, 1300), irandom_range(71, 700), "Player", oFriendly);
            }
        }
        else
        {
            for(var i = 0; i < 10; i++){
                instance_create_layer(irandom_range(83, 1300), irandom_range(71, 700), "Player", oFriendly);
            }
        }
    }
}