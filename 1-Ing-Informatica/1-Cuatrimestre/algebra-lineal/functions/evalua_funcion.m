function [V] = evalua_funcion(x)

  V = [2*x(1)+3*x(2)+4*x(3)-x(5);x(2)^2-x(4)-x(5)-1;x(2)-3*x(3)+3*x(4)-x(5);x(1)-x(2)+x(5);x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(5)^2-1];
endfunction
