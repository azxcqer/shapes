#define collision
///collision()
//because I figured that everybody didn't put the collision code on a script just for funsies
if collisionActive=true {
    landed = place_meeting(x, y + 1, wall) && vsp == 0
    unstucker()
    if !global.paused {
        // vertical speed
        var magic = 0.9
        //Horizontal Collision
        if (place_meeting(x + hsp, y, wall) ) {
            var s = sign(hsp)*magic
            while(!place_meeting(x + s, y, wall)) {
                x += s;
            }
            
            hsp = 0;
        }
        
        x += (hsp);
        
        //Vertical Collision
        if (place_meeting(x, y + vsp, wall)) {
            var d = sign(vsp)*magic
            while(!place_meeting(x, y + d, wall)) {
                y += d;
            }
            vsp = 0;
        }
        else {
            vsp += grav
            y += (vsp);
        }    
    } else { 
        x = x;
        y = y
    }
    /*
    if place_meeting(x,y,cl_lava)
    {
        instance_destroy()
    }    
    */
    //destroys if it leaves the room at all
    if   bbox_bottom > room_height {
        instance_destroy()
    }
}

#define collision_init
///initializing collision variables
grav = 0.08;
hsp = 0;
vsp = 0;
jumpspeed = 1.5;
movespeed = 1;
dir = -1
landed = false
collisionActive = true
wall = c_solid
#define unstucker
//unstucker()
while place_meeting(x, y, wall) {
    y -= 0.8
}
if landed {
    var a = floor(y),
        b = ceil(y),
        c = abs(y - a),
        d = abs(y - b)
        
    if c < d {
        y = a
    }
    if d < c {
        y = b
    }
}
