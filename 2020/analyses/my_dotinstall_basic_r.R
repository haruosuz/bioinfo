# https://dotinstall.com/lessons/basic_r
# R言語入門 (全13回) - プログラミングならドットインストール

# https://akiyoko.hatenablog.jp/entry/2014/11/07/042801
# Windows で R（統計解析ツール）を使う - akiyoko blog

# https://github.com/haruosuz/books/tree/master/r4ds
# https://r4ds.had.co.nz/workflow-scripts.html
# 6.1 Running code
# Cmd/Ctrl + Enter

#01 R言語とはなにか？ (02:46)

#02 Rコンソールを使ってみよう (02:25)
help()
help(matrix)
?matrix
# コマンドの補完
# コンソールのクリア

#03 変数とデータ型について (02:50)
# 変数の使い方
x <- 5
x
x + 3
ls()
rm(x)
ls()
# データ型

#04 数値と文字列を扱ってみよう (02:38)
# 数値の演算
5 + 3
10 / 3
10 %/% 3
10 %% 3
2 ^ 4
cos(1)
sqrt(2)
round(2.555)
"abbccccc"
# 文字列の連結
paste("a", "b", "c")
  paste0("a", "b", "c")
paste("a", "b", "c", sep="/")
# 文字列と数値の相互変換
x <- 5
x
as.character(x)
x <- "5"
as.numeric(x)

#05 ベクトルを扱ってみよう (03:02)
v <- c(1, 3, 5)
v
v[2]
v[2] <- 10
v <- c("abc", "bdee")
v
v <- c(TRUE, FLASE)
v
length(v)
v <- 1:10
v
v <- 1:-10
v
v <- seq(1, 10)
v
v <- seq(1, 10, by=2)
v
v <- seq(1, 10, length=5)
v
v <- rep(1:5, times=3)
v
v <- rep(1:5, length=10)
v

# http://cse.naro.affrc.go.jp/takezawa/r-tips/r/14.html
# 14. ベクトル計算

#06 ベクトルの演算をしてみよう (02:21)
# ベクトルの演算
x <- c(1, 3, 5)
y <- c(2, 3, 4)
x * 2
x - 1
x + y
x > y
x %in% y
# 集合の演算
union(x, y) # 和集合
intersect(x, y) # 積集合
setdiff(x, y) # 差集合
setequal(x, y) # 集合として等しいか否か

# http://cse.naro.affrc.go.jp/takezawa/r-tips/r/16.html
# 16. 種々のベクトル
# 順序つき因子ベクトルと順序無し因子ベクトル

#07 因子ベクトルを使ってみよう (02:59)
x <- c("S", "M", "L", "M", "L")
x
x.fc <- factor(x)
x.fc
levels(x.fc)
x.fc <- factor(x, levels=c("S","M","L"))
x.fc
x.or <- ordered(x, levels=c("S","M","L"))
x.or

#08 行列を扱ってみよう (02:44)
# 行列の作り方
x <- matrix(1:6, nrow=3, ncol=2)
x
x <- matrix(1:6, nrow=3, ncol=2, byrow=TRUE)
x
# 行列を扱う関数
x <- rbind(c(1,2), 3:4, 5:6)
x
x <- cbind(c(1,2), 3:4, 5:6)
x
x + 1
1 / x
dim(x)
nrow(x)
ncol(x)

#09 行列を編集してみよう (03:00)
# 要素へのアクセス方法
x
x[, 1]
x[2, ]
x[1, 2]
x[1, 1:2]
x[1, c(1,2)]
x[1, c(1,3)]
# 行列の編集方法
x[1, 2] <- 10
x
edit(x)
x2 <- edit(x)
x2
fix(x)
x

#10 リストを扱ってみよう (02:12)
# リストの作り方
x <- list(5:10, "abc", matrix(1:6, nrow=2, ncol=3))
x
# 要素へのアクセス方法
x[1]
x[[1]]
x[[3]][1, 2]

#11 データフレームを扱ってみよう (03:01)
# データフレームの作成方法
x <- data.frame(SIZE=c("M","L","S","L","M"),SALES=c(1,2,1,3,1))
x
x[1,2]
x$SIZE
# ファイルの読み込み
#x <- read.table("sales.txt", header=TRUE, sep=",", na.strings="*")

#12 データの集計をしてみよう (03:01)
  x <- data.frame(SIZE=c("M","L","S"),SALES=c(4,1,2),DISTANCE=c(1.3,NA,0.3))
x
sum(x$SALES)
max(x$SALES)
min(x$SALES)
mean(x$SALES)
median(x$SALES)
sd(x$SALES)
mean(x$DISTANCE)
mean(x$DISTANCE, na.rm=TRUE)
summary(x$SALES)
str(x)

#13 グラフを描いてみよう (02:32)
data()
# cars  Speed and Stopping Distances of Cars
data(cars)
cars
str(cars)
summary(cars)
# グラフの描画方法
hist(cars$speed)
barplot(cars$speed)
plot(cars$speed, cars$dist)
cor(cars$speed, cars$dist)

