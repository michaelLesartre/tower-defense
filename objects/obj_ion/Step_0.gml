/// @description Insert description here
// You can write your code in this editor
duration-=1;
if (instance_exists(target)){
	if(object_is_ancestor(target.object_index, obj_subsystem)){
		target.ion=true;
	}
}
if (duration==0){
	instance_destroy(self)
}