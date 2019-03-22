/// @description Insert description here
// You can write your code in this editor
instance_destroy(weapons);
instance_destroy(shields);
instance_destroy(drive);
instance_destroy(spawn);
ds_list_clear(components);
ds_list_destroy(components);
instance_destroy(self);