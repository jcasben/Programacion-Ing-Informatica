c = [1/100;1/50;1/10;1;2;5;10;100 ];
b = [1;-1;1;-1;1;2;1;-1];
exactSol = [-89202397011858500/343184827942444257;
             284742741343553165/9275265620066061;
             -25810583238434097767/51997701203400645;
             29985328840009119006959/11439494264748141900;
             -6332936841882181293233/1271054918305349100;
             5934214756682873188013/1906582377458023650;
             -14214034409621076703/49026403991777751;
             1233052285368734443/343184827942444257];

A = vander(c);

[L1,U1] = LUFact(A);
[L2,U2,P2] = LUFactPC(A);
[L3,U3,P3,Q3] = LUFactPMX(A);

y1 = under_triangular_solver(L1,b);
sol1 = upper_triangular_solver(U2,y1);

y2 = under_triangular_solver(L2,P2*b);
sol2 = upper_triangular_solver(U2,y2);

y3 = under_triangular_solver(L3,P3*b);
z3 = upper_triangular_solver(U3,y3);
sol3 = z3*Q3;
