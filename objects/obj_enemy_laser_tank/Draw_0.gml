/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_health_ring(x, y, hp_radius, hp_thickness, 100, hp*100/max_hp, 0, 360, 1, c_green)
angle=0
l1 = hp_radius
l2 = hp_radius+hp_thickness
repeat(hp+1){
	draw_line_width_color(x+l1*cos(angle), y-l1*sin(angle),x+l2*cos(angle), y-l2*sin(angle), 3, c_black, c_black);
	angle+=2*pi/max_hp
}