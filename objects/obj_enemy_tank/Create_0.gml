/// @description Insert description here
// You can write your code in this editor
path_start(global.enemypath, 0, path_action_stop, false)
weapons = instance_create_layer(x, y+32, "instances", obj_enemy_laser_tank);
shields = instance_create_layer(x, y-32, "instances", obj_shield_tank)
drive = instance_create_layer(x, y, "instances", obj_drive_tank);
components = ds_list_create();
ds_list_add(components, weapons);
ds_list_add(components, drive);
ds_list_add(components, shields)
drive.container = self
weapons.container = self
shields.container = self
shielded=0
max_shield=1