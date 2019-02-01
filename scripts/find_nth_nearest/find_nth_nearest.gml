var x1, y1, obj, n, list, nearest

x1=argument0
y1=argument1
obj=argument2
n=argument3
n = min(max(1,n), instance_number(obj));

list = ds_priority_create();
nearest = noone;
with(obj) ds_priority_add(list, id, distance_to_point(x1, y1));
repeat(n){
	nearest = ds_priority_delete_min(list);
}
ds_priority_destroy(list);
return nearest;
