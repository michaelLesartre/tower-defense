/// @description Insert description here
// You can write your code in this editor
radius = 96
draw_health_ring(x, y, radius, 10*shielded, 100, 100, 0, 360, 1, c_blue)
repeat(shielded-1){
	radius+=10
	draw_circle(x, y, radius, true)
}