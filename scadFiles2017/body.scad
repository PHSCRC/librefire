use <nema17.scad>
use <liposlide.scad>
use <pislide.scad>
use <handle.scad>
use <longir.scad>
use <shortir.scad>
use <shortestir.scad>



module body(){
    difference(){
       cube([240, 150, 150], center = true);
        translate([0, 0, 15]){
            cube([210, 130, 130.01], center = true);
        }
        translate([113, 0, 20]){
            cube([25,100,120], center = true);
        }
        translate([0, 55, -27]){
            rotate([0, 0, 90]){
                #nema17();
                #shaft();  
            }
        }
        translate([0,-55,-27]){
            rotate([0, 0, -90]){
                #nema17();
                #shaft();  
            }
        }
        translate([0,0,68]){
           handle();
        }
        translate([90,0,-80]){
            cylinder(20.1, d = 22.1, center = true);
            translate([0,0,0]){
                #ballcaster();
            }
        }
        translate([-90,0,-80]){
            cylinder(20.1, d = 22.1, center = true);
            translate([0,0,0]){
                #ballcaster();
            }
        }
        translate([20,0,-61]){
            #cube([20,20,30], center = true);
        }
        translate([120, 110,-50]){
            rotate([-45,90,0]){
                shortestir();
            }
        }
        translate([-120,110,-50]){
            rotate([-45,-90,0]){
                shortestir();
            }
        }        
        translate([120, -110,-50]){
            rotate([45,90,0]){
                shortestir();
            }
        }
        translate([-120, -110,-50]){
            rotate([45,-90,0]){
                shortestir();
            }
        }    
    }

    difference(){
        translate([-90,-0,15]){
            cube([30,100,130], center = true);
        }
        translate([-55 , -0, -5]){
            #3sliposlide();
        }
        translate([-95, 0, 60.1]){
            rotate([0,0,90]){
                pilipo();
            }
            
        }

        
    }
    difference(){
        translate([80,-60, 10]){
            cube([80, 20, 130], center = true);
        }

        translate([80, -60, 45.1]){
            #pilipo();
        }

        
    }
    translate([50,-30,-0]){
        rotate([0,0,0]){
            difference(){
        
                translate([20,90, 10]){
                    cube([90, 20, 130], center = true);
                }
                translate([120, 123, 30.1]){
                    #pislide();
                }

            
            }
        }
    }
}

module pilipo(){
    cube([55, 12, 60],center = true);
}
module boxbot(){
    body();


}
module ballcaster(){
    cylinder(15, d=22, center = true);
    translate([0,0,-6]){
        sphere(r=10);       
    }

    
}
boxbot();