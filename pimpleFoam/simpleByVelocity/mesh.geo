SetFactory("OpenCASCADE");

nx = 10;
ny = 16;
nz = 1;

xLength = 2;
yLength = 1;
zLength = 1;

// x 軸の左端
Point(1) = {0, 0, 0, 1.0};
Point(2) = {0, yLength, 0, 1.0};
Line(1) = {1,2};

// x 軸方向の本体領域を生成
Extrude {2, 0, 0} {
  Curve{1}; Layers{nx}; Recombine;
}

// y 軸方向に刻む
Transfinite Curve {1, 4} = ny Using Bump 0.2;

// z 軸方向の本体
Extrude {0, 0, zLength} {
  Surface{1}; Layers{nz}; Recombine;
}

Physical Surface("inlet") = {4};
Physical Surface("outlet") = {5};
Physical Surface("wall") = {3, 2};
Physical Surface("frontBack") = {6, 1};
//+
Physical Volume("fluid") = {1};
