# robosys2022

![test](https://github.com/Yuto2511/RobotSystem_repository_test/actions/workflows/test.yml/badge.svg)

千葉工業大学 未来ロボティクス学科 2022年度 ロボットシステム学の講義、また課題で作成したコマンドです。

[plus](#plus)

[cal_up](#cal_up)

## 動作確認済み環境

- OS: Ubuntu 20.04
 - Python3.7 ~ 3.10

## インストール

これらのコマンドを使用するには、このリポジトリを適当な場所にクローンしてください.

```
git clone https://github.com/Yuto2511/robosys2022.git
cd robosys2022
```

## plus

標準入力から数字を読み込み、それらを合計して出力します。

### 使い方

```
$ seq 5 | ./plus
15
```

## cal_up

標準入力から四則演算子と数字を読み込み、それらを演算子通りに処理して出力します。

### 使い方

1文字めに演算子、次に数字を入力します。

```
$ echo "+ 1 2 3" | /.cal_up
6.0
```

```
$ echo "- 1 2 3" | /.cal_up
-6.0
```

```
$ echo "* 1 2 3" | /.cal_up
6.0
```

```
$ echo "+ 1 2" | /.cal_up
0.5
```


## ライセンス

- このソフトウェアパッケージは、３条項BSDライセンスの下、再配布および使用が許可されています。
- © 2022 Yamaguchi Yuto
