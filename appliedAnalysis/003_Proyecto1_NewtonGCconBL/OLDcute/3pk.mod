#
#**************************
# SET UP THE INITIAL DATA *
#**************************
#   Problem :
#   *********
#   A problem arising in the estimation of structured O/D matrix
#   Source:  
#   M. Bierlaire, private communication
#   see also
#   M. Bierlaire and Ph. L. Toint,
#   MEUSE: an origin-destination estimator that exploits structure,
#   Transportation Research B, 29, 1, 47--60, 1995.
#   SIF input: Ph. Toint, Dec 1989, Corrected July 1993.
#   classification SUR2-MN-30-0
# Parameters
# Number of parking columns
# Number of centroids
# Gamma : general trust in the countings
# Objective for fill-up coefficients
# Inverse of the weights for fill-up coefficients
# Number of available countings
# Inverse of the weight on unknow cells
# Trip ends 
# Some interesting values...
# Countings
# Inverse of the trusts in countings
# Coefficients pour les parkings
# O/D matrix
# A priori information, but not parkings
# Parking coefficients
# Unknown parking entries
# Countings
# Parking columns
# 1,0
# 2,0
# 3,0
# 4,0
# 5,0
# 0,1
# 2,1
# 3,1
# 4,1
# 5,1
# 0,2
# 1,2
# 3,2
# 4,2
# 5,2
# Other columns
# 0,3
# 1,3
# 2,3
# 4,3
# 5,3
# 0,4
# 1,4
# 2,4
# 3,4
# 5,4
# 0,5
# 1,5
# 2,5
# 3,5
# 4,5
# Variance minimization
# A priori information, but not parkings
# Parking coefficients
	param npkc := 3;
	param npkcm1 := -1 + (3);
	param npkcp1 := 1 + (3);
	param ncent := 6;
	param ncentm1 := -1 + (6);
	param rncentm1 := 5.0;
	param gamma := 10000.0;
	param ft0 := 0.5;
	param ft1 := 0.5;
	param ft2 := 0.5;
	param wft0 := 1.0;
	param wft1 := 1.0;
	param wft2 := 1.0;
	param count := 9;
	param countm1 := -1 + (9);
	param defw := 999.999953;
	param cou0 := 910.0;
	param cou1 := 175.0;
	param cou2 := 1915.0;
	param cou3 := 450.0;
	param cou4 := 260.0;
	param cou5 := 80.0;
	param cou6 := 670.0;
	param cou7 := 1450.0;
	param cou8 := 990.0;
	param phi0 := (1.0) / (10000.0);
	param phi1 := (1.0) / (10000.0);
	param phi2 := (1.0) / (10000.0);
	param phi3 := (1.0) / (10000.0);
	param phi4 := (1.0) / (10000.0);
	param phi5 := (1.0) / (10000.0);
	param phi6 := (1.0) / (10000.0);
	param phi7 := (1.0) / (10000.0);
	param phi8 := (1.0) / (10000.0);
	param jp1 := 1 + (5);
	param jm1 := -1 + (5);
	param tmp := 1.0 / (80.0);
	param tmp1 := 20.0 / (80.0);

	var a1_0 >= 0.0 ,  := 0.5;
	var a2_0 >= 0.0 ,  := 0.5;
	var a3_0 >= 0.0 ,  := 0.5;
	var a4_0 >= 0.0 ,  := 0.5;
	var a5_0 >= 0.0 ,  := 0.5;
	var a0_1 >= 0.0 ,  := 0.5;
	var a2_1 >= 0.0 ,  := 0.5;
	var a3_1 >= 0.0 ,  := 0.5;
	var a4_1 >= 0.0 ,  := 0.5;
	var a5_1 >= 0.0 ,  := 0.5;
	var a0_2 >= 0.0 ,  := 0.5;
	var a1_2 >= 0.0 ,  := 0.5;
	var a3_2 >= 0.0 ,  := 0.5;
	var a4_2 >= 0.0 ,  := 0.5;
	var a5_2 >= 0.0 ,  := 0.5;
	var t0_3 >= 0.0 ,  := 100.0;
	var t1_3 >= 0.0 ,  := 140.0;
	var t2_3 >= 0.0 ,  := 120.0;
	var t4_3 >= 0.0 ,  := 20.0;
	var t5_3 >= 0.0 ,  := 20.0;
	var t0_4 >= 0.0 ,  := 200.0;
	var t1_4 >= 0.0 ,  := 180.0;
	var t2_4 >= 0.0 ,  := 20.0;
	var t3_4 >= 0.0 ,  := 600.0;
	var t5_4 >= 0.0 ,  := 40.0;
	var t0_5 >= 0.0 ,  := 50.0;
	var t1_5 >= 0.0 ,  := 30.0;
	var t2_5 >= 0.0 ,  := 70.0;
	var t3_5 >= 0.0 ,  := 150.0;
	var t4_5 >= 0.0 ,  := 20.0;

