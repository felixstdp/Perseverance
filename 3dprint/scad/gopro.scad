rotate([-90,0,0]){
difference(){
union(){
cylinder(r=7.5,h=2.75,$fn=40);
translate([-7.5,0,0])cube([15,15,2.75]);
}
cylinder(d=5,h=3,$fn=20);
}

translate([0,0,6])
difference(){
union(){
cylinder(r=7.5,h=3,$fn=40);
translate([-7.5,0,0])cube([15,15,3]);
}
cylinder(d=5,h=3,$fn=20);
}

translate([0,0,12.25])
difference(){
union(){
cylinder(r=7.5,h=2.75,$fn=40);
translate([0,0,2.75])cylinder(r1=7.5,r2=5.5,h=2,$fn=40);    
translate([-7.5,0,0])cube([15,15,2.75]);
}
cylinder(d=5,h=6,$fn=20);
translate([0,0,2])cylinder(d=10,h=3,$fn=6);
}
difference(){
hull(){
translate([-7.5,12,0])cube([15,3,15]);
translate([0,12,7.5])rotate([-90,0,0])
cylinder(d=12,h=20,$fn=30);
}
translate([0,15,7.5])rotate([-90,0,0])
cylinder(d=8.4,h=20,$fn=30);
}
}
