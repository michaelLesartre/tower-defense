/// @description Enemy with repair, shield, laser, and drive
// You can write your code in this editor
path_start(0, 0, path_action_stop, true)
weapons = instance_create_layer(x, y+32, "instances", obj_enemy_laser_repair);
shields = instance_create_layer(x, y-32, "instances", obj_shield_repair)
repair = instance_create_layer(x + 40, y, "instances", obj_repair_system);
drive = instance_create_layer(x, y, "instances", obj_drive_repair);
components = ds_list_create();
ds_list_add(components, repair);
ds_list_add(components, weapons);
ds_list_add(components, drive);
ds_list_add(components, shields)
repair.container = self
drive.container = self
weapons.container = self
shields.container = self
shielded=0
max_shield=1