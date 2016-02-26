function [ val ] = f2( r )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


A=7.049556277;
B=0.6022245584;
p=4;
q=0;
a=1.8;
lambda=21.0;
gamma=1.2;

if r<a
   val=A*(B*r^(-p)-r^(-q)) * exp( (r-a)^(-1) );
else
   val=0;
end


end

