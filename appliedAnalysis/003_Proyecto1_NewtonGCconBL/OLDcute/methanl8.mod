#
#**************************
# SET UP THE INITIAL DATA *
#**************************
#   Problem:
#   ********
#   The methanol-8 problem by Fletcher.
#   Source: Problem 2c in
#   J.J. More',"A collection of nonlinear model problems"
#   Proceedings of the AMS-SIAM Summer Seminar on the Computational
#   Solution of Nonlinear Systems of Equations, Colorado, 1988.
#   Argonne National Laboratory MCS-P60-0289, 1989.
#   SIF input: N. Gould, Dec 1989.
#   classification NOR2-MN-31-31
#   Least square problems are bounded below by zero
#   Solution
	param n := 8;
	param m := 2;
	param k := 2;
	param nm1 := -1 + (8);
	param nm2 := -2 + (8);
	param km := -1 + (2);
	param kp := 1 + (2);
	param a1 := 18.5751;
	param b1 := -3632.649;
	param c1 := 239.2;
	param a2 := 18.3443;
	param b2 := -3841.2203;
	param c2 := 228.0;
	param fl1 := 451.25;
	param fl2 := 684.25;
	param fv1 := 0.0;
	param fv2 := 0.0;
	param tf := 89.0;
	param b := 693.37;
	param d := 442.13;
	param q := 8386200.0;
	param pi0 := 1210.0;
	param pi1 := 1200.0;
	param pi2 := 1190.0;
	param pi3 := 1180.0;
	param pi4 := 1170.0;
	param pi5 := 1160.0;
	param pi6 := 1150.0;
	param pi7 := 1140.0;
	param invpi0 := 1.0 / (1210.0);
	param invpi1 := 1.0 / (1200.0);
	param invpi2 := 1.0 / (1190.0);
	param invpi3 := 1.0 / (1180.0);
	param invpi4 := 1.0 / (1170.0);
	param invpi5 := 1.0 / (1160.0);
	param invpi6 := 1.0 / (1150.0);
	param invpi7 := 1.0 / (1140.0);
	param smallhf := ((0.0) + ((((((89.0) * (89.0)) * (0.0422)) + ((89.0) * 
	(15.97))) + (0.0)) * (451.25))) + ((((((89.0) * (89.0)) * (0.0)) + ((89.0) * 
	(18.1))) + (0.0)) * (684.25));
	param bighf := ((0.0) + ((((((89.0) * (89.0)) * (0.0422)) + ((89.0) * (-1.59))) 
	+ (9566.67)) * (0.0))) + ((((((89.0) * (89.0)) * (0.0)) + ((89.0) * (8.74))) + 
	(10834.67)) * (0.0));
	param tftf := (89.0) * (89.0);
	param temp1 := (((((89.0) * (89.0)) * (0.0)) + ((89.0) * (8.74))) + (10834.67)) 
	* (0.0);
	param temp2 := (89.0) * (8.74);
	param im1 := -1 + (6);
	param ip1 := 1 + (6);

	var t0 := 120.0;
	var x0_1 := 0.09203;
	var x0_2 := 0.908;
	var t1 := 110.0;
	var x1_1 := 0.1819;
	var x1_2 := 0.8181;
	var t2 := 100.0;
	var x2_1 := 0.284;
	var x2_2 := 0.716;
	var t3 := 88.0;
	var x3_1 := 0.3051;
	var x3_2 := 0.6949;
	var t4 := 86.0;
	var x4_1 := 0.3566;
	var x4_2 := 0.6434;
	var t5 := 84.0;
	var x5_1 := 0.468;
	var x5_2 := 0.532;
	var t6 := 80.0;
	var x6_1 := 0.6579;
	var x6_2 := 0.3421;
	var t7 := 76.0;
	var x7_1 := 0.8763;
	var x7_2 := 0.1237;
	var v0 := 886.37;
	var v1 := 910.01;
	var v2 := 922.52;
	var v3 := 926.46;
	var v4 := 935.56;
	var v5 := 952.83;
	var v6 := 975.73;

