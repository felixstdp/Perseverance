$fn=60;
difference(){
union(){
    
hull(){
cylinder(d=25,h=6);
translate([65,-3,0])cube([5,6,6]);
translate([-70,-3,0])cube([5,6,6]);
}
cylinder(d=20,h=8);

translate([74,0,5])rotate([90,0,0])
cylinder(d=10,h=6,center=true);

translate([-74,0,5])rotate([90,0,0])
cylinder(d=10,h=6,center=true);

translate([68,-3,0])cube([6,6,5]);
translate([-74,-3,0])cube([6,6,5]);
}

translate([74,0,5])rotate([90,0,0])
cylinder(d=3,h=7,center=true,$fn=30);

translate([-74,0,5])rotate([90,0,0])
cylinder(d=3,h=7,center=true,$fn=30);

cylinder(d=3,h=10,$fn=30);

hull(){
translate([60,0,0])cylinder(d=2,h=10);
translate([12,6,0])cylinder(d=2,h=10);    
translate([12,-6,0])cylinder(d=2,h=10);
}

hull(){
translate([-60,0,0])cylinder(d=2,h=10);
translate([-12,6,0])cylinder(d=2,h=10);    
translate([-12,-6,0])cylinder(d=2,h=10);
}

}
