function h=quat2helical(q)

% Conversion from quaternions to helical angles.
% Input is quaternion column vector in w,x,y,z order. Output is helical
% angles in one column vector, in radians.

if(isempty(q))
    h=zeros(0,3);
    return;
end
A=acos(q(:,1))*2*ones(1,3);
sinA=sqrt(1.-q(:,1).^2)*ones(1,3);% make it n-by-3
h=q(:,2:4)./(sinA+eps).*A;
