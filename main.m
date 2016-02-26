close all
clear
clc


%% plotting f2

rs=linspace(0.8,2.0,500);



for i=1:500
    f2s(i)=f2(rs(i));
end

plot(rs,f2s)
grid on



cs=1;
numcellx=2;
numcelly=2;
numcellz=2;

vecx=0:cs:cs*(numcellx-1);
vecy=0:cs:cs*(numcelly-1);
vecz=0:cs:cs*(numcellz-1);

[X,Y,Z]=meshgrid(vecx,vecy,vecz);
centers=[reshape(X,[numcellx*numcelly*numcellz,1]) reshape(Y,[numcellx*numcelly*numcellz,1]) reshape(Z,[numcellx*numcelly*numcellz,1])];



%pause(100)

% centers=[...
%     0    0    0
%     cs   0    0
%     2*cs 0    0
%     0    cs   0
%     cs   cs   0
%     2*cs cs   0
%     0    2*cs 0
%     cs   2*cs 0
%     2*cs 2*cs 0
%     0    0    cs
%     cs   0    cs
%     2*cs 0    cs
%     0    cs   cs
%     cs   cs   cs
%     2*cs cs   cs
%     0    2*cs cs
%     cs   2*cs cs
%     2*cs 2*cs cs
%     0    0    2*cs
%     cs   0    2*cs
%     2*cs 0    2*cs
%     0    cs   2*cs
%     cs   cs   2*cs
%     2*cs cs   2*cs
%     0    2*cs 2*cs
%     cs   2*cs 2*cs
%     2*cs 2*cs 2*cs]*2;

% centers=[...
%     0    0    0
%     2*cs   0    0]
    

f=figure()
hold on
axis equal

allnodes=[];

for i=1:length(centers)
    %clf
    [nodes,corners,diags]=genfcc(1,[centers(i,1) centers(i,2) centers(i,3)]);
    [p]=plotfcc(f,nodes,corners,diags,0.2);%0.3535
    
    allnodes=[allnodes;nodes];
end


[allnodes]=unique(allnodes,'rows');

