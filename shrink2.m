function [dx,dy] = shrink2(dx,dy,Thresh)
%SHRINK2   Vectorial shrinkage (soft-threholding)
%   [dxnew,dynew] = SHRINK2(dx,dy,Thresh)

% Pascal Getreuer 2009

s = sqrt(sum(dx.^2 + dy.^2,3));
s = max(0,s - Thresh)./max(1e-12,s);
dx = s(:,:,ones(1,size(dx,3))).*dx;
dy = s(:,:,ones(1,size(dx,3))).*dy;
