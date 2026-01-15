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
  %.v1 = load [3 x i32]*, [3 x i32]** %a.addr
  %.v2 = getelementptr [3 x i32], [3 x i32]* %.v1, i32 0
  %t2 = getelementptr [3 x i32], [3 x i32]* %.v2, i64 0, i32 0
  store i32 1, i32* %t2
  %.v3 = load [3 x i32]*, [3 x i32]** %a.addr
  %.v4 = getelementptr [3 x i32], [3 x i32]* %.v3, i32 0
  %t5 = getelementptr [3 x i32], [3 x i32]* %.v4, i64 0, i32 1
  store i32 2, i32* %t5
  %.v5 = load [3 x i32]*, [3 x i32]** %a.addr
  %.v6 = getelementptr [3 x i32], [3 x i32]* %.v5, i32 0
  %t8 = getelementptr [3 x i32], [3 x i32]* %.v6, i64 0, i32 2
  store i32 3, i32* %t8
  %.v7 = load [3 x i32]*, [3 x i32]** %a.addr
  %.v8 = getelementptr [3 x i32], [3 x i32]* %.v7, i32 1
  %t11 = getelementptr [3 x i32], [3 x i32]* %.v8, i64 0, i32 0
  store i32 4, i32* %t11
  %.v9 = load [3 x i32]*, [3 x i32]** %a.addr
  %.v10 = getelementptr [3 x i32], [3 x i32]* %.v9, i32 1
  %t14 = getelementptr [3 x i32], [3 x i32]* %.v10, i64 0, i32 1
  store i32 5, i32* %t14
  %.v11 = load [3 x i32]*, [3 x i32]** %a.addr
  %.v12 = getelementptr [3 x i32], [3 x i32]* %.v11, i32 1
  %t17 = getelementptr [3 x i32], [3 x i32]* %.v12, i64 0, i32 2
  store i32 6, i32* %t17
  ret void
}

define i32 @main() {
entry:
  %a = alloca [2 x [3 x i32]]
  %.v1 = getelementptr [2 x [3 x i32]], [2 x [3 x i32]]* %a, i64 0, i64 0
  call void @fill([3 x i32]* %.v1)
  %t19 = getelementptr [2 x [3 x i32]], [2 x [3 x i32]]* %a, i64 0, i32 1
  %t20 = getelementptr [3 x i32], [3 x i32]* %t19, i64 0, i32 2
  %.v2 = load i32, i32* %t20
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  ret i32 0
}

