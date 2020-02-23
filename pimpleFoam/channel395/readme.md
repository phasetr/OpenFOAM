# チャネル流れ（LES）
## メモ
- 実行には多少時間がかかる.
    - 計算には 594sec.
- `0` と `0.orig` は両方必要なのか?
- 何を見ると面白いのかよくわからない.

### 解説ページ
- https://www.xsim.info/articles/OpenFOAM/tutorials/incompressible-pimpleFoam-channel395.html

以下転記.

> 0秒から1000秒までの間のチャネル流れを計算します。
>
> 直方体の計算領域を考え、領域 topWall（Y最大面）、領域 bottomWall（Y最小面）は流速 (0, 0, 0) m/s に固定、それ以外の領域は周期境界とします。乱流計算には LES（渦粘性モデル WALE）を使用します。また平均流速 (0.1335, 0, 0) m/s となるよう領域全体に運動量を与えています。この設定はファイル constant/fvOptions で以下の様に指定します。
>
> 計算後にユーティリティ― postChannel を使用して Y 軸方向の流れの分布を計算しています。計算の設定はファイル constant/postChannelDict で以下の様に指定します。計算結果はディレクトリ graphs に各時刻ごとに保存されます。
>
> 結果データはテキストとして保存されるので適当な表計算ソフトウェアなどでグラフ化できます。

postChannel の結果のグラフ描画は次のコマンドで実行.

```
gnuplot
gnuplot> plot "graphs/1000/Uf.xy"
```

## 元プロジェクト
- openfoam6/tutorials/incompressible/pimpleFoam/LES/channel395

## 動画 URL
- <https://www.youtube.com/watch?v=lmWndaz2vc0&feature=youtu.be>

## YouTube メモ
### タイトル
- pitzDaily simplefoam チュートリアル OpenFOAMによる数値シミュレーション

### コメント
今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/simpleFoam/pitzDaily
- https://github.com/phasetr/OpenFOAM

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
