$fn=12;
b=47.4;
h=35.4;

difference(){
union(){
translate([-25,0,0])cube([50,60,3]);
translate([-10,0,3])cube([20,10,3]);
translate([0,28,0]){
translate([h/2,b/2,0])cylinder(d=8,h=6,$fn=30);
translate([-h/2,b/2,0])cylinder(d=8,h=6,$fn=30);
translate([-h/2,-b/2,0])cylinder(d=8,h=6,$fn=30);
translate([h/2,-b/2,0])cylinder(d=8,h=6,$fn=30);
}    
}
translate([5,-1,3])rotate([-90,0,0])cylinder(d=2.4,h=10);
translate([-5,-1,3])rotate([-90,0,0])cylinder(d=2.4,h=10);
translate([-10,20,0])cube(20);
translate([0,28,0])
{
translate([h/2,b/2,-1])cylinder(d=2.4,h=8,$fn=12);
translate([-h/2,b/2,-1])cylinder(d=2.4,h=8,$fn=12);
translate([-h/2,-b/2,-1])cylinder(d=2.4,h=8,$fn=12);
translate([h/2,-b/2,-1])cylinder(d=2.4,h=8,$fn=12);
}
}

difference(){
translate([-10,60,-1.4])rotate([30,0,0])
difference(){
cube([20,23,5]);
translate([15,14,0])cylinder(d=2.4,h=6);
translate([5,14,0])cylinder(d=2.4,h=6);
}
translate([-25,0,-3])cube([50,70,3]);
}
