///scr_add_player
var location_found = false;
var xx = 0;
var yy = 0;
var type = GENERATOR_EMPTY;

while (!location_found) {
    xx = random_range(1, (room_width - 64) / 32);
    yy = random_range(1, (room_height - 64) / 32);
    type = obj_level_generator.level[xx, yy];
    
    if (type == GENERATOR_FLOOR) {
        location_found = true;
    }
}

instance_create(xx * 32, yy * 32, obj_player);
view_visible[0] = true;
view_visible[1] = false;
object_set_visible(obj_player_stats, true);
