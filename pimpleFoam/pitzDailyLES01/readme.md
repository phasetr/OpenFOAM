# バックステップでの流れ
- 気分的には `pitzDaily` の LES 版.
    - メッシュを Gmsh にしてみた.
    - 先で細くなっている部分は無視 (作るのが面倒).
    - できるメッシュの刻みも違う: チュートリアルの方がいろいろ細かく制御してあっていいメッシュ.
- `pitzDaily` と同じく 2 次元で解いている.

## メモ
- RANS よりめちゃくちゃ時間がかかる (当然).
    - 全実時間は短くしておいた.
- RANS と LES で結果が全然違う
    - これはこれとして取っておこう.
    - 何がおかしい?
    - これから `pitzDaily` をそのまま LES 化してみてどうなるか検証しよう.

## 動画 URL
- <https://www.youtube.com/watch?v=FHPEJc2nVIU&feature=youtu.be>

## Allrun 実行時の注意
- メッシュは Gmsh で切っているので, 実行には Gmsh が必要.
- 並列実行させているのでコア数に注意.
    - Allrun での mpirun -np で指定した数と,
      system/decomposeParDict での numberOfSubdomains を合わせる.

## メモ
- pimple なので非圧縮.
- $nu = 10^{-5}$ なのでかなりさらさらの流れ.
