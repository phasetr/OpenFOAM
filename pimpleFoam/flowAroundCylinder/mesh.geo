SetFactory("OpenCASCADE");

Rectangle(1) = {0, 0, 0, 2, 1, 0};
Circle(5) = {0.5, 0.5, 0, 0.2, 0, 2*Pi};
Curve Loop(2) = {5};
Surface(2) = {2};
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }

Transfinite Curve {5} = 500 Using Progression 1;
Transfinite Curve {9, 6} = 100 Using Progression 1;
Transfinite Curve {7, 8} = 50 Using Progression 1;

Extrude {0, 0, 1} {
  Surface{1}; Layers{2}; Recombine;
}

Physical Surface("inlet") = {3};
Physical Surface("outlet") = {4};
Physical Surface("wall") = {7, 2, 1, 5, 6};
Physical Volume("fluid") = {1};
