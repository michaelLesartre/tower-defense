/// @description Enemy with spawn, shield, laser, and drive
// You can write your code in this editor
path_start(0, 0, path_action_stop, true)
weapons = instance_create_layer(x, y+32, "instances", obj_enemy_laser_spawn);
shields = instance_create_layer(x, y-32, "instances", obj_shield_spawn)
spawn = instance_create_layer(x + 40, y, "instances", obj_spawn_system);
drive = instance_create_layer(x, y, "instances", obj_drive_spawn);
components = ds_list_create();
ds_list_add(components, spawn);
ds_list_add(components, weapons);
ds_list_add(components, drive);
ds_list_add(components, shields)
spawn.container = self
drive.container = self
weapons.container = self
shields.container = self
shielded=0
max_shield=1