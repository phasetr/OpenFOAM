# README
公式のチュートリアルをそのまま実行.

## メモ
- バックステップなど別の領域でもやってみたい.
- LES と比較したい.
- 並列化したい (うまくいかなかった).
    - `system/decomposeParDict` を追加
    - `Allrun` にも記述追加

## 動画 URL
- <https://www.youtube.com/watch?v=UGQvCekXBeA>

## 参考解説
- [解説参考](https://www.xsim.info/articles/OpenFOAM/tutorials/DNS-dnsFoam-boxTurb16.html)

このページからいくつか転記する.

- 立方体中の流れを直接解く.
- 6 面全てを周期境界とし,
  ユーティリティー boxTurb で生成した乱流を初期条件として
  10 秒後まで解く.
- 終了時間は system/controlDict の endTime で指定する.
- 計算後にユーティリティー postProcess でエントロフィー
  $\mathcal{E}(\mathbf{u})  \equiv  \int_{S} (\nabla \times \mathbf u)^{2}dS$
  を計算する.
