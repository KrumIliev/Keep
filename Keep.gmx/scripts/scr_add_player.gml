///scr_add_player
location = scr_find_free_location();
instance_create(location[0] * 32, location[1] * 32, obj_player);
view_visible[0] = true;
view_visible[1] = false;
object_set_visible(obj_player_stats, true);
