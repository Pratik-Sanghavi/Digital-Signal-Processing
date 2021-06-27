function[x, n] = x1plusx2 (x1orig, x2orig, n1orig, n2orig)
n = min(min(n1orig), min(n2orig)): max(max(n1orig), max(n2orig));
x1i = zeros(1, length(n));
x2i= x1i;
x1i (find( (n >= min(n1orig))&(n <= max(n1orig))== 1))= x1orig;
x2i (find( (n >= min(n2orig))&(n<= max(n2orig)) == 1))= x2orig;
x = x1i+ x2i;
end