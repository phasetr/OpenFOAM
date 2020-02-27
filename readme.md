# README
## 実行時の注意
- 基本的に各計算は run スクリプトで実行できるとする.
- 計算で生成したファイルは clean で消せる.
- 基本的に mpirun で並列化している.
    - マシンによってコア数を調整する必要あり.
- mpi の結果結合や Paraview の処理時間が増えるので,
  出力 (system/controlDict の writeInterval) は必要以上に細かくしないこと.

## キャプチャー
### simplescreenrecorder (Linux)
- [参考](https://ry0.github.io/blog/2016/02/21/simplescreenrecorder/)

インストールは下記の通り.

```sh
sudo apt install simplescreenrecorder
simplescreenrecorder
```

## 参考サイト
- [OpenFOAM 付属チュートリアル一覧](https://www.xsim.info/articles/OpenFOAM/Tutorials.html#basic)

## 標準ソルバー一覧
[このページ](https://www.xsim.info/articles/OpenFOAM/Standard-Solvers.html)から転記.
さらなる大元は [Standard solvers](http://www.openfoam.com/documentation/user-guide/standard-solvers.php).

### 基本
| コマンド            | 説明                                                     |
|:---------------------|:----------------------------------------------------------|
| laplacianFoam       | 拡散項のみからなる拡散方程式（伝導方程式）を解きます。   |
| potentialFoam       | ポテンシャル流れ（完全流体の流れ）を解きます。           |
| scalarTransportFoam | 与えられた流速場での受動的なスカラー量の輸送を解きます。 |

### 非圧縮性流体
| コマンド            | 説明                                                     |
|:------------------------------|:----------------------------------------------------------------------------------------------------|
| adjointShapeOptimizationFoam | 定常/非ニュートン流体の乱流/随伴方程式を使用することで障害物による圧損を考慮してダクト形状を最適化 |
| boundaryFoam                 | 定常/1次元乱流/通常は流入口での境界層条件の生成に使用                                              |
| icoFoam                      | 非定常/ニュートン流体の層流                                                                        |
| nonNewtonianIcoFoam          | 非定常/非ニュートン流体の層流                                                                      |
| pimpleFoam                   | 非定常/時間刻み幅大/（PISOとSIMPLEを組み合わせた）PIMPLEアルゴリズム                               |
| pimpleDyMFoam                | 非定常/移動メッシュ/（PISOとSIMPLEを組み合わせた）PIMPLEアルゴリズム                               |
| SRFPimpleFoam                | 非定常/時間刻み幅大/単一の回転領域                                                                 |
| pisoFoam                     | 非定常/PISOアルゴリズム                                                                            |
| shallowWaterFoam             | 非定常/回転を伴う非粘性の浅水方程式                                                                |
| simpleFoam                   | 定常                                                                                               |
| porousSimpleFoam             | 定常/多孔質体（陰解法・陽解法）有りの乱流/MRF（Multiple Reference Frame）機能を使用可能            |
| SRFSimpleFoam                | 定常/単一の回転領域                                                                                |

### 圧縮性流体
| コマンド            | 説明                                                     |
|:---------------------|:-----------------------------------------------------------------------------------------------------------|
| rhoCentralFoam      | Kurganov と Tadmor による中心-風上スキームに基づく密度ベースソルバー                                      |
| rhoCentralDyMFoam   | Kurganov と Tadmor による中心-風上スキームに基づく密度ベースソルバー/メッシュ移動・メッシュ変形を使用可能 |
| rhoPimpleFoam       | 非定常/HVAC（Heating、Ventilation、Air Conditioning）用                                                   |
| rhoPimpleDyMFoam    | 非定常/HVAC（Heating、Ventilation、Air Conditioning）用/移動メッシュ、トポロジー変化を使用可能            |
| rhoSimpleFoam       | 定常                                                                                                      |
| rhoPorousSimpleFoam | 定常/多孔質体（陰解法・陽解法）有り/入力項を使用可能                                                      |
| sonicFoam           | 非定常/遷音速・超音速/気体                                                                                |
| sonicDyMFoam        | 非定常/遷音速・超音速/気体/メッシュ移動・メッシュ変形を使用可能                                           |
| sonicLiquidFoam     | 非定常/遷音速・超音速/圧縮性の液体/層流                                                                   |

### 多相流体
| コマンド            | 説明                                                     |
|:---------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| cavitatingFoam                  | 非定常/圧縮性/液体・蒸気の混合状態が計算可能な一様平衡モデルに基づくキャビテーション                                                                                                                                |
| cavitatingDyMFoam               | 非定常/圧縮性/液体・蒸気の混合状態が計算可能な一様平衡モデルに基づくキャビテーション/メッシュ移動・メッシュ変形を使用可能                                                                                           |
| compressibleInterFoam           | 圧縮性/非等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用                                                                                                                                                      |
| compressibleInterDyMFoam        | 圧縮性/非等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用/メッシュ移動・解適合による再メッシュ作成を含むメッシュ変形を使用可能                                                                                 |
| compressibleMultiphaseInterFoam | 圧縮性/非等温・非混合性の n 相の流体/界面捕獲法に基づく VOF 法を使用                                                                                                                                                |
| driftFluxFoam                   | 非圧縮性/2流体/相の相対変位をドリフト・フラックスで近似する混合手法を使用                                                                                                                                           |
| interFoam                       | 非圧縮性/等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用                                                                                                                                                      |
| interDyMFoam                    | 非圧縮性/等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用/メッシュ移動・解適合による再メッシュ作成を含むメッシュ変形を使用可能                                                                                 |
| interMixingFoam                 | 非圧縮性/3流体（うち2流体は混和可能）/界面捕獲法に基づく VOF 法を使用                                                                                                                                               |
| interPhaseChangeFoam            | 非圧縮性/相変化（例：キャビテーション）を伴う等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用                                                                                                                  |
| interPhaseChangeDyMFoam         | 非圧縮性/相変化（例：キャビテーション）を伴う等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用/メッシュ移動・解適合による再メッシュ作成を含むメッシュ変形を使用可能                                             |
| MPPICInterFoam                  | 非圧縮性/等温・非混合性の2流体/界面捕獲法に基づく VOF 法を使用/運動量とその他の流体物性は「混合」され、単一の運動方程式が解かれます。                                                                               |
| multiphaseEulerFoam             | 熱伝達を含む、複数の圧縮性の流体からなる系のためのソルバー                                                                                                                                                          |
| multiphaseInterFoam             | 非圧縮性/n 相の流体/各相の界面捕獲、表面張力、接触角を考慮                                                                                                                                                          |
| multiphaseInterDyMFoam          | 非圧縮性/n 相の流体/各相の界面捕獲、表面張力、接触角を考慮/メッシュ移動・メッシュ変形を使用可能                                                                                                                     |
| potentialFreeSurfaceFoam        | 非圧縮性/単相の自由表面近似を行なうための波の高さの場を含むナビエ・ストークス方程式のためのソルバー                                                                                                                 |
| potentialFreeSurfaceDyMFoam     | 非圧縮性/単相の自由表面近似を行なうための波の高さの場を含むナビエ・ストークス方程式のためのソルバー/メッシュ移動・メッシュ変形を使用可能                                                                            |
| reactingMultiphaseEulerFoam     | 圧縮性/単一圧力でその他の物性は別れた任意の数の流体/相のモデル・タイプは実行時に選択可能で、多種流体、相内の反応を使用可能。/相の方程式系は実行時に選択可能で、運動量、熱、質量の輸送にそれぞれ異なる種類を使用可能 |
| reactingTwoPhaseEulerFoam       | 圧縮性/単一圧力でその他の物性は異なる2流体/相のモデル・タイプは実行時に選択可能で、多種流体、相内の反応を使用可能。/相の方程式系は実行時に選択可能で、運動量、熱、質量の輸送にそれぞれ異なる種類を使用可能          |
| twoLiquidMixingFoam             | 非圧縮性/混合性の2流体                                                                                                                                                                                              |
| twoPhaseEulerFoam               | 圧縮性/一方は分散相であるような2相流体（例：熱伝達を含む液体中の泡）                                                                                                                                                |

### 直接数値シミュレーション（DNS）
| コマンド            | 説明                                                     |
|:---------|:------------------------------------------------------------|
| dnsFoam | 乱流モデルを使用せずにナビエ・ストークス方程式を解きます。 |

### 年商
| コマンド            | 説明                                                     |
|:------------------------|:--------------------------------------------------------------------------------------------------------------------------------------|
| chemFoam               | 化学反応問題用ソルバー/他の化学反応用ソルバーとの比較を行うためのシングルセル用ソルバー/シングルセル、初期条件から作成された場を使用 |
| coldEngineFoam         | 内燃エンジンの低温流れ用ソルバー                                                                                                     |
| engineFoam             | 内燃エンジン用ソルバー                                                                                                               |
| fireFoam               | 非定常/反応粒子の粒子群、表面膜、熱分解モデルを使用した火炎と乱流拡散火炎用ソルバー                                                  |
| PDRFoam                | 圧縮性/乱流モデルを考慮した予混・部分予混の燃焼用ソルバー                                                                            |
| reactingFoam           | 化学反応を考慮した燃焼用ソルバー                                                                                                     |
| rhoReactingBuoyantFoam | 密度ベースの熱力学パッケージを使用ソルバーした化学反応を考慮した燃焼用ソルバー/浮力を考慮                                            |
| rhoReactingFoam        | 密度ベースの熱力学パッケージを使用ソルバーした化学反応を考慮した燃焼用ソルバー                                                       |
| XiFoam                 | 圧縮性/乱流モデルを考慮した予混・部分予混の燃焼用ソルバー                                                                            |
| XiDyMFoam              | 圧縮性/乱流モデルを考慮した予混・部分予混の燃焼用ソルバー/メッシュ移動・メッシュ変形を使用可能                                       |

### 熱輸送・浮力駆動流れ
| コマンド            | 説明                                                     |
|:-----------------------------|:----------------------------------------------------------|
| buoyantBoussinesqPimpleFoam | 非定常/非圧縮性/浮力を考慮                               |
| buoyantBoussinesqSimpleFoam | 定常/非圧縮性/浮力を考慮                                 |
| buoyantPimpleFoam           | 非定常/圧縮性/浮力を考慮/空調と熱輸送の計算用            |
| buoyantSimpleFoam           | 定常/圧縮性/浮力を考慮/空調と熱輸送の計算用              |
| chtMultiRegionFoam          | 非定常/浮力を考慮/固体・液体間の相互熱伝達、熱伝導を考慮 |
| chtMultiRegionSimpleFoam    | 定常/浮力を考慮/固体・液体間の相互熱伝達、熱伝導を考慮   |
| thermoFoam                  | 凍結した流れ場での熱輸送、熱力学の計算                   |

### 粒子追跡流れ
| コマンド            | 説明                                                     |
|:------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| coalChemistryFoam                  | 圧縮性/非定常/石炭・石灰石のパーセルをともなう流れ/発熱/燃焼                                                                                                                                           |
| DPMFoam                            | 非定常/粒子体積率の効果を考慮した連続相内でのひとつの運動パーセルの連成された輸送                                                                                                                      |
| MPPICFoam                          | 非定常/粒子体積率の効果を考慮した連続相内でのひとつの運動パーセルの連成された輸送/粒子間相互作用を計算せずに衝突を表現するためにセル内多相粒子（MPPIC - Multi-Phase Particle In Cell）が使用されます。 |
| icoUncoupledKinematicParcelFoam    | 非定常/ひとつの運動パーセルの受動的な輸送                                                                                                                                                              |
| icoUncoupledKinematicParcelDyMFoam | 非定常/ひとつの運動パーセルの受動的な輸送/メッシュ移動・メッシュ変形を使用可能                                                                                                                         |
| reactingParcelFilmFoam             | 圧縮性/非定常/反応・多相のパーセルをともなう流れ/表面膜モデル                                                                                                                                          |
| reactingParcelFoam                 | 圧縮性/非定常/反応・多相のパーセルをともなう流れ/表面膜モデル/入力項・拘束を使用可能                                                                                                                   |
| simpleReactingParcelFoam           | 圧縮性/定常/反応・多相のパーセルをともなう流れ/表面膜モデル/入力項・拘束を使用可能                                                                                                                     |
| simpleCoalParcelFoam               | 圧縮性/定常/石炭パーセルをともなう流れ/表面膜モデル/入力項・拘束を使用可能                                                                                                                             |
| sprayFoam                          | 圧縮性/非定常/噴霧パーセルをともなう流れ                                                                                                                                                               |
| sprayDyMFoam                       | 圧縮性/非定常/噴霧パーセルをともなう流れ/メッシュ移動・メッシュ変形を使用可能                                                                                                                          |
| sprayEngineFoam                    | 圧縮性/非定常/噴霧パーセルをともなうエンジン流れ                                                                                                                                                       |
| uncoupledKinematicParcelFoam       | 非定常/パーセルの受動的な輸送                                                                                                                                                                          |

### 分子動力学
| コマンド            | 説明                                                     |
|:---------------------|:------------------------------------------------------------------|
| mdEquilibrationFoam | 平衡かつ・またはプリコンディションの分子動力学系のためのソルバー |
| mdFoam              | 流体力学用の分子動力学ソルバー                                   |

### 直接シミュレーション・モンテカルロ法
| コマンド            | 説明                                                     |
|:----------|:-------------------------------------------------------------------------------------------------|
| dsmcFoam | 直接シミュレーション・モンテカルロ法（Direct Simulation Monte Carlo, DSMC）/非定常/複数種の流れ |

### 電磁気
| コマンド            | 説明                                                     |
|:-------------------|:---------------------------------------------------------------------|
| electrostaticFoam | 静電用ソルバー                                                      |
| magneticFoam      | 永久磁石によって生成される磁場用ソルバー                            |
| mhdFoam           | 磁気流体力学（MHD）用ソルバー/非圧縮性/磁場影響下の導電性流体の層流 |

### 固体の応力解析
| コマンド            | 説明                                                     |
|:----------------------------------|:-----------------------------------------------------------------------------|
| solidDisplacementFoam            | 非定常/線形弾性体用の分離型有限体積ソルバー/固体の微小変形用/熱拡散・熱応力 |
| solidEquilibriumDisplacementFoam | 定常/線形弾性体用の分離型有限体積ソルバー/固体の微小変形用/熱拡散・熱応力   |

### 金融
| コマンド            | 説明                                                     |
|:---------------|:--------------------------------------------|
| financialFoam | 商品価格に対するブラック・ショールズ方程式 |

## OpenFOAM 参考情報
### MISC
- [日本語ユーザーマニュアル](http://foam.sourceforge.net/docs/Guides-a4/UserGuide-Japanese.pdf)

### 境界条件
- [リスト](https://www.openfoam.com/documentation/user-guide/standard-boundaryconditions.php)
- [noSlip](https://www.openfoam.com/documentation/guides/latest/doc/guide-bcs-wall-no-slip.html)

### fvOptions
- [参考ページ](http://penguinitis.g1.xrea.com/study/OpenFOAM/fvOptions/fvOptions.html)

OpenFOAM 内の既存の方程式を修正できる.
設定ファイルは `system` に `fvOptions` として置く.

## YouTube の動画リスト
- https://www.youtube.com/playlist?list=PLSBzltjFoprYN0Rh3tLmoHWqjPRYwJukv

## YouTube 投稿時のテンプレート
今回の OpenFOAM の設定は次のリポジトリにあります.

- 対象のディレクトリ
- https://github.com/phasetr/OpenFOAM

これ以外にもいろいろなコンテンツや無料の通信講座を作っています.

- 無料の通信講座 https://phasetr.com/blog/2014/06/09/トップ固定記事：メルマガ・数学カフェ・その他/
- サービス一覧 https://phasetr.com/services/
- メルマガ登録 https://phasetr.com/free-mailmagazine/

自分用の Paraview 操作メモも兼ねているので,
動画は Paraview 操作の画面キャプチャーの形で作っています.
