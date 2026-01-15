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
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %a.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  %.v10 = load i32, i32* %v.addr
  %.v11 = add i32 %.v9, %.v10
  %.v12 = load i32, i32* %i
  %.v13 = load i32*, i32** %a.addr
  %.v14 = getelementptr i32, i32* %.v13, i32 %.v12
  store i32 %.v11, i32* %.v14
  %.v15 = load i32, i32* %i
  %.v16 = add i32 %.v15, 1
  store i32 %.v16, i32* %i
  br label %while.cond1
while.end3:
  ret void
}

define i32 @main() {
entry:
  %a = alloca [4 x i32]
  %t16 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 0
  store i32 1, i32* %t16
  %t17 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 1
  store i32 2, i32* %t17
  %t18 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 2
  store i32 3, i32* %t18
  %t19 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 3
  store i32 4, i32* %t19
  %.v1 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 0
  call void @add(i32* %.v1, i32 4, i32 5)
  %.v2 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i64 0
  call void @putarray(i32 4, i32* %.v2)
  ret i32 0
}

