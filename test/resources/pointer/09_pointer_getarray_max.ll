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

define i32 @max_val(i32* %a, i32 %n) {
entry:
  %i = alloca i32
  %m = alloca i32
  %n.addr = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 %n, i32* %n.addr
  %t0 = load i32*, i32** %a.addr
  %t1 = sext i32 0 to i64
  %t2 = getelementptr i32, i32* %t0, i64 %t1
  %.v1 = load i32, i32* %t2
  store i32 %.v1, i32* %m
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %i
  %.v3 = load i32, i32* %n.addr
  %.v4 = icmp slt i32 %.v2, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  %t9 = load i32*, i32** %a.addr
  %.v7 = load i32, i32* %i
  %t11 = sext i32 %.v7 to i64
  %t12 = getelementptr i32, i32* %t9, i64 %t11
  %.v8 = load i32, i32* %t12
  %.v9 = load i32, i32* %m
  %.v10 = icmp sgt i32 %.v8, %.v9
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then4, label %if.end5
while.end3:
  %.v17 = load i32, i32* %m
  ret i32 %.v17
if.then4:
  %t18 = load i32*, i32** %a.addr
  %.v13 = load i32, i32* %i
  %t20 = sext i32 %.v13 to i64
  %t21 = getelementptr i32, i32* %t18, i64 %t20
  %.v14 = load i32, i32* %t21
  store i32 %.v14, i32* %m
  br label %if.end5
if.end5:
  %.v15 = load i32, i32* %i
  %.v16 = add i32 %.v15, 1
  store i32 %.v16, i32* %i
  br label %while.cond1
}

define i32 @main() {
entry:
  %n = alloca i32
  %a = alloca [10 x i32]
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @getarray(i32* %.v1)
  store i32 %.v2, i32* %n
  %.v3 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v4 = load i32, i32* %n
  %.v5 = call i32 @max_val(i32* %.v3, i32 %.v4)
  call void @putint(i32 %.v5)
  call void @putch(i32 10)
  ret i32 0
}

