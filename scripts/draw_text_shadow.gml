#define draw_text_shadow
///draw_text_shadow(x, y, text, textcolor, shadowcolor, shadowdist, halign, valign)
var oldColor = draw_get_color();

var tX, tY, text, tColor, sColor, sDist, halign, valign;

tX = argument0
tY = argument1;
text = argument2;
tColor = argument3;
sColor = argument4;
sDist = argument5;
halign = argument6;
valign = argument7;

//draw_set_valign(fa_middle)
draw_set_halign(halign)
draw_set_valign(valign)
draw_set_colour(sColor);
draw_text(tX+sDist,tY+sDist,text);
draw_set_colour(tColor);
draw_text(tX,tY,text);

//back to normal

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(oldColor)



#define draw_text_simple
///draw_text_simple(x,y,text)

var tX = argument0;
var tY = argument1;
var text = argument2;

draw_text_shadow(tX, tY, text, c_white, c_black,1,fa_center,fa_middle)


#define draw_text_colored
///draw_text_colored(x, y, text, color)

var tX = argument0;
var tY = argument1;
var text = argument2;
var color = argument3;

draw_text_shadow(tX, tY, text, color, c_black,1,fa_center,fa_middle)