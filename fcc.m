
function [nodes,cornes]=genfcc(a,pos)


nodes=[...
    
-1 -1 -1
-1  1 -1
 1  1 -1
 1 -1 -1
-1 -1  1
-1  1  1
 1  1  1
 1 -1  1
 0  0 -1
-1  0  0
 0  1  0
 1  0  0
 0 -1  0
 0  0  1]
 

nodes=nodes.*size/2;

nodes(:,1)=nodes(:,1)+pos(1);
nodes(:,2)=nodes(:,2)+pos(2);
nodes(:,3)=nodes(:,3)+pos(3);


corners=[...
    1 2
    2 3
    3 4
    4 1
    1 5
    2 6
    3 7
    4 8
    5 6
    6 7
    7 8
    8 5];

end