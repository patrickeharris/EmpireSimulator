// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Build(width, height){
    build = instance_create_layer(oPlayer.x, oPlayer.y, "UI", buildManager);
    build.image_xscale = width;
    build.image_yscale = height;
    return build;
}

