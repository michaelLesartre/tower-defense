display_set_gui_size(1024, 768);
draw_set_color(c_gray); 
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), 0); 
draw_set_color(c_maroon);  
draw_set_halign(fa_center); 

draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 20), @"How to Play
Click on a tower gain access of it and then click on the enemy subsystem you want the tower to target");

draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 80), "Towers");

draw_sprite(spr_tower, 0, display_get_gui_width()/2 - 200, display_get_gui_height() - (display_get_gui_height() - 160));
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 150), "Laser Tower: damages enemy subsystems");

draw_sprite(spr_tower_ion, 0, display_get_gui_width()/2 - 250, display_get_gui_height() - (display_get_gui_height() - 240));
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 230), "Ion Tower: temporarily disables enemy subsystems");

draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 300), "Enemies");
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 320), "Gray enemies are the basic enemy type");
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 340), "Blue enemies are faster than all of the other enemies");
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 360), "Green enemies have more health than all of the other enemies");
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 380), "Brown enemies can heal other enemies");
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 400), "Pink enemies can spawn smaller enemies");
draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 420), "Purple enemies are what spawn out of the pink enemies");

draw_text(display_get_gui_width()/2, display_get_gui_height() - (display_get_gui_height() - 700), "esc: go back");