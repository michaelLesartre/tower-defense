draw_self()
draw_healthbar(x-22, y-30, x-30, y+30, hp*100/max_hp, 0, c_red, c_green, 2, false, true)
drawy = y-30;
repeat(max_hp+1){
draw_line_width_color(x-22, drawy, x-30, drawy, 2, c_black, c_black);
drawy+=60/max_hp;
}