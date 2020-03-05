# 3 次元での円柱まわりの流れ
## メモ
- 計算には 4011s = 1h 程度かかった.
- もう少し書き込み感覚を大きくして長時間見てみたい.
- メッシュも変えて, 円柱のうしろの渦がもっと見えるようにしたい.

### 参考
- [メッシュの画像](https://twitter.com/math153arclight/status/1138066868940394497)
- [境界層の観察](https://twitter.com/math153arclight/status/1138069408327147520)
- [動画](https://www.youtube.com/watch?v=qZmuMKGLgJ8]
- 本来は円の周りは[これ](https://twitter.com/jjishii/status/1166230885546414082)や[これ](https://twitter.com/jjishii/status/1171629962828247040)のようにオールヘキサで切るべき.
- どれだけメッシュを細かく切ればいいかについての指標が `y+`.
    - [参考](https://www.cradle.co.jp/glossary/en_Y/detail0099.html).

## 動画 URL
- <https://youtu.be/EcDV2Jj5TWU>

## 動画コメント
### タイトル
3 次元での円柱まわりの流れ OpenFOAMによる数値シミュレーション

### コメント
今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/pimpleFoam/flowAroundCylinder
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
