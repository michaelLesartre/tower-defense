/// @description Insert description here
// You can write your code in this editor
max_hp = 3;
hp = max_hp;
hp_thickness = 9
hp_radius=36

max_num_minions = 2;
spawn_step_time = 300;
alarm[0] = spawn_step_time;

// the coordinates of the start of the path
path_x = 0;
path_y = 608;

container = noone
path_start(0, 0, path_action_stop, false)