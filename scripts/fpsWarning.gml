if fps < 60 
|| global.debugger {
    draw_text_shadow(guiWidth, 0, string(fps), c_white, c_black, 1, fa_right, fa_top)
}
