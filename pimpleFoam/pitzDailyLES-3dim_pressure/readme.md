# 3 次元版 LES でのバックステップ流れ: 粗いメッシュ
## メモ
- 渦らしい挙動が見える限界まで `pitzDailyLES-3dim01` のメッシュを粗くした
- `pitzDailyLES-3dim02` では速度による流れだったが,
  これは圧力差による流れ.

## 元プロジェクト
- openfoam6/tutorials/incompressible/pimpleFoam/RAS/pitzDaily

## 動画 URL
- <https://youtu.be/lsUt1pJfqNI>

## 動画コメント
LES 3次元 pitzDaily Gmsh 粗いメッシュ 圧力駆動 OpenFOAMによる数値シミュレーション

速度ではなく圧力差で駆動した波です.
最後は発散しました.

今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/pimpleFoam/pitzDailyLES-3dim_pressure
- https://github.com/phasetr/OpenFOAM

リポジトリの readme.md には気づいたことをメモしています.

OpenFOAM の動画リストも作っています.

- https://www.youtube.com/watch?v=Kuef23rGxPc&list=PLSBzltjFoprYN0Rh3tLmoHWqjPRYwJukv


これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
