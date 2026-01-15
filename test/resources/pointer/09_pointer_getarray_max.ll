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
  %.v1 = load i32*, i32** %a.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  store i32 %.v3, i32* %m
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %i
  %.v5 = load i32, i32* %n.addr
  %.v6 = icmp slt i32 %.v4, %.v5
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body2, label %while.end3
while.body2:
  %.v9 = load i32, i32* %i
  %.v10 = load i32*, i32** %a.addr
  %.v11 = getelementptr i32, i32* %.v10, i32 %.v9
  %.v12 = load i32, i32* %.v11
  %.v13 = load i32, i32* %m
  %.v14 = icmp sgt i32 %.v12, %.v13
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then4, label %if.end5
while.end3:
  %.v23 = load i32, i32* %m
  ret i32 %.v23
if.then4:
  %.v17 = load i32, i32* %i
  %.v18 = load i32*, i32** %a.addr
  %.v19 = getelementptr i32, i32* %.v18, i32 %.v17
  %.v20 = load i32, i32* %.v19
  store i32 %.v20, i32* %m
  br label %if.end5
if.end5:
  %.v21 = load i32, i32* %i
  %.v22 = add i32 %.v21, 1
  store i32 %.v22, i32* %i
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

