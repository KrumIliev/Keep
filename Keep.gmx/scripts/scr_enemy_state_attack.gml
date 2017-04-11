///scr_enemy_state_attack
var_action = ATTACK;

if (instance_exists(path)) {
    path.run_path = false;
}

if (image_index >= 4 && can_attack) {
    can_attack = false;
    script_execute(attack_script);
}
