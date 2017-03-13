///scr_create_wall(x, y, tileset)
var xx = argument0;
var yy = argument1;
var tileset = argument2;

var wall = instance_create(xx, yy, obj_wall);
wall.sprite_index = tileset;
wall.image_index = scr_get_wall_sprite(xx, yy);
scr_add_to_grid(xx, yy, GENERATOR_WALL);

return wall;

