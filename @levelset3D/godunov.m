function [Dx,Dy,Dz] = godunov(ls, a)

[Dx_m,Dx_p,Dy_m,Dy_p,Dz_m,Dz_p] = ls.diff_upwind(ls.phi, ls.band);

Dx = zeros(size(ls.band));
Dy = zeros(size(ls.band));
Dz = zeros(size(ls.band));

if isscalar(a)
    a = ones(size(ls.band)) * a;
end
A = a > 0;

Dx(A) = max( max(Dx_m(A),0).^2, min(Dx_p(A),0).^2 );
Dx(~A) = max( min(Dx_m(~A),0).^2, max(Dx_p(~A),0).^2 );

Dy(A) = max( max(Dy_m(A),0).^2, min(Dy_p(A),0).^2 );
Dy(~A) = max( min(Dy_m(~A),0).^2, max(Dy_p(~A),0).^2 );

Dz(A) = max( max(Dz_m(A),0).^2, min(Dz_p(A),0).^2 );
Dz(~A) = max( min(Dz_m(~A),0).^2, max(Dz_p(~A),0).^2 );
