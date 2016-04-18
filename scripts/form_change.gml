#define form_change
///former_change(form)
//changes the form to the other form
var a=argument0
form=a
//set de default because all the forms use this even to calculate the mods
jumpspeed = jumpDef;
movespeed = moveDef;
grav = gravDef;
switch a {
    case 2:
        movespeed*=moveMod
        break
    case 3:
        jumpspeed*=jumpMod
        break
    case 6:
        grav*=gravMod
}

#define former_init
///former_init
//storing the default values
jumpDef = jumpspeed;
moveDef = movespeed;
gravDef = grav;

//forms mods
//lime speed mod
moveMod=1.5
//yellow jump mod
jumpMod=1.5
//blue mod
gravMod=0.5
