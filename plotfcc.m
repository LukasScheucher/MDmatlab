
function [p]=plotfcc(f,nodes,corners,diags,size)
 


[x,y,z] = sphere;
x=x*size;
y=y*size;
z=z*size;

figure(f);
hold on
axis off


for i=1:length(nodes)   
  p=surf(x+nodes(i,1),y+nodes(i,2),z+nodes(i,3));
  %get(p)
  %set(p,'EdgeAlpha',0)
  set(p,'FaceColor',[0.5 0.5 0.5]);
  set(p,'FaceLighting','gouraud');
end


%% plot edges
for i=1:length(corners)   
  plot3([nodes(corners(i,1),1),nodes(corners(i,2),1)],...
       [nodes(corners(i,1),2),nodes(corners(i,2),2)],...
       [nodes(corners(i,1),3),nodes(corners(i,2),3)],'k'  );
end


%% plot diags
for i=1:length(diags)   
  plot3([nodes(diags(i,1),1),nodes(diags(i,2),1)],...
       [nodes(diags(i,1),2),nodes(diags(i,2),2)],...
       [nodes(diags(i,1),3),nodes(diags(i,2),3)],'k--'  );
end


campos([5 6 8]);
end