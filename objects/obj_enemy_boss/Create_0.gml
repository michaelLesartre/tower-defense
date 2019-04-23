/// @description Insert description here
// You can write your code in this editor
path_start(global.enemypath, 0, path_action_stop, false)
spawn = instance_create_layer(x, y+32, "instances", obj_spawn_boss);
repair = instance_create_layer(x, y-32, "instances", obj_repair_system_boss)
drive = instance_create_layer(x, y, "instances", obj_drive_boss);
weapons1 = instance_create_layer(x, y+96, "instances", obj_enemy_laser_boss);
weapons2 = instance_create_layer(x, y-96, "instances", obj_enemy_laser_boss);
components = ds_list_create();

ds_list_add(components, drive);
ds_list_add(components, spawn);
ds_list_add(components, repair);
ds_list_add(components, weapons1);
ds_list_add(components, weapons2);
drive.container = self
weapons1.container = self
spawn.container = self
repair.container = self
weapons2.container = self

shielded=0
max_shield=1
overcharge=1.2