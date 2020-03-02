# 2 次元流路絞り部での蒸気発生（RANS）
## メモ
- `deltaT = 1e-08` でかなり細かい時間刻みで計算している (チュートリアルの初期設定).
- かなり時間がかかる: 15000s = 250m 程度.

## 参考
- [元ページ](https://www.xsim.info/articles/OpenFOAM/tutorials/multiphase-cavitatingFoam-ras-throttle.html)

> 領域 inlet に全圧300×105、領域 outlet に静圧100×105を設定することで、
> 圧力差によって inlet から outlet へ向かって駆動される水の流れを0.002秒分だけ解析します。
> 壁面 walls はすべり無し条件とし、Z 方向は1メッシュとして2次元問題としています。
> 乱流モデルとして k-ω SST モデルを使用します。
> 絞り部での蒸気発生の揺らぎによって下流で大きく流れの対称性が崩れていることがわかります。

## 元プロジェクト
- openfoam6/tutorials/multiphase/cavitatingFoam/RAS/throttle

## 動画 URL
- <https://youtu.be/nvFO5cod5j8>

## YouTube メモ
### タイトル
2 次元 RANS 流路絞り部での蒸気発生 チュートリアル OpenFOAMによる数値シミュレーション

### コメント
今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/cavitatingFoam/throttleRANS
- https://github.com/phasetr/OpenFOAM

OpenFOAM の動画リストも作っています.

- https://www.youtube.com/watch?v=Kuef23rGxPc&list=PLSBzltjFoprYN0Rh3tLmoHWqjPRYwJukv

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
