# 3 次元版 LES でのバックステップ流れ
## メモ
- pimple なので非圧縮.
- `pitzDailyLES04` のメッシュを 3 次元化した.
- 2 次元版と定性的に振る舞いが全然違う.
    - 参考: - [バックステップ流れにおけるはく離域の乱流構造 : LESデータを用いた検討](https://www.jstage.jst.go.jp/article/kikaib1979/58/553/58_553_2730/_pdf/-char/ja)

## 元プロジェクト
- openfoam6/tutorials/incompressible/pimpleFoam/RAS/pitzDaily

## 動画 URL
- <https://youtu.be/Kuef23rGxPc>

## 動画コメント
LES 3次元 pitzDaily Gmsh 利用 OpenFOAMによる数値シミュレーション

今回の OpenFOAM の設定は次のリポジトリにあります.

- https://github.com/phasetr/OpenFOAM/pimpleFoam/pitzDailyLES-3dim01
- https://github.com/phasetr/OpenFOAM

リポジトリの readme.md には気づいたことをメモしています.

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
