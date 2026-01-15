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
  %val = alloca i32
  %idx = alloca i32
  %a = alloca [3 x i32]
  %t0 = sext i32 0 to i64
  %t1 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t0
  store i32 0, i32* %t1
  %t2 = sext i32 1 to i64
  %t3 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t2
  store i32 0, i32* %t3
  %t4 = sext i32 2 to i64
  %t5 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t4
  store i32 0, i32* %t5
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %idx
  %.v2 = call i32 @getint()
  store i32 %.v2, i32* %val
  %.v3 = load i32, i32* %val
  %.v4 = load i32, i32* %idx
  %t10 = sext i32 %.v4 to i64
  %t11 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t10
  store i32 %.v3, i32* %t11
  %.v5 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 3, i32* %.v5)
  ret i32 0
}

