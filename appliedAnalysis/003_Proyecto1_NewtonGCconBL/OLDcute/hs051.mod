var x {1..5};

minimize obj: 
  (x[1]-x[2])^2 + (x[2]+x[3]-2)^2 + (x[4]-1)^2 + (x[5]-1)^2
  ;

subject to constr1: x[1] + 3*x[2] = 4;
subject to constr2: x[3] +   x[4] - 2*x[5] = 0;
subject to constr3: x[2] -   x[5] = 0;

let x[1] :=  2.5;
let x[2] :=  0.5;
let x[3] :=  2;
let x[4] := -1;
let x[5] :=  0.5;

display obj;

option loqo_options $loqo_options" convex";



display x;

display obj;

display obj - 0;
