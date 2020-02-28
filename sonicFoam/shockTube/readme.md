# 衝撃波管
## 参考
- [元ページ](https://www.xsim.info/articles/OpenFOAM/tutorials/compressible-sonicFoam-laminar-shockTube.html)

> 衝撃波管は圧力の違う流体（主に気体）を隔膜で隔てて封入した管で、瞬間的に隔膜を取り除くことで衝撃波を発生させる実験装置です。
>
> ここでは衝撃管を1次元でモデル化し、高圧側を 100000 Pa、低圧側を 10000 Pa として時刻 0 で隔膜を取り除き、衝撃波の発生する様子を0.007秒分だけ計算します。
>
> 乱流モデルは使用しません。
>
> また以下の様にファイル constant/sample で X軸上にサンプリング点を1000点を指定し、計算後にサンプリングを行っています。

- `makepng.py` で物理量ごとに各時間の挙動をまとめたグラフを作っている.

## 元プロジェクト
- openfoam6/tutorials/compressible/sonicFoam/laminar/shockTube

## 動画 URL
- <https://youtu.be/DN_t_zZzXWI>

## YouTube メモ
### タイトル
1 次元 衝撃波管 チュートリアル OpenFOAMによる数値シミュレーション

### コメント
今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/sonicFoam/shockTube
- https://github.com/phasetr/OpenFOAM

OpenFOAM の動画リストも作っています.

- https://www.youtube.com/watch?v=Kuef23rGxPc&list=PLSBzltjFoprYN0Rh3tLmoHWqjPRYwJukv

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
