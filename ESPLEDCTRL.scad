Detailgrad = 15; 
$fn=Detailgrad; 
holewithorigin=false; 
module ESPLEDCTRL(){
	board_thickness = 1.600;
	eta = 0.2;
	board_polygon = [[0.000,0.000],[70.168,0.000],[70.168,30.163],[0.000,30.163]];
	board_size = [70.168,30.163];
	board_origin = [-5.080,-4.763];
	translate([0,0,0]) union()   // PCB whith parts and text
	{
		color("green")linear_extrude(height=board_thickness,center=false, convexity=10)
		union()  // PCB 
		{
			difference() // PCB and holes 
			{
				translate(board_origin)  polygon(points = board_polygon); //Board
				translate([-3.016,23.178]) circle(r=1.100,$fn=$fn); //Hole
				translate([-3.016,-2.857]) circle(r=1.100,$fn=$fn); //Hole
				translate([62.865,-2.857]) circle(r=1.100,$fn=$fn); //Hole
				translate([62.865,23.178]) circle(r=1.100,$fn=$fn); //Hole
				if (Detailgrad > 9) // Drill part holes 
				{					translate([4.572,2.540])circle(r=1.500,$fn=$fn); //hole
					translate([34.290,17.780])circle(r=1.500,$fn=$fn); //hole
					translate([0.000,15.240])circle(r=0.500,$fn=$fn); //TSOP38 1
					translate([0.000,12.700])circle(r=0.500,$fn=$fn); //TSOP38 2
					translate([0.000,10.160])circle(r=0.500,$fn=$fn); //TSOP38 3
					translate([35.560,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.1
					translate([38.100,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.2
					translate([40.640,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.3
					translate([43.180,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.4
					translate([45.720,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.5
					translate([48.260,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.6
					translate([50.800,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.7
					translate([53.340,-1.270])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP1.8
					translate([35.560,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.1
					translate([38.100,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.2
					translate([40.640,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.3
					translate([43.180,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.4
					translate([45.720,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.5
					translate([48.260,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.6
					translate([50.800,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.7
					translate([53.340,21.590])circle(r=0.500,$fn=$fn); //WEMOS-D1-MINI JP2.8
					translate([-0.762,1.524])circle(r=0.750,$fn=$fn); //DC-DC-STEP-DOWN-LM2596 IN+
					translate([-0.762,18.796])circle(r=0.750,$fn=$fn); //DC-DC-STEP-DOWN-LM2596 IN-
					translate([38.862,1.524])circle(r=0.750,$fn=$fn); //DC-DC-STEP-DOWN-LM2596 OUT+
					translate([38.862,18.796])circle(r=0.750,$fn=$fn); //DC-DC-STEP-DOWN-LM2596 OUT-
				} // end Drill part holes
			} //end difference() PCB and holes 
			if (holewithorigin) 
			{
				//Print a little cross in the PCB holes 
					translate([-3.016,23.178]) { polygon([[0,0],[-0.28,-0.28],[-0.28,0.28]]); polygon([[0,0],[0.28,0.28],[0.28,-0.28]]);} //Hole
					translate([-3.016,-2.857]) { polygon([[0,0],[-0.28,-0.28],[-0.28,0.28]]); polygon([[0,0],[0.28,0.28],[0.28,-0.28]]);} //Hole
					translate([62.865,-2.857]) { polygon([[0,0],[-0.28,-0.28],[-0.28,0.28]]); polygon([[0,0],[0.28,0.28],[0.28,-0.28]]);} //Hole
					translate([62.865,23.178]) { polygon([[0,0],[-0.28,-0.28],[-0.28,0.28]]); polygon([[0,0],[0.28,0.28],[0.28,-0.28]]);} //Hole
			}
		} //end union() // PCB 
		if (Detailgrad > 10) color("Goldenrod",1) translate([0,0,board_thickness-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
					translate([23.660,4.430]) rotate([0,0,90.000]) square([0.400,0.900], center = true); //SOT353 1
			translate([23.660,5.080]) rotate([0,0,90.000]) square([0.400,0.900], center = true); //SOT353 2
			translate([23.660,5.730]) rotate([0,0,90.000]) square([0.400,0.900], center = true); //SOT353 3
			translate([22.060,5.730]) rotate([0,0,90.000]) square([0.400,0.900], center = true); //SOT353 4
			translate([22.060,4.430]) rotate([0,0,90.000]) square([0.400,0.900], center = true); //SOT353 5
			translate([0.000,15.240]) circle(r=0.754,$fn=$fn);
			translate([0.000,12.700]) circle(r=0.754,$fn=$fn);
			translate([0.000,10.160]) circle(r=0.754,$fn=$fn);
			translate([22.606,10.160]) square([1.168,1.600], center = true); //SJ_2 1
			translate([24.130,10.160]) square([1.168,1.600], center = true); //SJ_2 2
			translate([25.654,10.160]) square([1.168,1.600], center = true); //SJ_2 3
			translate([35.560,-1.270]) circle(r=0.754,$fn=$fn);
			translate([38.100,-1.270]) circle(r=0.754,$fn=$fn);
			translate([40.640,-1.270]) circle(r=0.754,$fn=$fn);
			translate([43.180,-1.270]) circle(r=0.754,$fn=$fn);
			translate([45.720,-1.270]) circle(r=0.754,$fn=$fn);
			translate([48.260,-1.270]) circle(r=0.754,$fn=$fn);
			translate([50.800,-1.270]) circle(r=0.754,$fn=$fn);
			translate([53.340,-1.270]) circle(r=0.754,$fn=$fn);
			translate([35.560,21.590]) circle(r=0.754,$fn=$fn);
			translate([38.100,21.590]) circle(r=0.754,$fn=$fn);
			translate([40.640,21.590]) circle(r=0.754,$fn=$fn);
			translate([43.180,21.590]) circle(r=0.754,$fn=$fn);
			translate([45.720,21.590]) circle(r=0.754,$fn=$fn);
			translate([48.260,21.590]) circle(r=0.754,$fn=$fn);
			translate([50.800,21.590]) circle(r=0.754,$fn=$fn);
			translate([53.340,21.590]) circle(r=0.754,$fn=$fn);
			translate([-0.762,1.524]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([-0.762,18.796]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([38.862,1.524]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([38.862,18.796]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([21.590,21.908]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([21.590,19.050]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([21.590,16.192]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([11.430,21.908]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([11.430,19.050]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([11.430,16.192]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([6.350,19.050]) rotate([0,0,180.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([3.175,19.050]) rotate([0,0,180.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
		}
			translate([0.000,15.240]) circle(r=0.500,$fn=$fn);
			translate([0.000,12.700]) circle(r=0.500,$fn=$fn);
			translate([0.000,10.160]) circle(r=0.500,$fn=$fn);
			translate([35.560,-1.270]) circle(r=0.500,$fn=$fn);
			translate([38.100,-1.270]) circle(r=0.500,$fn=$fn);
			translate([40.640,-1.270]) circle(r=0.500,$fn=$fn);
			translate([43.180,-1.270]) circle(r=0.500,$fn=$fn);
			translate([45.720,-1.270]) circle(r=0.500,$fn=$fn);
			translate([48.260,-1.270]) circle(r=0.500,$fn=$fn);
			translate([50.800,-1.270]) circle(r=0.500,$fn=$fn);
			translate([53.340,-1.270]) circle(r=0.500,$fn=$fn);
			translate([35.560,21.590]) circle(r=0.500,$fn=$fn);
			translate([38.100,21.590]) circle(r=0.500,$fn=$fn);
			translate([40.640,21.590]) circle(r=0.500,$fn=$fn);
			translate([43.180,21.590]) circle(r=0.500,$fn=$fn);
			translate([45.720,21.590]) circle(r=0.500,$fn=$fn);
			translate([48.260,21.590]) circle(r=0.500,$fn=$fn);
			translate([50.800,21.590]) circle(r=0.500,$fn=$fn);
			translate([53.340,21.590]) circle(r=0.500,$fn=$fn);
			translate([-0.762,1.524]) circle(r=0.750,$fn=$fn);
			translate([-0.762,18.796]) circle(r=0.750,$fn=$fn);
			translate([38.862,1.524]) circle(r=0.750,$fn=$fn);
			translate([38.862,18.796]) circle(r=0.750,$fn=$fn);

		}
		if (Detailgrad > 12) color("Goldenrod",1) translate([0,0,board_thickness-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
				}

		}
		if (Detailgrad > 10) color("Goldenrod",1) translate([0,0,-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
					translate([0.000,15.240]) circle(r=0.754,$fn=$fn);
			translate([0.000,12.700]) circle(r=0.754,$fn=$fn);
			translate([0.000,10.160]) circle(r=0.754,$fn=$fn);
			translate([35.560,-1.270]) circle(r=0.754,$fn=$fn);
			translate([38.100,-1.270]) circle(r=0.754,$fn=$fn);
			translate([40.640,-1.270]) circle(r=0.754,$fn=$fn);
			translate([43.180,-1.270]) circle(r=0.754,$fn=$fn);
			translate([45.720,-1.270]) circle(r=0.754,$fn=$fn);
			translate([48.260,-1.270]) circle(r=0.754,$fn=$fn);
			translate([50.800,-1.270]) circle(r=0.754,$fn=$fn);
			translate([53.340,-1.270]) circle(r=0.754,$fn=$fn);
			translate([35.560,21.590]) circle(r=0.754,$fn=$fn);
			translate([38.100,21.590]) circle(r=0.754,$fn=$fn);
			translate([40.640,21.590]) circle(r=0.754,$fn=$fn);
			translate([43.180,21.590]) circle(r=0.754,$fn=$fn);
			translate([45.720,21.590]) circle(r=0.754,$fn=$fn);
			translate([48.260,21.590]) circle(r=0.754,$fn=$fn);
			translate([50.800,21.590]) circle(r=0.754,$fn=$fn);
			translate([53.340,21.590]) circle(r=0.754,$fn=$fn);
			translate([-0.762,1.524]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([-0.762,18.796]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([38.862,1.524]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([38.862,18.796]) rotate([0,0,0.000]) square(2.500, center = true, $fn=$fn);
			translate([46.990,17.780]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
			translate([46.990,13.970]) rotate([0,0,90.000]) square([2.000,4.000], center = true); //PAD2X4 P$1
		}
			translate([0.000,15.240]) circle(r=0.500,$fn=$fn);
			translate([0.000,12.700]) circle(r=0.500,$fn=$fn);
			translate([0.000,10.160]) circle(r=0.500,$fn=$fn);
			translate([35.560,-1.270]) circle(r=0.500,$fn=$fn);
			translate([38.100,-1.270]) circle(r=0.500,$fn=$fn);
			translate([40.640,-1.270]) circle(r=0.500,$fn=$fn);
			translate([43.180,-1.270]) circle(r=0.500,$fn=$fn);
			translate([45.720,-1.270]) circle(r=0.500,$fn=$fn);
			translate([48.260,-1.270]) circle(r=0.500,$fn=$fn);
			translate([50.800,-1.270]) circle(r=0.500,$fn=$fn);
			translate([53.340,-1.270]) circle(r=0.500,$fn=$fn);
			translate([35.560,21.590]) circle(r=0.500,$fn=$fn);
			translate([38.100,21.590]) circle(r=0.500,$fn=$fn);
			translate([40.640,21.590]) circle(r=0.500,$fn=$fn);
			translate([43.180,21.590]) circle(r=0.500,$fn=$fn);
			translate([45.720,21.590]) circle(r=0.500,$fn=$fn);
			translate([48.260,21.590]) circle(r=0.500,$fn=$fn);
			translate([50.800,21.590]) circle(r=0.500,$fn=$fn);
			translate([53.340,21.590]) circle(r=0.500,$fn=$fn);
			translate([-0.762,1.524]) circle(r=0.750,$fn=$fn);
			translate([-0.762,18.796]) circle(r=0.750,$fn=$fn);
			translate([38.862,1.524]) circle(r=0.750,$fn=$fn);
			translate([38.862,18.796]) circle(r=0.750,$fn=$fn);

		}
		if (Detailgrad > 12) color("Goldenrod",1) translate([0,0,-0.017]) linear_extrude(height=0.035,center=false, convexity=10) difference()  { 
	  union() { 
				}

		}
		union() // parts 
		{
			translate([22.860,5.080,board_thickness])rotate([0,0,90])SOT353();  //IC1 74HC1G08GW
			translate([0.000,12.700,board_thickness])rotate([0,0,270])TSOP38();  //IC2 
			translate([24.130,10.160,board_thickness])SJ_2();  //SJ1 
			translate([45.085,10.160,board_thickness])rotate([0,0,90])WEMOS_D1_MINI();  //U$1 WEMOS-D1-MINI
			translate([19.050,10.160,0])rotate([180,0,0])DC_DC_STEP_DOWN_LM2596();  //U$2 DC-DC-STEP-DOWN-LM2596
			translate([21.590,21.908,board_thickness])PAD2X4();  //X5 
			translate([21.590,19.050,board_thickness])PAD2X4();  //X6 
			translate([21.590,16.192,board_thickness])PAD2X4();  //X7 
			translate([11.430,21.908,board_thickness])PAD2X4();  //X8 
			translate([11.430,19.050,board_thickness])PAD2X4();  //X9 
			translate([11.430,16.192,board_thickness])PAD2X4();  //X10 
			translate([46.990,17.780,0])rotate([180,0,180])PAD2X4();  //X11 
			translate([46.990,13.970,0])rotate([180,0,180])PAD2X4();  //X12 
			translate([6.350,19.050,board_thickness])rotate([0,0,90])PAD2X4();  //X13 
			translate([3.175,19.050,board_thickness])rotate([0,0,90])PAD2X4();  //X14 
		} //endunion() 
	} // // PCB whith parts and text  
	module SOT353() //IC1 74HC1G08GW
	{
	rotate([0,0,270])  translate([-0.550,-1.000,0]) linear_extrude(10) square([1.100,2.000]); //Dummy Package
	}
	module TSOP38() //IC2 
	{
	rotate([0,0,90])  translate([-3.300,-2.500,0]) linear_extrude(10) square([4.800,5.000]); //Dummy Package
	}
	module SJ_2() //SJ1 
	{
	 translate([-2.413,-1.016,0]) linear_extrude(10) square([4.826,2.032]); //Dummy Package
	}
	module WEMOS_D1_MINI() //U$1 WEMOS-D1-MINI
	{
	rotate([0,0,270])  translate([-17.399,-12.700,0]) linear_extrude(10) square([34.544,25.400]); //Dummy Package
	}
	module DC_DC_STEP_DOWN_LM2596() //U$2 DC-DC-STEP-DOWN-LM2596
	{
	rotate([0,0,180])  translate([-21.590,-10.414,0]) linear_extrude(10) square([43.180,20.828]); //Dummy Package
	}
	module PAD2X4() //X5 
	{
	union(); //No Dimension
	}
	include <C:\DEVELOP\Eagle.Bibliotheken\ulp\packages.scad>;

	include <packages.scad>;

} // end module

ESPLEDCTRL(); //Show module
//Created by generate-scad.ulp version 1.4
