module handle(){
    handlebase();
//    handletop();
}
module handlebase(){
    difference(){
        union(){
//            translate([-120,0,-10]){
//                cube([10, 230, 10],center = true);
//            }
            translate([0,-0,0]){
                cube([50, 151, 15], center = true);
                handlebaseslide();
            }
        }
        handletop();
    
    }

}
module handletop(){

        union(){
            translate([-55,0,52]){
                cube([120, 60, 10],center = true);
            }
            translate([0,0,27.5]){
                cube([10,60,40],center = true);
            }
            translate([-110,0,30]){
                cube([10,60,46],center = true);
            }
            translate([0,-20,7]){
                cylinder(8, d = 8, center = true);
            }
            translate([0,20,7]){
                cylinder(8, d = 8, center = true);
            }   
            translate([-110, 20,3]){
                cylinder(8, d = 8, center = true);
            }
            translate([-110, -20, 3]){
                cylinder(8, d = 8, center = true);
            }               
        }

}
module handlebaseslide(){
    difference(){
        translate([0, 0, -25]){
            rotate([90,90,0]){
                rotate([0,0,30]){
                    cylinder(151, d = 50, center = true, $fn = 6);
                }
            }
        }
        translate([0,0,-35]){
            cube([50,152, 35], center = true);
        }
    }
}
handle();