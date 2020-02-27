# 3 角形柱周りの超音速流れ
## 参考
- [元ページ](https://www.xsim.info/articles/OpenFOAM/tutorials/compressible-sonicFoam-ras-prism.html)

> - 流れは領域 inlet から流速 650 m/s で流入し,
>   領域 outlet から流出.
> - 領域 inlet から領域 outlet までの流路長さは 1 m.
> - 流れに平行な領域 topWall, bottomWall では自由流れ,
>   3 角柱表面である領域 prismWall は滑りなし壁
> - 計算は 2 次元解析.
> - 乱流モデルは標準 k-ε モデルを使用.

## 元プロジェクト
- openfoam6/tutorials/compressible/sonicFoam/RAS

## 動画 URL
- <https://www.youtube.com/watch?v=kTM_jv_27po>

## YouTube メモ
### タイトル
- 2 次元 prism RANS チュートリアル OpenFOAMによる数値シミュレーション

### コメント
今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/sonicFoam/prism
- https://github.com/phasetr/OpenFOAM

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
