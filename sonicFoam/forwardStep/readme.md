# 2 次元 障害物への超音速流れの衝突
## 参考
- [元ページ](https://www.xsim.info/articles/OpenFOAM/tutorials/compressible-sonicFoam-laminar-forwardStep.html)

> - 温度 1 K における音速が 1 m/s となるよう「正規化」した仮想的な非粘性気体の流れが, 超音速で障害物へ衝突する様子の解析を 10 秒間分だけ行います.
> - 領域 inlet から 3 m/s (マッハ数 3) で気体が流入し, 領域 outlet から計算領域外に流出します. 領域 top, bottom は対称境界とし, 領域 obstacle を滑りなし壁の障害物とします.
> - 乱流モデルは使用せずに, 解析は 2 次元として行います.
> - マッハ数, 温度を可視化する場合は ParaView 上で「Properties」タブの「Ma」, 「T」にチェックを入れます.

## メモ
- 境界条件として `symmetryPlane` をつけていて, 反射が見える.

## 元プロジェクト
- openfoam6/tutorials/compressible/sonicFoam/laminar/forwardStep

## 動画 URL
- <https://youtu.be/r2P0aD-TER0>
- OpenFOAM の動画リスト <https://www.youtube.com/watch?v=Kuef23rGxPc&list=PLSBzltjFoprYN0Rh3tLmoHWqjPRYwJukv>

## YouTube メモ
### タイトル
- 2 次元 障害物への超音速流れの衝突 forwardStep チュートリアル OpenFOAMによる数値シミュレーション

### コメント
今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/sonicFoam/laminar/forwardStep
- https://github.com/phasetr/OpenFOAM

OpenFOAM の動画リストも作っています.

- https://www.youtube.com/watch?v=Kuef23rGxPc&list=PLSBzltjFoprYN0Rh3tLmoHWqjPRYwJukv

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
