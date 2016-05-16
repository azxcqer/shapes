#define floaty
///to actually float
//I like to float, nice to meet you
//dir 1 is down, -1 is up
if floatRunningCd=0 {
    y += floatDir * floatSpeed
}
if floatDir = 1 {
    if y >= floatBot {
        floatHammerTime()
    }
}
if floatDir = -1 {
    if y <= floatTop {
        floatHammerTime()
    }
}
if floatRunningCd > 0 {
    floatRunningCd--
}

#define floatyInit
///floaty inits
//the actual point of origin. used to revert the floatness
floatOrigin=y
//how much up it floats
floatUp=0.5
//the actual point
floatTop = y - floatUp
//how  much down it floats
floatDown=0.5
//the actual point again
floatBot= y + floatDown

//how much time it does expend on the top/bottom
floatCooldown=0.5*room_speed
//the running cooldown
floatRunningCd=0

//how much the height change each step
floatSpeed=0.025
//the direction which it's floating, either 1 or -1
floatDir=1

#define floatHammerTime
///stop!
floatRunningCd = floatCooldown
floatDir *= -1
