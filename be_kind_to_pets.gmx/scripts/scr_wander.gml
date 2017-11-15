//scr_wander(wanderdist,spd,xmin,xmax,ymin,ymax)
var RandMove = irandom(room_speed*5)

WanderDist = argument0 //The distance in pixels your object will wander
spd = argument1;
xmin=argument2;
xmax=argument3;
ymin=argument4;
ymax=argument5;

if(RandMove == 0 || DestX==noone){
    DestX = (x + irandom_range(-WanderDist, WanderDist));
    DestY = (y + irandom_range(-WanderDist, WanderDist));
    

    if(DestX>xmax && xmax!=noone){
        DestX=xmax;
    }else if(DestX<xmin && xmin!=noone){
        DestX=xmin;
    }

    
    if(DestY > ymax && ymax!=noone){
        DestY = ymax;
    }else if(DestY < ymin && ymin!=noone){
        DestY = ymin;
    }
    
}else{
    mp_potential_step(DestX, DestY, spd, false);
}
