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

define void @fill([3 x i32]* %a) {
entry:
  %a.addr = alloca [3 x i32]*
  store [3 x i32]* %a, [3 x i32]** %a.addr
  %t0 = load [3 x i32]*, [3 x i32]** %a.addr
  %t1 = sext i32 0 to i64
  %t2 = sext i32 0 to i64
  %t3 = getelementptr [3 x i32], [3 x i32]* %t0, i64 %t1, i64 %t2
  store i32 1, i32* %t3
  %t4 = load [3 x i32]*, [3 x i32]** %a.addr
  %t5 = sext i32 0 to i64
  %t6 = sext i32 1 to i64
  %t7 = getelementptr [3 x i32], [3 x i32]* %t4, i64 %t5, i64 %t6
  store i32 2, i32* %t7
  %t8 = load [3 x i32]*, [3 x i32]** %a.addr
  %t9 = sext i32 0 to i64
  %t10 = sext i32 2 to i64
  %t11 = getelementptr [3 x i32], [3 x i32]* %t8, i64 %t9, i64 %t10
  store i32 3, i32* %t11
  %t12 = load [3 x i32]*, [3 x i32]** %a.addr
  %t13 = sext i32 1 to i64
  %t14 = sext i32 0 to i64
  %t15 = getelementptr [3 x i32], [3 x i32]* %t12, i64 %t13, i64 %t14
  store i32 4, i32* %t15
  %t16 = load [3 x i32]*, [3 x i32]** %a.addr
  %t17 = sext i32 1 to i64
  %t18 = sext i32 1 to i64
  %t19 = getelementptr [3 x i32], [3 x i32]* %t16, i64 %t17, i64 %t18
  store i32 5, i32* %t19
  %t20 = load [3 x i32]*, [3 x i32]** %a.addr
  %t21 = sext i32 1 to i64
  %t22 = sext i32 2 to i64
  %t23 = getelementptr [3 x i32], [3 x i32]* %t20, i64 %t21, i64 %t22
  store i32 6, i32* %t23
  ret void
}

define i32 @main() {
entry:
  %a = alloca [2 x [3 x i32]]
  %.v1 = getelementptr [2 x [3 x i32]], [2 x [3 x i32]]* %a, i64 0, i64 0
  call void @fill([3 x i32]* %.v1)
  %t25 = sext i32 1 to i64
  %t26 = sext i32 2 to i64
  %t27 = getelementptr [2 x [3 x i32]], [2 x [3 x i32]]* %a, i64 0, i64 %t25, i64 %t26
  %.v2 = load i32, i32* %t27
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  ret i32 0
}

