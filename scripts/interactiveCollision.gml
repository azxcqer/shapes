#define interactiveCollision
///interactiveCollision(target)
var o = argument0,
    e = o.object_index,
    f = o.form,
    ox = o.x,
    oy = o.y,
    
if collision_point(ox, oy, o_changer, false, true){
    if o.active = true {
        if form != f {
            form_change(f)
        }
    }
}
if collision_point(ox, oy, o_barrier, false, true){
    if f = form {
        with o {
            instance_destroy()
        }
    }
}
if e = o_esteira 
|| e = o_esteiraR {
    //this probably is not the best method... but it's effective for the time being
    var offset = 1.5
    if collision_line(x - offset, y + 1, x + sprite_width + offset, y + 1, o_esteira, false, true) {
        hsp += e.hspMod
    }
}
if e = cl_hazard {
    if !invul {
        //play death sound
        instance_destroy()
    }
}

#define interactiveCollisionInit
///interactiveCollisionInit()
interactiveColRange = 1
//vertical
vX1 = 0
vY1 = 0
vX2 = 0
vY2 = 0

//horizontal
hX1 = 0
hY1 = 0
hX2 = 0
hY2 = 0