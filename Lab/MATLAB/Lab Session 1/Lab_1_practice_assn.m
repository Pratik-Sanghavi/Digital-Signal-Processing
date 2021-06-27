%% Input from user
prompt='Enter value of a:\n';
a=input(prompt);
prompt='Enter value of x:\n';
x=input(prompt);
prompt='Enter value of y:\n';
y=input(prompt);
prompt='Enter value of A:\n';
A=input(prompt);
prompt='Enter value of B:\n';
B=input(prompt);
%% Solving for BA/axy
res=(B'*A)/(a*x.*y)';