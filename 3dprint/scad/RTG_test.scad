difference(){
    rotate([0,0,30])
    cylinder(d=67,h=60,$fn=6);
    rotate([0,0,30])translate([0,0,2])
    cylinder(d=64,h=65,$fn=6);
    translate([0,0,25])cube([35,70,72],center=true);
}

translate([0,0,1])
cube([35,46.8,2],center=true);

translate([0,0,30])
cube([50,3,60],center=true);

$fn=12;

difference(){
translate([-10,-1.5,60])rotate([-30,0,0])
difference(){
translate([0,0,-3])cube([20,5,23]);
translate([5,0,12])rotate([-90,0,0])cylinder(d=2.4,h=6);
translate([15,0,12])rotate([-90,0,0])cylinder(d=2.4,h=6);
}
translate([0,-3,30])
cube([50,3,60],center=true);
}

b=47.4;
h=35.4;

translate([0,0,30])rotate([-90,0,0])
difference(){
union(){
translate([h/2,b/2,0])cylinder(d=8,h=6,$fn=30);
translate([-h/2,b/2,0])cylinder(d=8,h=6,$fn=30);
translate([-h/2,-b/2,0])cylinder(d=8,h=6,$fn=30);
translate([h/2,-b/2,0])cylinder(d=8,h=6,$fn=30);
}
translate([h/2,b/2,-1])cylinder(d=3.2,h=7,$fn=12);
translate([-h/2,b/2,-1])cylinder(d=3.2,h=7,$fn=12);
translate([-h/2,-b/2,-1])cylinder(d=3.2,h=7,$fn=12);
translate([h/2,-b/2,-1])cylinder(d=3.2,h=7,$fn=12);
}
