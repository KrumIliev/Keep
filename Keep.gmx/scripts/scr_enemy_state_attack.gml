///scr_enemy_state_attack
var_action = ATTACK;

if (instance_exists(path)) {
    path.run_path = false;
}

if (image_index >= attack_trigger_index && can_attack) {
    can_attack = false;
    script_execute(attack_script);
}
