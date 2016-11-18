$fn = 6;
module 3sliposlide(){

    translate([0, 0, 20]){
        rotate([0, 90, 0]){
            difference(){
                cube([141, 90, 40], center = true);
                translate([5.55, 0, 0]){
                    cube([140, 79, 31], center = true);
                }
            }    
        }
    }
    translate([-60,0,20]){
        rotate([0, 180, 0]){
            slide(141);
        }
    }

}
module slide(   eight){
    rotate([0, 0, -30]){
        difference(){
            cylinder(height, d = 100, center= true);
            
                rotate([0,0, 30]){
                    translate([20, 0, 0]){
                        cube([100, 100, height+1], center = true);                    
                    }
    
                }
    
        }
    }
}

3sliposlide();