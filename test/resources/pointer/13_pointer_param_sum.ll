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

define i32 @sum(i32* %p, i32 %n) {
entry:
  %s = alloca i32
  %i = alloca i32
  %n.addr = alloca i32
  %p.addr = alloca i32*
  store i32* %p, i32** %p.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %i
  store i32 0, i32* %s
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %s
  %.v7 = load i32*, i32** %p.addr
  %.v8 = load i32, i32* %i
  %t8 = sext i32 %.v8 to i64
  %.v9 = getelementptr i32, i32* %.v7, i64 %t8
  %.v10 = load i32, i32* %.v9
  %.v11 = add i32 %.v6, %.v10
  store i32 %.v11, i32* %s
  %.v12 = load i32, i32* %i
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %i
  br label %while.cond1
while.end3:
  %.v14 = load i32, i32* %s
  ret i32 %.v14
}

define i32 @main() {
entry:
  %a = alloca [3 x i32]
  %t15 = sext i32 0 to i64
  %t16 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t15
  store i32 4, i32* %t16
  %t17 = sext i32 1 to i64
  %t18 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t17
  store i32 5, i32* %t18
  %t19 = sext i32 2 to i64
  %t20 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 %t19
  store i32 6, i32* %t20
  %.v1 = getelementptr [3 x i32], [3 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @sum(i32* %.v1, i32 3)
  call void @putint(i32 %.v2)
  call void @putch(i32 10)
  ret i32 0
}

