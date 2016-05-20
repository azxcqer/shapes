#define glower
///glower()
if image_alpha >= alphaMax
or image_alpha <= alphaMin
{
    alphaMod *= -1
}

image_alpha+= alphaStep*alphaMod


#define glower_init
///glowerinit()
//how much the opacity varies each step
alphaStep = 0.01
//the multiplier. sets if it's fading or coming back
alphaMod = 1
//lower opacity limit
alphaMin = 0.5
//max opacity limit
alphaMax = 1
//alpha randomizer
//so things don't glow all at the same time
image_alpha = random_range(alphaMax, alphaMin)
