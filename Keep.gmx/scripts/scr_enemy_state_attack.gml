///scr_enemy_state_attack
path.run_path = false;
var_action = ATTACK;

if (image_index >= 4 && can_attack) {
    can_attack = false;
    script_execute(attack_script);
}
