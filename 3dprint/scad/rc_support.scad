$fn=12;
b=47.4;
h=35.4;

difference(){
union(){
translate([-25,0,0])cube([50,60,3]);
translate([-8.5,0,3])cube([17,10,3]);
translate([0,28,0]){
translate([h/2,b/2,0])cylinder(d=8,h=8,$fn=30);
translate([-h/2,b/2,0])cylinder(d=8,h=8,$fn=30);
translate([-h/2,-b/2,0])cylinder(d=8,h=8,$fn=30);
translate([h/2,-b/2,0])cylinder(d=8,h=8,$fn=30);
}    
}
translate([5,-1,3])rotate([-90,0,0])cylinder(d=2.4,h=10);
translate([-5,-1,3])rotate([-90,0,0])cylinder(d=2.4,h=10);
translate([-15,12,-1])cube(30);
translate([0,28,0])
{
translate([h/2,b/2,-1])cylinder(d=2.35,h=10,$fn=12);
translate([-h/2,b/2,-1])cylinder(d=2.35,h=10,$fn=12);
translate([-h/2,-b/2,-1])cylinder(d=2.35,h=10,$fn=12);
translate([h/2,-b/2,-1])cylinder(d=2.35,h=10,$fn=12);
}
translate([-16,45,-1])cylinder(d=2.4,h=10);
translate([16,45,-1])cylinder(d=2.4,h=10);
}

difference(){
translate([-15,60,-1.4])rotate([30,0,0])
difference(){
cube([30,23,5]);
translate([25,14,0])cylinder(d=2.4,h=6);
translate([5,14,0])cylinder(d=2.4,h=6);
}
translate([-25,0,-3])cube([50,70,3]);
}
