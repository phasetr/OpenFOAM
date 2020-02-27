SetFactory("OpenCASCADE");
//+
N = 6;
Nz = 2;
//
Point(1) = {0, 0, 0, 1.0};
Extrude {0.0206, 0, 0} {
  Point{1}; Layers{N}; Recombine;
}
Extrude {0, 0.0254, 0} {
  Curve{1}; Layers{N}; Recombine;
}
Extrude {0.29, 0, 0} {
  Curve{3}; Layers{14*N}; Recombine;
}
Extrude {0, -0.0254, 0} {
  Curve{5}; Layers{N}; Recombine;
}
Extrude {0, 0, 0.02} {
  Surface{1}; Surface{2}; Surface{3}; Layers{Nz}; Recombine;
}
//+
Physical Surface("inlet") = {4};
Physical Surface("outlet") = {11, 14};
Physical Volume("fluid") = {1, 2, 3};
Physical Surface("wall") = {1, 2, 3, 7, 8, 6, 10, 12, 13, 15, 16};
