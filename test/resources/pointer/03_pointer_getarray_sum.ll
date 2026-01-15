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

define i32 @sum(i32* %a, i32 %n) {
entry:
  %i = alloca i32
  %s = alloca i32
  %n.addr = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %s
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
  %.v6 = load i32, i32* %s
  %t6 = load i32*, i32** %a.addr
  %.v7 = load i32, i32* %i
  %t8 = sext i32 %.v7 to i64
  %t9 = getelementptr i32, i32* %t6, i64 %t8
  %.v8 = load i32, i32* %t9
  %.v9 = add i32 %.v6, %.v8
  store i32 %.v9, i32* %s
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %i
  br label %while.cond1
while.end3:
  %.v12 = load i32, i32* %s
  ret i32 %.v12
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
  %.v5 = call i32 @sum(i32* %.v3, i32 %.v4)
  call void @putint(i32 %.v5)
  call void @putch(i32 10)
  ret i32 0
}

