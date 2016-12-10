//tutorial_dialog_box("text", speed, x, y)

text_object = instance_create(argument2, argument3, obj_credits_text);

with(text_object)
{
    //Spacing
    padding = 32;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    xx = argument2;
    yy = argument3;
    font = fnt_credits;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    //Draw the text based on maximum length of the room
    //Put the next line below the previous
    text_width = string_width_ext(text, font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text, font_size+(font_size/2), maxlength);
    
    box_width = text_width + (padding * 2);
    box_height = text_height + (padding * 2);  
}
