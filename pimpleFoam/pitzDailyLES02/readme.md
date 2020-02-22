# バックステップでの流れ
- 気分的には `pitzDaily` の LES 版.
    - メッシュを Gmsh にしてみた.
    - 先で細くなっている部分は無視 (作るのが面倒).
    - できるメッシュの刻みも違う: チュートリアルの方がいろいろ細かく制御してあっていいメッシュ.
- `pitzDaily` と同じく 2 次元で解いている.

## メモ
- pimple なので非圧縮.
- $nu = 10^{-5}$ なのでかなりさらさらの流れ.
- RANS よりめちゃくちゃ時間がかかる (当然).
    - 全実時間は短くしておいた.
- 今度はそれなりに意図した通りに結果になっていそう.
    - 時間がかかるので同じ実時間分の計算をしていない.
    - いつかやろう.
- `pitzDailyLES01` には `system/fvOptions` が入ってしまっていた.
    - Gmsh 利用に関して他のところからコピペしてきたやつ.

## 動画 URL
- <https://www.youtube.com/watch?v=HKnaEqpSJvk&feature=youtu.be>

## Allrun 実行時の注意
- メッシュは Gmsh で切っているので, 実行には Gmsh が必要.
- 並列実行させているのでコア数に注意.
    - Allrun での mpirun -np で指定した数と,
      system/decomposeParDict での numberOfSubdomains を合わせる.

