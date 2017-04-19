///scr_show_basic_effect(sprite, image_speed, glow)

var spr = argument0;
var spd = argument1;
var glow = argument2;
var effect = noone;

if (glow) {
    effect = instance_create(x, y, obj_basic_glow_effect);
} else {
    effect = instance_create(x, y, obj_basic_effect);
}

effect.sprite_index = spr;
effect.image_speed = spd;
