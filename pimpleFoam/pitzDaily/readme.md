# RANS でのバックステップ流れ
## メモ
- LES 化したい.
- 粘性係数を大きくするとバックステップ部分の流れの反転部が小さくなる.
  (いろいろ変えて遊んでみよう.)

## 元プロジェクト
- openfoam6/tutorials/incompressible/pimpleFoam/RAS/pitzDaily

## 動画 URL
- <https://www.youtube.com/watch?v=ECrOyazP1cI>

前半は nu = 1e-05, 後半は nu = 1e-03 で計算.

## 参考ページ
- [バックステップ流れ](https://www.xsim.info/articles/OpenFOAM/tutorials/incompressible-pimpleFoam-pitzDaily.html)

以下編集しつつ転載する.

- 0 秒から 1 秒までの間のバックステップ流れを計算.
- 流体は領域 inlet から速度 (10, 0, 0) m/s で流入.
- 領域 outlet から流出.
- 流路の壁は滑りなし条件.
- Z 方向は 1 メッシュで 2 次元問題.
- 乱流モデルとして標準 $k$-$\varepsilon$ モデル.

### 計算した乱流エネルギー・乱流消失率の可視化
- ParaView の Properties タブで 「k」, 「epsilon」にチェック.
