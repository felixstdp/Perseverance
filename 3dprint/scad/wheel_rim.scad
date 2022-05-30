$fn=120;

d_ext=47.5; // ajustar para que la cubierta encaje

d_int=3.1; // ajustar para que el motor encaje

difference(){
cylinder(d=d_ext,h=38);
translate([0,0,-1])cylinder(d=d_ext-3,h=40);
}
difference(){
union()
{
for(i=[0:60:300])
{
    rotate([0,0,i])translate([3.1,-0.75,0])
    cube(size=[20,1.5,12]);
} 
cylinder(d=16,h=22);
}
translate([0,0,-1])cylinder(d=d_int,h=24);
}
rotate([0,0,30])translate([1,-2,0])
cube(size=[2,4,22]);
