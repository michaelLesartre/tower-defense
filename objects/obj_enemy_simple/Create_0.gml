/// @description Insert description here
// You can write your code in this editor
weapons = instance_create_layer(x, y, "instances", obj_enemy_laser_system);
drive = instance_create_layer(x-30, y, "instances", obj_drive_system);
components = ds_list_create();
ds_list_add(components, weapons);
ds_list_add(components, drive);
drive.container = self
weapons.container = self