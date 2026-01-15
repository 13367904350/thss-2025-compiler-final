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

define void @add(i32* %a, i32 %n, i32 %v) {
entry:
  %i = alloca i32
  %v.addr = alloca i32
  %n.addr = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 %n, i32* %n.addr
  store i32 %v, i32* %v.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %t5 = load i32*, i32** %a.addr
  %.v6 = load i32, i32* %i
  %t7 = sext i32 %.v6 to i64
  %t8 = getelementptr i32, i32* %t5, i64 %t7
  %.v7 = load i32, i32* %t8
  %.v8 = load i32, i32* %v.addr
  %.v9 = add i32 %.v7, %.v8
  %t12 = load i32*, i32** %a.addr
  %.v10 = load i32, i32* %i
  %t14 = sext i32 %.v10 to i64
  %t15 = getelementptr i32, i32* %t12, i64 %t14
  store i32 %.v9, i32* %t15
  %.v11 = load i32, i32* %i
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %i
  br label %while.cond1
while.end3:
  ret void
}

define i32 @main() {
entry:
  %a = alloca [4 x i32]
  %t18 = sext i32 0 to i64
  %t19 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 %t18
  store i32 1, i32* %t19
  %t20 = sext i32 1 to i64
  %t21 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 %t20
  store i32 2, i32* %t21
  %t22 = sext i32 2 to i64
  %t23 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 %t22
  store i32 3, i32* %t23
  %t24 = sext i32 3 to i64
  %t25 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 %t24
  store i32 4, i32* %t25
  %.v1 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 0
  call void @add(i32* %.v1, i32 4, i32 5)
  %.v2 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 4, i32* %.v2)
  ret i32 0
}

