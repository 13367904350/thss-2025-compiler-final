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
  %t0 = sext i32 0 to i64
  %t1 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t0
  store i32 1, i32* %t1
  %t2 = sext i32 1 to i64
  %t3 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t2
  store i32 2, i32* %t3
  %t4 = sext i32 2 to i64
  %t5 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t4
  store i32 3, i32* %t5
  %t6 = sext i32 0 to i64
  %t7 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t6
  %.v1 = load i32, i32* %t7
  %t9 = sext i32 0 to i64
  %t10 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t9
  store i32* %t10, i32** %p
  %t11 = load i32*, i32** %p
  %t12 = sext i32 1 to i64
  %t13 = getelementptr i32, i32* %t11, i64 %t12
  %.v2 = load i32, i32* %t13
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  %.v3 = load i32*, i32** %p
  %t16 = sext i32 1 to i64
  %.v4 = getelementptr i32, i32* %.v3, i64 %t16
  %.v5 = load i32, i32* %.v4
  call void @putint(i32 %.v5)
  call void @putch(i32 10)
  ret i32 0
}