minimize obj:
	(((-1.0 * x1_1 * (v0 + 693.37 )  + 
	(v0*x0_1*1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) + 
	693.37*x0_1)/100.0))^2 + 
	((x6_1*1.0*8.695652173913045e-4*exp(18.5751+(-3632.649/(t6+239.2)))) - x7_1)^2 
	+ (((-1.0 * x2_1 * (v1 + 693.37 )  + 
	(v0*x0_1*-1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) + 1.0 * 
	x1_1 * (v0 + 693.37 )  + 
	(v1*x1_1*1.0*8.333333333333334e-4*exp(18.5751+(-3632.649/(t1+239.2)))))/100.0))^2 + (((-1.0 * x3_1 * (v2 + -442.13 )  + 
	(v1*x1_1*-1.0*8.333333333333334e-4*exp(18.5751+(-3632.649/(t1+239.2)))) + 1.0 * 
	x2_1 * (v1 + 693.37 )  + 
	(v2*x2_1*1.0*8.403361344537816e-4*exp(18.5751+(-3632.649/(t2+239.2)))) - 
	451.25)/100.0))^2 + (((-1.0 * x4_1 * (v3 + -442.13 )  + 
	(v2*x2_1*-1.0*8.403361344537816e-4*exp(18.5751+(-3632.649/(t2+239.2)))) + 1.0 * 
	x3_1 * (v2 + -442.13 )  + 
	(v3*x3_1*1.0*8.474576271186439e-4*exp(18.5751+(-3632.649/(t3+239.2)))))/100.0))^2 + (((-1.0 * x5_1 * (v4 + -442.13 )  + 
	(v3*x3_1*-1.0*8.474576271186439e-4*exp(18.5751+(-3632.649/(t3+239.2)))) + 1.0 * 
	x4_1 * (v3 + -442.13 )  + 
	(v4*x4_1*1.0*8.547008547008547e-4*exp(18.5751+(-3632.649/(t4+239.2)))))/100.0))^2 + (((-1.0 * x6_1 * (v5 + -442.13 )  + 
	(v4*x4_1*-1.0*8.547008547008547e-4*exp(18.5751+(-3632.649/(t4+239.2)))) + 1.0 * 
	x5_1 * (v4 + -442.13 )  + 
	(v5*x5_1*1.0*8.620689655172415e-4*exp(18.5751+(-3632.649/(t5+239.2)))))/100.0))^2 + (((-1.0 * x7_1 * (v6 + -442.13 )  + 
	(v5*x5_1*-1.0*8.620689655172415e-4*exp(18.5751+(-3632.649/(t5+239.2)))) + 1.0 * 
	x6_1 * (v5 + -442.13 )  + 
	(v6*x6_1*1.0*8.695652173913045e-4*exp(18.5751+(-3632.649/(t6+239.2)))))/100.0))^2 + (((-1.0 * x1_2 * (v0 + 693.37 )  + 
	(v0*x0_2*1.0*8.264462809917355e-4*exp(18.3443+(-3841.2203/(t0+228.0)))) + 
	693.37*x0_2)/100.0))^2 + 
	((x6_2*1.0*8.695652173913045e-4*exp(18.3443+(-3841.2203/(t6+228.0)))) - x7_2)^2 
	+ (((-1.0 * x2_2 * (v1 + 693.37 )  + 
	(v0*x0_2*-1.0*8.264462809917355e-4*exp(18.3443+(-3841.2203/(t0+228.0)))) + 1.0 
	* x1_2 * (v0 + 693.37 )  + 
	(v1*x1_2*1.0*8.333333333333334e-4*exp(18.3443+(-3841.2203/(t1+228.0)))))/100.0))^2 + (((-1.0 * x3_2 * (v2 + -442.13 )  + 
	(v1*x1_2*-1.0*8.333333333333334e-4*exp(18.3443+(-3841.2203/(t1+228.0)))) + 1.0 
	* x2_2 * (v1 + 693.37 )  + 
	(v2*x2_2*1.0*8.403361344537816e-4*exp(18.3443+(-3841.2203/(t2+228.0)))) - 
	684.25)/100.0))^2 + (((-1.0 * x4_2 * (v3 + -442.13 )  + 
	(v2*x2_2*-1.0*8.403361344537816e-4*exp(18.3443+(-3841.2203/(t2+228.0)))) + 1.0 
	* x3_2 * (v2 + -442.13 )  + 
	(v3*x3_2*1.0*8.474576271186439e-4*exp(18.3443+(-3841.2203/(t3+228.0)))))/100.0))^2 + (((-1.0 * x5_2 * (v4 + -442.13 )  + 
	(v3*x3_2*-1.0*8.474576271186439e-4*exp(18.3443+(-3841.2203/(t3+228.0)))) + 1.0 
	* x4_2 * (v3 + -442.13 )  + 
	(v4*x4_2*1.0*8.547008547008547e-4*exp(18.3443+(-3841.2203/(t4+228.0)))))/100.0))^2 + (((-1.0 * x6_2 * (v5 + -442.13 )  + 
	(v4*x4_2*-1.0*8.547008547008547e-4*exp(18.3443+(-3841.2203/(t4+228.0)))) + 1.0 
	* x5_2 * (v4 + -442.13 )  + 
	(v5*x5_2*1.0*8.620689655172415e-4*exp(18.3443+(-3841.2203/(t5+228.0)))))/100.0))^2 + (((-1.0 * x7_2 * (v6 + -442.13 )  + 
	(v5*x5_2*-1.0*8.620689655172415e-4*exp(18.3443+(-3841.2203/(t5+228.0)))) + 1.0 
	* x6_2 * (v5 + -442.13 )  + 
	(v6*x6_2*1.0*8.695652173913045e-4*exp(18.3443+(-3841.2203/(t6+228.0)))))/100.0))^2 + ((x0_1*1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) + 
	(x0_2*1.0*8.264462809917355e-4*exp(18.3443+(-3841.2203/(t0+228.0)))) - 1.0)^2 + 
	((x1_1*1.0*8.333333333333334e-4*exp(18.5751+(-3632.649/(t1+239.2)))) + 
	(x1_2*1.0*8.333333333333334e-4*exp(18.3443+(-3841.2203/(t1+228.0)))) - 1.0)^2 + 
	((x2_1*1.0*8.403361344537816e-4*exp(18.5751+(-3632.649/(t2+239.2)))) + 
	(x2_2*1.0*8.403361344537816e-4*exp(18.3443+(-3841.2203/(t2+228.0)))) - 1.0)^2 + 
	((x3_1*1.0*8.474576271186439e-4*exp(18.5751+(-3632.649/(t3+239.2)))) + 
	(x3_2*1.0*8.474576271186439e-4*exp(18.3443+(-3841.2203/(t3+228.0)))) - 1.0)^2 + 
	((x4_1*1.0*8.547008547008547e-4*exp(18.5751+(-3632.649/(t4+239.2)))) + 
	(x4_2*1.0*8.547008547008547e-4*exp(18.3443+(-3841.2203/(t4+228.0)))) - 1.0)^2 + 
	((x5_1*1.0*8.620689655172415e-4*exp(18.5751+(-3632.649/(t5+239.2)))) + 
	(x5_2*1.0*8.620689655172415e-4*exp(18.3443+(-3841.2203/(t5+228.0)))) - 1.0)^2 + 
	((x6_1*1.0*8.695652173913045e-4*exp(18.5751+(-3632.649/(t6+239.2)))) + 
	(x6_2*1.0*8.695652173913045e-4*exp(18.3443+(-3841.2203/(t6+228.0)))) - 1.0)^2 + 
	((x7_1*1.0*8.771929824561405e-4*exp(18.5751+(-3632.649/(t7+239.2)))) + 
	(x7_2*1.0*8.771929824561405e-4*exp(18.3443+(-3841.2203/(t7+228.0)))) - 1.0)^2 + 
	((((v0*x0_1*1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) * 
	(9566.67+-1.59*t0+0.0422*t0*t0) + 693.37 * x0_1 * (0.0+15.97*t0+0.0422*t0*t0) + 
	-1.0 * x1_1 * (693.37 + v0 ) *(0.0+15.97*t1+0.0422*t1*t1) + 
	(v0*x0_2*1.0*8.264462809917355e-4*exp(18.3443+(-3841.2203/(t0+228.0)))) * 
	(10834.67+8.74*t0+0.0*t0*t0) + 693.37 * x0_2 * (0.0+18.1*t0+0.0*t0*t0) + -1.0 * 
	x1_2 * (693.37 + v0 ) *(0.0+18.1*t1+0.0*t1*t1) - 8386200.0)/100000.0))^2 + 
	((((v1*x1_1*1.0*8.333333333333334e-4*exp(18.5751+(-3632.649/(t1+239.2)))) * 
	(9566.67+-1.59*t1+0.0422*t1*t1) + 1.0 * x1_1 * (693.37 + v0 ) 
	*(0.0+15.97*t1+0.0422*t1*t1) + 
	(v0*x0_1*-1.0*8.264462809917355e-4*exp(18.5751+(-3632.649/(t0+239.2)))) * 
	(9566.67+-1.59*t0+0.0422*t0*t0) + -1.0 * x2_1 * (693.37 + v1 ) 
	*(0.0+15.97*t2+0.0422*t2*t2) + 
	(v1*x1_2*1.0*8.333333333333334e-4*exp(18.3443+(-3841.2203/(t1+228.0)))) * 
	(10834.67+8.74*t1+0.0*t1*t1) + 1.0 * x1_2 * (693.37 + v0 ) 
	*(0.0+18.1*t1+0.0*t1*t1) + 
	(v0*x0_2*-1.0*8.264462809917355e-4*exp(18.3443+(-3841.2203/(t0+228.0)))) * 
	(10834.67+8.74*t0+0.0*t0*t0) + -1.0 * x2_2 * (693.37 + v1 ) 
	*(0.0+18.1*t2+0.0*t2*t2))/100000.0))^2 + 
	((((v2*x2_1*1.0*8.403361344537816e-4*exp(18.5751+(-3632.649/(t2+239.2)))) * 
	(9566.67+-1.59*t2+0.0422*t2*t2) + 1.0 * x2_1 * (693.37 + v1 ) 
	*(0.0+15.97*t2+0.0422*t2*t2) + 
	(v1*x1_1*-1.0*8.333333333333334e-4*exp(18.5751+(-3632.649/(t1+239.2)))) * 
	(9566.67+-1.59*t1+0.0422*t1*t1) + -1.0 * x3_1 * (-442.13 + v2 ) 
	*(0.0+15.97*t3+0.0422*t3*t3) + 
	(v2*x2_2*1.0*8.403361344537816e-4*exp(18.3443+(-3841.2203/(t2+228.0)))) * 
	(10834.67+8.74*t2+0.0*t2*t2) + 1.0 * x2_2 * (693.37 + v1 ) 
	*(0.0+18.1*t2+0.0*t2*t2) + 
	(v1*x1_2*-1.0*8.333333333333334e-4*exp(18.3443+(-3841.2203/(t1+228.0)))) * 
	(10834.67+8.74*t1+0.0*t1*t1) + -1.0 * x3_2 * (-442.13 + v2 ) 
	*(0.0+18.1*t3+0.0*t3*t3) - 1894471.11025)/100000.0))^2 + 
	((((v3*x3_1*1.0*8.474576271186439e-4*exp(18.5751+(-3632.649/(t3+239.2)))) * 
	(9566.67+-1.59*t3+0.0422*t3*t3) + 1.0 * x3_1 * (-442.13 + v2 ) 
	*(0.0+15.97*t3+0.0422*t3*t3) + 
	(v2*x2_1*-1.0*8.403361344537816e-4*exp(18.5751+(-3632.649/(t2+239.2)))) * 
	(9566.67+-1.59*t2+0.0422*t2*t2) + -1.0 * x4_1 * (-442.13 + v3 ) 
	*(0.0+15.97*t4+0.0422*t4*t4) + 
	(v3*x3_2*1.0*8.474576271186439e-4*exp(18.3443+(-3841.2203/(t3+228.0)))) * 
	(10834.67+8.74*t3+0.0*t3*t3) + 1.0 * x3_2 * (-442.13 + v2 ) 
	*(0.0+18.1*t3+0.0*t3*t3) + 
	(v2*x2_2*-1.0*8.403361344537816e-4*exp(18.3443+(-3841.2203/(t2+228.0)))) * 
	(10834.67+8.74*t2+0.0*t2*t2) + -1.0 * x4_2 * (-442.13 + v3 ) 
	*(0.0+18.1*t4+0.0*t4*t4))/100000.0))^2 + 
	((((v4*x4_1*1.0*8.547008547008547e-4*exp(18.5751+(-3632.649/(t4+239.2)))) * 
	(9566.67+-1.59*t4+0.0422*t4*t4) + 1.0 * x4_1 * (-442.13 + v3 ) 
	*(0.0+15.97*t4+0.0422*t4*t4) + 
	(v3*x3_1*-1.0*8.474576271186439e-4*exp(18.5751+(-3632.649/(t3+239.2)))) * 
	(9566.67+-1.59*t3+0.0422*t3*t3) + -1.0 * x5_1 * (-442.13 + v4 ) 
	*(0.0+15.97*t5+0.0422*t5*t5) + 
	(v4*x4_2*1.0*8.547008547008547e-4*exp(18.3443+(-3841.2203/(t4+228.0)))) * 
	(10834.67+8.74*t4+0.0*t4*t4) + 1.0 * x4_2 * (-442.13 + v3 ) 
	*(0.0+18.1*t4+0.0*t4*t4) + 
	(v3*x3_2*-1.0*8.474576271186439e-4*exp(18.3443+(-3841.2203/(t3+228.0)))) * 
	(10834.67+8.74*t3+0.0*t3*t3) + -1.0 * x5_2 * (-442.13 + v4 ) 
	*(0.0+18.1*t5+0.0*t5*t5))/100000.0))^2 + 
	((((v5*x5_1*1.0*8.620689655172415e-4*exp(18.5751+(-3632.649/(t5+239.2)))) * 
	(9566.67+-1.59*t5+0.0422*t5*t5) + 1.0 * x5_1 * (-442.13 + v4 ) 
	*(0.0+15.97*t5+0.0422*t5*t5) + 
	(v4*x4_1*-1.0*8.547008547008547e-4*exp(18.5751+(-3632.649/(t4+239.2)))) * 
	(9566.67+-1.59*t4+0.0422*t4*t4) + -1.0 * x6_1 * (-442.13 + v5 ) 
	*(0.0+15.97*t6+0.0422*t6*t6) + 
	(v5*x5_2*1.0*8.620689655172415e-4*exp(18.3443+(-3841.2203/(t5+228.0)))) * 
	(10834.67+8.74*t5+0.0*t5*t5) + 1.0 * x5_2 * (-442.13 + v4 ) 
	*(0.0+18.1*t5+0.0*t5*t5) + 
	(v4*x4_2*-1.0*8.547008547008547e-4*exp(18.3443+(-3841.2203/(t4+228.0)))) * 
	(10834.67+8.74*t4+0.0*t4*t4) + -1.0 * x6_2 * (-442.13 + v5 ) 
	*(0.0+18.1*t6+0.0*t6*t6))/100000.0))^2 + 
	((((v6*x6_1*1.0*8.695652173913045e-4*exp(18.5751+(-3632.649/(t6+239.2)))) * 
	(9566.67+-1.59*t6+0.0422*t6*t6) + 1.0 * x6_1 * (-442.13 + v5 ) 
	*(0.0+15.97*t6+0.0422*t6*t6) + 
	(v5*x5_1*-1.0*8.620689655172415e-4*exp(18.5751+(-3632.649/(t5+239.2)))) * 
	(9566.67+-1.59*t5+0.0422*t5*t5) + -1.0 * x7_1 * (-442.13 + v6 ) 
	*(0.0+15.97*t7+0.0422*t7*t7) + 
	(v6*x6_2*1.0*8.695652173913045e-4*exp(18.3443+(-3841.2203/(t6+228.0)))) * 
	(10834.67+8.74*t6+0.0*t6*t6) + 1.0 * x6_2 * (-442.13 + v5 ) 
	*(0.0+18.1*t6+0.0*t6*t6) + 
	(v5*x5_2*-1.0*8.620689655172415e-4*exp(18.3443+(-3841.2203/(t5+228.0)))) * 
	(10834.67+8.74*t5+0.0*t5*t5) + -1.0 * x7_2 * (-442.13 + v6 ) 
	*(0.0+18.1*t7+0.0*t7*t7))/100000.0))^2;



	display t0;
	display x0_1;
	display x0_2;
	display t1;
	display x1_1;
	display x1_2;
	display t2;
	display x2_1;
	display x2_2;
	display t3;
	display x3_1;
	display x3_2;
	display t4;
	display x4_1;
	display x4_2;
	display t5;
	display x5_1;
	display x5_2;
	display t6;
	display x6_1;
	display x6_2;
	display t7;
	display x7_1;
	display x7_2;
	display v0;
	display v1;
	display v2;
	display v3;
	display v4;
	display v5;
	display v6;
display obj;