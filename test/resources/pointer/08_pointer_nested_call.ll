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

define i32 @inc(i32* %a) {
entry:
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  %t0 = load i32*, i32** %a.addr
  %t1 = sext i32 0 to i64
  %t2 = getelementptr i32, i32* %t0, i64 %t1
  %.v1 = load i32, i32* %t2
  %.v2 = add i32 %.v1, 1
  %t5 = load i32*, i32** %a.addr
  %t6 = sext i32 0 to i64
  %t7 = getelementptr i32, i32* %t5, i64 %t6
  store i32 %.v2, i32* %t7
  %t8 = load i32*, i32** %a.addr
  %t9 = sext i32 0 to i64
  %t10 = getelementptr i32, i32* %t8, i64 %t9
  %.v3 = load i32, i32* %t10
  ret i32 %.v3
}

define i32 @main() {
entry:
  %a = alloca [2 x i32]
  %t12 = sext i32 0 to i64
  %t13 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i64 %t12
  store i32 10, i32* %t13
  %t14 = sext i32 1 to i64
  %t15 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i64 %t14
  store i32 20, i32* %t15
  %.v1 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @inc(i32* %.v1)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  %.v3 = getelementptr [2 x i32], [2 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 2, i32* %.v3)
  ret i32 0
}