minimize obj:
	(0.01*t0_3 - 1.0)*(0.01*t0_3 - 1.0) + (0.007143*t1_3 - 1.0)*(0.007143*t1_3 - 
	1.0) + (0.008333*t2_3 - 1.0)*(0.008333*t2_3 - 1.0) + (0.05*t4_3 - 
	1.0)*(0.05*t4_3 - 1.0) + (0.05*t5_3 - 1.0)*(0.05*t5_3 - 1.0) + (0.0050*t0_4 - 
	1.0)*(0.0050*t0_4 - 1.0) + (0.005556*t1_4 - 1.0)*(0.005556*t1_4 - 1.0) + 
	(0.05*t2_4 - 1.0)*(0.05*t2_4 - 1.0) + (0.001667*t3_4 - 1.0)*(0.001667*t3_4 - 
	1.0) + (0.025*t5_4 - 1.0)*(0.025*t5_4 - 1.0) + (0.02*t0_5 - 1.0)*(0.02*t0_5 - 
	1.0) + (0.033333*t1_5 - 1.0)*(0.033333*t1_5 - 1.0) + (0.014286*t2_5 - 
	1.0)*(0.014286*t2_5 - 1.0) + (0.006667*t3_5 - 1.0)*(0.006667*t3_5 - 1.0) + 
	(0.05*t4_5 - 1.0)*(0.05*t4_5 - 1.0) + (0.4*a1_0 + 0.4*a2_0 + 0.4*a3_0 + 
	0.4*a4_0 + 0.4*a5_0 - 1.0)*(0.4*a1_0 + 0.4*a2_0 + 0.4*a3_0 + 0.4*a4_0 + 
	0.4*a5_0 - 1.0) + (0.4*a0_1 + 0.4*a2_1 + 0.4*a3_1 + 0.4*a4_1 + 0.4*a5_1 - 
	1.0)*(0.4*a0_1 + 0.4*a2_1 + 0.4*a3_1 + 0.4*a4_1 + 0.4*a5_1 - 1.0) + (0.4*a0_2 + 
	0.4*a1_2 + 0.4*a3_2 + 0.4*a4_2 + 0.4*a5_2 - 1.0)*(0.4*a0_2 + 0.4*a1_2 + 
	0.4*a3_2 + 0.4*a4_2 + 0.4*a5_2 - 1.0) + (((0.26373626373626374*a0_1 + 
	0.43956043956043955*a2_1 + 0.46153846153846156*a3_1 + 0.1978021978021978*a4_1 + 
	0.3516483516483517*a5_1 + 0.02197802197802198*a0_2 + 0.04395604395604396*a3_2 + 
	0.001098901098901099*t0_5 + 0.001098901098901099*t3_5 - 
	1.0)*(0.26373626373626374*a0_1 + 0.43956043956043955*a2_1 + 
	0.46153846153846156*a3_1 + 0.1978021978021978*a4_1 + 0.3516483516483517*a5_1 + 
	0.02197802197802198*a0_2 + 0.04395604395604396*a3_2 + 0.001098901098901099*t0_5 
	+ 0.001098901098901099*t3_5 - 1.0))/1.0e-4) + (((0.11428571428571428*a0_2 + 
	0.34285714285714286*a1_2 + 0.22857142857142856*a3_2 + 0.005714285714285714*t0_5 
	+ 0.005714285714285714*t1_5 + 0.005714285714285714*t3_5 - 
	1.0)*(0.11428571428571428*a0_2 + 0.34285714285714286*a1_2 + 
	0.22857142857142856*a3_2 + 0.005714285714285714*t0_5 + 
	0.005714285714285714*t1_5 + 0.005714285714285714*t3_5 - 1.0))/1.0e-4) + 
	(((0.10443864229765012*a1_0 + 0.2506527415143603*a2_0 + 
	0.06266318537859007*a3_0 + 0.18798955613577023*a4_0 + 0.2924281984334204*a5_0 + 
	0.20887728459530025*a2_1 + 0.2193211488250653*a3_1 + 0.09399477806788512*a4_1 + 
	0.1671018276762402*a5_1 + 0.020887728459530026*a3_2 + 5.221932114882506e-4*t3_4 
	+ 5.221932114882506e-4*t3_5 - 1.0)*(0.10443864229765012*a1_0 + 
	0.2506527415143603*a2_0 + 0.06266318537859007*a3_0 + 0.18798955613577023*a4_0 + 
	0.2924281984334204*a5_0 + 0.20887728459530025*a2_1 + 0.2193211488250653*a3_1 + 
	0.09399477806788512*a4_1 + 0.1671018276762402*a5_1 + 0.020887728459530026*a3_2 
	+ 5.221932114882506e-4*t3_4 + 5.221932114882506e-4*t3_5 - 1.0))/1.0e-4) + 
	(((0.0022222222222222222*t0_3 + 0.0022222222222222222*t0_4 + 
	0.0022222222222222222*t3_4 - 1.0)*(0.0022222222222222222*t0_3 + 
	0.0022222222222222222*t0_4 + 0.0022222222222222222*t3_4 - 1.0))/1.0e-4) + 
	(((0.7692307692307693*a1_0 + 0.0038461538461538464*t1_3 + 
	0.0038461538461538464*t1_4 - 1.0)*(0.7692307692307693*a1_0 + 
	0.0038461538461538464*t1_3 + 0.0038461538461538464*t1_4 - 1.0))/1.0e-4) + 
	(((1.5*a4_2 + 0.25*a5_2 + 0.0125*t4_5 - 1.0)*(1.5*a4_2 + 0.25*a5_2 + 
	0.0125*t4_5 - 1.0))/1.0e-4) + (((0.7164179104477612*a2_0 + 
	0.5970149253731343*a2_1 + 0.0014925373134328358*t2_3 + 
	0.0014925373134328358*t2_4 + 0.0014925373134328358*t0_5 + 
	0.0014925373134328358*t1_5 + 0.0014925373134328358*t2_5 + 
	0.0014925373134328358*t3_5 + 0.0014925373134328358*t4_5 - 
	1.0)*(0.7164179104477612*a2_0 + 0.5970149253731343*a2_1 + 
	0.0014925373134328358*t2_3 + 0.0014925373134328358*t2_4 + 
	0.0014925373134328358*t0_5 + 0.0014925373134328358*t1_5 + 
	0.0014925373134328358*t2_5 + 0.0014925373134328358*t3_5 + 
	0.0014925373134328358*t4_5 - 1.0))/1.0e-4) + (((0.13793103448275862*a1_0 + 
	0.3310344827586207*a2_0 + 0.2482758620689655*a4_0 + 0.38620689655172413*a5_0 + 
	0.27586206896551724*a2_1 + 0.12413793103448276*a4_1 + 0.2206896551724138*a5_1 + 
	6.89655172413793e-4*t0_3 + 6.89655172413793e-4*t1_3 + 6.89655172413793e-4*t2_3 
	+ 6.89655172413793e-4*t4_3 + 6.89655172413793e-4*t5_3 - 
	1.0)*(0.13793103448275862*a1_0 + 0.3310344827586207*a2_0 + 
	0.2482758620689655*a4_0 + 0.38620689655172413*a5_0 + 0.27586206896551724*a2_1 + 
	0.12413793103448276*a4_1 + 0.2206896551724138*a5_1 + 6.89655172413793e-4*t0_3 + 
	6.89655172413793e-4*t1_3 + 6.89655172413793e-4*t2_3 + 6.89655172413793e-4*t4_3 
	+ 6.89655172413793e-4*t5_3 - 1.0))/1.0e-4) + (((0.48484848484848486*a2_0 + 
	0.5656565656565656*a5_0 + 0.40404040404040403*a2_1 + 0.32323232323232326*a5_1 + 
	0.020202020202020204*a5_2 + 0.00101010101010101*t2_3 + 0.00101010101010101*t5_3 
	+ 0.00101010101010101*t2_4 + 0.00101010101010101*t5_4 - 
	1.0)*(0.48484848484848486*a2_0 + 0.5656565656565656*a5_0 + 
	0.40404040404040403*a2_1 + 0.32323232323232326*a5_1 + 0.020202020202020204*a5_2 
	+ 0.00101010101010101*t2_3 + 0.00101010101010101*t5_3 + 
	0.00101010101010101*t2_4 + 0.00101010101010101*t5_4 - 1.0))/1.0e-4) + 
	(((-0.8*a1_0 + 0.2*a2_0 + 0.2*a3_0 + 0.2*a4_0 + 0.2*a5_0)*(-0.8*a1_0 + 0.2*a2_0 
	+ 0.2*a3_0 + 0.2*a4_0 + 0.2*a5_0))/0.5) + (((0.2*a1_0 - 0.8*a2_0 + 0.2*a3_0 + 
	0.2*a4_0 + 0.2*a5_0)*(0.2*a1_0 - 0.8*a2_0 + 0.2*a3_0 + 0.2*a4_0 + 
	0.2*a5_0))/0.5) + (((0.2*a1_0 + 0.2*a2_0 - 0.8*a3_0 + 0.2*a4_0 + 
	0.2*a5_0)*(0.2*a1_0 + 0.2*a2_0 - 0.8*a3_0 + 0.2*a4_0 + 0.2*a5_0))/0.5) + 
	(((0.2*a1_0 + 0.2*a2_0 + 0.2*a3_0 - 0.8*a4_0 + 0.2*a5_0)*(0.2*a1_0 + 0.2*a2_0 + 
	0.2*a3_0 - 0.8*a4_0 + 0.2*a5_0))/0.5) + (((0.2*a1_0 + 0.2*a2_0 + 0.2*a3_0 + 
	0.2*a4_0 - 0.8*a5_0)*(0.2*a1_0 + 0.2*a2_0 + 0.2*a3_0 + 0.2*a4_0 - 
	0.8*a5_0))/0.5) + (((-0.8*a0_1 + 0.2*a2_1 + 0.2*a3_1 + 0.2*a4_1 + 
	0.2*a5_1)*(-0.8*a0_1 + 0.2*a2_1 + 0.2*a3_1 + 0.2*a4_1 + 0.2*a5_1))/0.5) + 
	(((0.2*a0_1 - 0.8*a2_1 + 0.2*a3_1 + 0.2*a4_1 + 0.2*a5_1)*(0.2*a0_1 - 0.8*a2_1 + 
	0.2*a3_1 + 0.2*a4_1 + 0.2*a5_1))/0.5) + (((0.2*a0_1 + 0.2*a2_1 - 0.8*a3_1 + 
	0.2*a4_1 + 0.2*a5_1)*(0.2*a0_1 + 0.2*a2_1 - 0.8*a3_1 + 0.2*a4_1 + 
	0.2*a5_1))/0.5) + (((0.2*a0_1 + 0.2*a2_1 + 0.2*a3_1 - 0.8*a4_1 + 
	0.2*a5_1)*(0.2*a0_1 + 0.2*a2_1 + 0.2*a3_1 - 0.8*a4_1 + 0.2*a5_1))/0.5) + 
	(((0.2*a0_1 + 0.2*a2_1 + 0.2*a3_1 + 0.2*a4_1 - 0.8*a5_1)*(0.2*a0_1 + 0.2*a2_1 + 
	0.2*a3_1 + 0.2*a4_1 - 0.8*a5_1))/0.5) + (((-0.8*a0_2 + 0.2*a1_2 + 0.2*a3_2 + 
	0.2*a4_2 + 0.2*a5_2)*(-0.8*a0_2 + 0.2*a1_2 + 0.2*a3_2 + 0.2*a4_2 + 
	0.2*a5_2))/0.5) + (((0.2*a0_2 - 0.8*a1_2 + 0.2*a3_2 + 0.2*a4_2 + 
	0.2*a5_2)*(0.2*a0_2 - 0.8*a1_2 + 0.2*a3_2 + 0.2*a4_2 + 0.2*a5_2))/0.5) + 
	(((0.2*a0_2 + 0.2*a1_2 - 0.8*a3_2 + 0.2*a4_2 + 0.2*a5_2)*(0.2*a0_2 + 0.2*a1_2 - 
	0.8*a3_2 + 0.2*a4_2 + 0.2*a5_2))/0.5) + (((0.2*a0_2 + 0.2*a1_2 + 0.2*a3_2 - 
	0.8*a4_2 + 0.2*a5_2)*(0.2*a0_2 + 0.2*a1_2 + 0.2*a3_2 - 0.8*a4_2 + 
	0.2*a5_2))/0.5) + (((0.2*a0_2 + 0.2*a1_2 + 0.2*a3_2 + 0.2*a4_2 - 
	0.8*a5_2)*(0.2*a0_2 + 0.2*a1_2 + 0.2*a3_2 + 0.2*a4_2 - 0.8*a5_2))/0.5);



	display a1_0;
	display a2_0;
	display a3_0;
	display a4_0;
	display a5_0;
	display a0_1;
	display a2_1;
	display a3_1;
	display a4_1;
	display a5_1;
	display a0_2;
	display a1_2;
	display a3_2;
	display a4_2;
	display a5_2;
	display t0_3;
	display t1_3;
	display t2_3;
	display t4_3;
	display t5_3;
	display t0_4;
	display t1_4;
	display t2_4;
	display t3_4;
	display t5_4;
	display t0_5;
	display t1_5;
	display t2_5;
	display t3_5;
	display t4_5;
display obj;
