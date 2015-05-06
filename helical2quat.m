function q=helical2quat(h1,h2,h3)

% Conversion from helical angles to quaternions.
% input can be helical angles in column vectors in order x,y,z or one
% single vector in radians. Output is quaternion column vector in w,x,y,z
% order.
% Usage: q=helical2quat(H) or q=helical2quat(hx,hy,hz)

if(nargin==1)
    h3=h1(:,3);h2=h1(:,2);h1=h1(:,1);
end
A=sqrt(h1.^2+h2.^2+h3.^2);
sinA=sin(A/2)./A;
q=[cos(A/2) sinA.*h1 sinA.*h2 sinA.*h3];