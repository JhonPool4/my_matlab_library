function w = skew2vector(w_skew)
% ------------------------
% @info get angular velocity vector from skew matrix
% @inputs:
%   - w_skew: skew matrix [3x3]
% @outpus:
%   - w: angular velocity vector [3x1]
% ------------------------
wx = simplify(0.5*(w_skew(3,2) - w_skew(2,3)));
wy = simplify(0.5*(w_skew(1,3) - w_skew(3,1)));
wz = simplify(0.5*(w_skew(2,1) - w_skew(1,2)));
% angular velocity
w = [wx; wy; wz];
end