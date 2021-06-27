function [xnew, nnew] = xreflected(xold, nold)
xnew = fliplr(xold);
nnew = -fliplr(nold);
end