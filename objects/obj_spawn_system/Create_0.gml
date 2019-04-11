/// @description Insert description here
// You can write your code in this editor
max_hp = 4;
hp = max_hp;
charge=0
base_max_charge = 300;
max_charge = base_max_charge
overloaded = false

hp_thickness = 9
hp_radius=36

ion=false;
ion_timer_step=600;

minion[0] = noone
minion[1] = noone

// the coordinates of the start of the path
path_x = 0;
path_y = 800;

container = noone
path_start(global.enemypath, 0, path_action_stop, false)