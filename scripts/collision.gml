#define collision
///collision()
//because I figured that everybody didn't put the collision code on a script just for funsies
if collisionActive=true {
    landed=place_meeting(x, y + 1, c_solid) && vsp==0
    if !global.paused {
        // vertical speed
        vsp += grav
        
        //Horizontal Collision
        if (place_meeting(x + hsp, y, c_solid) ) {
            while(!place_meeting(x + sign(hsp), y, c_solid)) {
                x += sign(hsp);
            }
            hsp = 0;
        }
        
        x += (hsp);
        
        //Vertical Collision
        if (place_meeting(x, y + vsp, c_solid)) {
            while(!place_meeting(x, y + sign(vsp), c_solid)) {
                y += sign(vsp);
            }
                vsp = 0;
        }
        
        y = round(y) + round(vsp);
    
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