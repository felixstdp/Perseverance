difference(){
    rotate([0,0,30])
    cylinder(d=67,h=60,$fn=6);
    rotate([0,0,30])translate([0,0,2])
    cylinder(d=64,h=65,$fn=6);
    translate([0,0,25])cube([35,70,72],center=true);
}

translate([0,0,1])
cube([35,46.8,2],center=true);

translate([0,10,30])
cube([50,3,60],center=true);
