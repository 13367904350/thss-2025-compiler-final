declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

declare float @getfloat()

declare void @putfloat(float)

declare i32 @getfarray(float*)

declare void @putfarray(i32, float*)

define i32 @main() {
entry:
  %p = alloca i32*
  %a = alloca [3 x i32]
  %t0 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i32 0
  store i32 1, i32* %t0
  %t1 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i32 1
  store i32 2, i32* %t1
  %t2 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i32 2
  store i32 3, i32* %t2
  %t3 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i32 0
  %.v1 = load i32, i32* %t3
  %t5 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i32 0
  store i32* %t5, i32** %p
  %.v2 = load i32*, i32** %p
  %.v3 = getelementptr i32, i32* %.v2, i32 1
  %.v4 = load i32, i32* %.v3
  call void @putint(i32 %.v4)
  call void @putch(i32 10)
  %.v5 = load i32*, i32** %p
  %t10 = sext i32 1 to i64
  %.v7 = getelementptr i32, i32* %.v5, i64 %t10
  %.v8 = load i32, i32* %.v7
  call void @putint(i32 %.v8)
  call void @putch(i32 10)
  ret i32 0
}

