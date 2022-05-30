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

translate([0,0,12])
difference(){
union(){
cylinder(r=7.5,h=3,$fn=40);
translate([-7.5,0,0])cube([15,15,3]);
}
cylinder(d=5,h=3,$fn=20);
}

translate([-10,12,-1])cube([20,3,20]);
}
