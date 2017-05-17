
% Build levelset2D
disp('Building levelset2D');
LS2 = '../@levelset2D/private';

disp('Compiling @levelset2D/private/diff_central_order2.cpp');
mex -I./include ../@levelset2D/private/diff_central_order2.cpp % -outdir ../@levelset2D/private/
movefile('diff_central_order2.mex', LS2); movefile('diff_central_order2.o', LS2);

disp('Compiling @levelset2D/private/diff_upwind_order1.cpp');
mex -I./include ../@levelset2D/private/diff_upwind_order1.cpp % -outdir ../@levelset2D/private/ 
movefile('diff_upwind_order1.mex', LS2); movefile('diff_upwind_order1.o', LS2);

disp('Compiling @levelset2D/private/diff_upwind_WENO.cpp');
mex -I./include ../@levelset2D/private/diff_upwind_WENO.cpp % -outdir ../@levelset2D/private/ 
movefile('diff_upwind_WENO.mex', LS2); movefile('diff_upwind_WENO.o', LS2);

disp('Compiling @levelset2D/private/diff2_order2.cpp');
mex -I./include ../@levelset2D/private/diff2_order2.cpp % -outdir ../@levelset2D/private/ 
movefile('diff2_order2.mex', LS2); movefile('diff2_order2.o', LS2);

disp('Compiling @levelset2D/private/reinitialize_fastmarching.cpp');
mex -I./include ../@levelset2D/private/reinitialize_fastmarching.cpp % -outdir ../@levelset2D/private/
movefile('reinitialize_fastmarching.mex', LS2); movefile('reinitialize_fastmarching.o', LS2);

disp('Compiling @levelset2D/private/reinitialize_fastsweeping.cpp');
mex -I./include ../@levelset2D/private/reinitialize_fastsweeping.cpp % -outdir ../@levelset2D/private/
movefile('reinitialize_fastsweeping.mex', LS2); movefile('reinitialize_fastsweeping.o', LS2);

disp('Compiling @levelset2D/private/curvature_divergence_normals.cpp');
mex -I./include ../@levelset2D/private/curvature_divergence_normals.cpp %  -outdir ../@levelset2D/private/
movefile('curvature_divergence_normals.mex', LS2);
movefile('curvature_divergence_normals.o', LS2);

% Build levelset3D
disp('Building levelset3D');
LS3 = '../@levelset3D/private';

disp('Compiling @levelset3D/private/diff_central_order2.cpp');
mex -I./include  ../@levelset3D/private/diff_central_order2.cpp % -outdir ../@levelset3D/private/
movefile('diff_central_order2.mex', LS3); movefile('diff_central_order2.o', LS3);

disp('Compiling @levelset3D/private/diff_upwind_order1.cpp');
mex -I./include ../@levelset3D/private/diff_upwind_order1.cpp % -outdir ../@levelset3D/private/ 
movefile('diff_upwind_order1.mex', LS3); movefile('diff_upwind_order1.o', LS3);

disp('Compiling @levelset3D/private/diff2_order2.cpp');
mex -I./include ../@levelset3D/private/diff2_order2.cpp %  -outdir ../@levelset3D/private/
movefile('diff2_order2.mex', LS3); movefile('diff2_order2.o', LS3);

disp('Compiling @levelset3D/private/min_curvature.cpp');
mex -I./include ../@levelset3D/private/min_curvature.cpp %  -outdir ../@levelset3D/private/
movefile('min_curvature.mex', LS3); movefile('min_curvature.o', LS3);

disp('Compiling @levelset3D/private/principal_curvatures.cpp');
mex -I./include ../@levelset3D/private/principal_curvatures.cpp %  -outdir ../@levelset3D/private/
movefile('principal_curvatures.mex', LS3); movefile('principal_curvatures.o', LS3);

disp('Compiling @levelset3D/private/reinitialize_fastmarching.cpp');
mex -I./include ../@levelset3D/private/reinitialize_fastmarching.cpp % -outdir ../@levelset3D/private/ 
movefile('reinitialize_fastmarching.mex', LS3); movefile('reinitialize_fastmarching.o', LS3);

disp('Compiling @levelset3D/private/triangulate.cpp');
mex -I./include ../@levelset3D/private/triangulate.cpp % 
movefile('triangulate.mex', LS3); movefile('triangulate.o', LS3);
