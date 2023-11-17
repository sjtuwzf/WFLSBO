clear;
clc;
sigma = 300;
x = -1512:4:1512;
x = x.';
y = -1512:4:1512
y = y.';
total = length(x);
coordination=zeros(total*total,3);
round = [];
for i=1:1:total
    for j=1:1:total
        coordination((i-1)*total+j,1)=x(i);
        coordination((i-1)*total+j,2)=y(j);
    end
end
for i = 1:1:total*total
    coordination(i,3)=-(coordination(i,1)^2+coordination(i,2)^2)/(2*sigma^2);
    coordination(i,3)=150*exp(coordination(i,3));
end;
for i = 1:1:total*total
    x_label = coordination(i,1);
    y_label = coordination(i,2);
    distance = sqrt(x_label^2+y_label^2);
    if distance <= 1512
        round = [round;coordination(i,:)];
    end
end
T=delaunay(round(:,1),round(:,2));
tri = triangulation(T,round(:,1),round(:,2),round(:,3));
patch('Faces',tri.ConnectivityList,'Vertices',tri.Points,'FaceColor','red');
trisurf(T,round(:,1),round(:,2),round(:,3));
stlwrite(tri,'terrains.stl');


