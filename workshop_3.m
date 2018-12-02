clc
clear all
close all
%% Matrices in MATLAB
A=[]; %empty matrix
B=[1 2 5 8] %one dimensional row vector
C=[1;2;5;8] %one dimensional column vector
%% Special matrices
D=zeros(1,2) %nxm dimensional zero matrix (n=1 (row), m=2 (column))
E=ones(3,2) %nxm dimensional matrix (n=3 (row), m=2 (column))
F=eye(3,3) %nxm dimensional unit matris (n=3 (row), m=3 (column))
a=rand() %random float number
G=rand(2,4) %random float matrix (2 row, 4 column)
%% Basic Operations on MATLAB
fs=1000
t=0:1/fs:1 %t is a row vector
f=5
x=cos(2*pi*f*t) %x is row vector as well 
plot(t,x)
% Matrix Multiplication
X=B*C %result is a number
Y=C*B %result is a matrix
B1=[1 3 5 7]
Z=B1.*B %element-wise multiplication
B3=B^3 %Error: Inputs must be a scalar and a square matrix.
B3=B.^3 
F_square=(4*F)^2 %Due to square matrix, we don't get any error
B_div=B1./B %element-wise division
X_div=F_square/(2*F) %Matrix division operation (rule: matrix dimensions must agree)
%% Image shifting
AA=[256 128 127 98 86 49;25 39 48 112 187 155;173 142 78 52 122 250;211 208 148 142 142 55;11 5 208 140 37 88;207 126 252 251 21 8]
[x y]=size(AA)
k=3;
m=2;
J=zeros(x+k,y+m)
for i=1:x
    for j=1:y
        J(i+k,j+m)=AA(i,j);
    end
end
imshow(AA)
figure
imshow(J)
%% Image addition and subtraction
AA=[256 128 127 98 86 49;25 39 48 112 187 155;173 142 78 52 122 250;211 208 148 142 142 55;11 5 208 140 37 88;207 126 252 251 21 8]
BB=3*AA;
CC=BB-AA
DD=BB+AA;
%%
clc
clear all
close all
n=2;
im=zeros(6,6)
AA=[256 128 127 98 86 49;25 39 48 112 187 155;173 142 78 52 122 250;211 208 148 142 142 55;11 5 208 140 37 88;207 126 252 251 21 8]
for i=1:n:6
     for j=1:n:6
         im(i,j)=AA(i,j);
     end
end
im

%%
