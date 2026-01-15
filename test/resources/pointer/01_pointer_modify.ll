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

define void @modify(i32* %a) {
entry:
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  %t0 = load i32*, i32** %a.addr
  %t1 = sext i32 1 to i64
  %t2 = getelementptr i32, i32* %t0, i64 %t1
  store i32 99, i32* %t2
  ret void
}

define i32 @main() {
entry:
  %a = alloca [3 x i32]
  %t3 = sext i32 0 to i64
  %t4 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t3
  store i32 10, i32* %t4
  %t5 = sext i32 1 to i64
  %t6 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t5
  store i32 20, i32* %t6
  %t7 = sext i32 2 to i64
  %t8 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t7
  store i32 30, i32* %t8
  %.v1 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 0
  call void @modify(i32* %.v1)
  %.v2 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 3, i32* %.v2)
  ret i32 0
}

