///text_outline(x, y, text, textColor, outlineColor)

var xx = argument0;
var yy = argument1;
var text = argument2;
var text_color = argument3;
var outline_color = argument4;

//Outline
draw_set_color(outline_color);
draw_text(xx-1, yy, text);
draw_text(xx+1, yy, text);
draw_text(xx, yy-1, text);
draw_text(xx, yy+1, text);

//Actual text
draw_set_color(text_color);
draw_text_colour(xx, yy, text, c_yellow, c_yellow, c_orange, c_orange, 1.5);

