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

define i32 @get_elem(i32* %a, i32 %i) {
entry:
  %i.addr = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 %i, i32* %i.addr
  %t0 = load i32*, i32** %a.addr
  %.v1 = load i32, i32* %i.addr
  %t2 = sext i32 %.v1 to i64
  %t3 = getelementptr i32, i32* %t0, i64 %t2
  %.v2 = load i32, i32* %t3
  ret i32 %.v2
}

define i32 @main() {
entry:
  %a = alloca [5 x i32]
  %t5 = sext i32 0 to i64
  %t6 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 %t5
  store i32 9, i32* %t6
  %t7 = sext i32 1 to i64
  %t8 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 %t7
  store i32 8, i32* %t8
  %t9 = sext i32 2 to i64
  %t10 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 %t9
  store i32 7, i32* %t10
  %t11 = sext i32 3 to i64
  %t12 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 %t11
  store i32 6, i32* %t12
  %t13 = sext i32 4 to i64
  %t14 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 %t13
  store i32 5, i32* %t14
  %.v1 = getelementptr [5 x i32], [5 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @get_elem(i32* %.v1, i32 2)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  ret i32 0
}

