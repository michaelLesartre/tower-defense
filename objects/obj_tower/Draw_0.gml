/// @description Insert description here
// You can write your code in this editor
if global.selected=self{
	draw_rectangle_color(x-40, y-60, x+40, y+20, c_green, c_green, c_green, c_green, false)
}

draw_self()
draw_healthbar(x-29, y-5, x+28, y+3, hp*100/max_hp, 0, c_red, c_green, 0, false, true)
drawx = x-29;
repeat(max_hp+1){
draw_line_width_color(drawx, y-5, drawx, y+3, 2, c_black, c_black);
drawx+=57/max_hp;
}