$fn = 50;

module pololu(){
    difference(){
        cylinder(5, d = 19, center = true);
        cylinder(5.1, d = 5, center = true);
        for(i = [0:4]){
            rotate([0,0,90*i]){
                translate([6.25,0,0]){
                    cylinder(5.1, d = 2.5, center = true);
                }
            }
        }
    }
}

module wheel(){
    difference(){
        cylinder(3, d = 130, center = true);
        cylinder(3.1, d = 13,center = true);
        for(i = [0:8]){
            rotate([0,0,45*i]){
                translate([10,0,0]){
                    #cylinder(5.1, d = 4, center = true);
                }
            }
        }
        for(i = [0:4]){
            rotate([0,0,90*i]){
                translate([19.5,0,0]){
                    #cylinder(5.1, d = 4, center = true);
                }
            }
        }
    }
    
}
//wheel();
//pololu();
module wheelPololuMount(){
   difference(){
        cylinder(20, d = 45, center = true);
        translate([0,0,5]) cylinder(15, d = 30, center = true);
        cylinder(20.1, d = 5, center = true);
        for(i = [0:4]){
            rotate([0,0,90*i]){
                translate([6.25,0,0]){
                    cylinder(20.1, d = 2.5, center = true);
                }
            }
        }
        for(i = [0:4]){
            rotate([0,0,90*i]){
                translate([19.5,0,0]){
                    #cylinder(20.1, d = 4, center = true);
                }
            }
        }
    }
    
    
}
wheelPololuMount();