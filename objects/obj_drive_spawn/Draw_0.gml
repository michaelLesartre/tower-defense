draw_self()
draw_healthbar(x-62, y-30, x-70, y+30, hp*100/max_hp, 0, c_red, c_green, 2, false, true)
drawy = y-30;
repeat(max_hp+1){
draw_line_width_color(x-62, drawy, x-70, drawy, 2, c_black, c_black);
drawy+=60/max_hp;
}