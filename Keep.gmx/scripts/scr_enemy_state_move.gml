///scr_enemy_state_move
scr_enemy_state_check();
path.run_path = true;
var_action = MOVE;

if (instance_exists(obj_player)) {
    var dir = point_direction(x, y, obj_player.x, obj_player.y);
    var_face = scr_get_face(dir);
}

phy_position_x = path.x;
phy_position_y = path.y;


