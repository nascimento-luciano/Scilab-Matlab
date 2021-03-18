clc
clear
close
deff("x=s(t)",["x=2*sin(.3*t)"]);
t=0:.1:16*%pi;
fplot2d(t,s)
