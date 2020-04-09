function [x,y] = circle(delta)

hold on

% Loop, picking up the points
disp('Left mouse button picks the center.')
[s, t, but] = ginput(2);

cx = s(1); cy = t(1);
tx = s(2); ty = t(2);
R = sqrt((tx-cx).^2+(ty-cy).^2);

t = (0:delta:2*pi)';   
x = cx + R*cos(t);   
y = cy + R*sin(t); 

plot([x;x(1,1)],[y;y(1,1)],'r-');
