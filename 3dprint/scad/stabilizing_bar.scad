$fn=60;
difference(){
union(){
    
hull(){
cylinder(d=25,h=5);
translate([60,-3,0])cube([5,6,5]);
translate([-65,-3,0])cube([5,6,5]);
}
cylinder(d=15,h=8);

translate([65,0,5])rotate([90,0,0])
cylinder(d=10,h=6,center=true);

translate([-65,0,5])rotate([90,0,0])
cylinder(d=10,h=6,center=true);
}

translate([65,0,5])rotate([90,0,0])
cylinder(d=3,h=7,center=true,$fn=30);

translate([-65,0,5])rotate([90,0,0])
cylinder(d=3,h=7,center=true,$fn=30);

cylinder(d=5,h=10,$fn=30);

minkowski(){
linear_extrude(10)
polygon([[55,0],[10,6],[10,-6]]);
cylinder(d=2,h=1);
}

minkowski(){
linear_extrude(10)
polygon([[-55,0],[-10,6],[-10,-6]]);
cylinder(d=2,h=2);
}

}
