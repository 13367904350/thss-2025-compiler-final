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

define i32 @palindrome(i32 %n) {
entry:
  %.v12 = alloca i32
  %flag = alloca i32
  %j = alloca i32
  %a = alloca [4 x i32]
  %n.addr = alloca i32
  store i32 %n, i32* %n.addr
  store i32 0, i32* %j
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %j
  %.v2 = icmp slt i32 %.v1, 4
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %n.addr
  %.v6 = srem i32 %.v5, 10
  %.v7 = load i32, i32* %j
  %t7 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 %.v7
  store i32 %.v6, i32* %t7
  %.v8 = load i32, i32* %n.addr
  %.v9 = sdiv i32 %.v8, 10
  store i32 %.v9, i32* %n.addr
  %.v10 = load i32, i32* %j
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %j
  br label %while.cond1
while.end3:
  store i32 0, i32* %.v12
  %t12 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 0
  %.v13 = load i32, i32* %t12
  %t14 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 3
  %.v14 = load i32, i32* %t14
  %.v15 = icmp eq i32 %.v13, %.v14
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %land.rhs7, label %land.end8
if.then4:
  store i32 1, i32* %flag
  br label %if.end6
if.else5:
  store i32 0, i32* %flag
  br label %if.end6
if.end6:
  %.v26 = load i32, i32* %flag
  ret i32 %.v26
land.rhs7:
  %t19 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 1
  %.v18 = load i32, i32* %t19
  %t21 = getelementptr [4 x i32], [4 x i32]* %a, i64 0, i32 2
  %.v19 = load i32, i32* %t21
  %.v20 = icmp eq i32 %.v18, %.v19
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  %.v23 = zext i1 %.v22 to i32
  store i32 %.v23, i32* %.v12
  br label %land.end8
land.end8:
  %.v24 = load i32, i32* %.v12
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %if.then4, label %if.else5
}

define i32 @main() {
entry:
  %flag = alloca i32
  %test = alloca i32
  store i32 1221, i32* %test
  %.v1 = load i32, i32* %test
  %.v2 = call i32 @palindrome(i32 %.v1)
  store i32 %.v2, i32* %flag
  %.v3 = load i32, i32* %flag
  %.v4 = icmp eq i32 %.v3, 1
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %if.then1, label %if.else2
if.then1:
  %.v7 = load i32, i32* %test
  call void @putint(i32 %.v7)
  br label %if.end3
if.else2:
  store i32 0, i32* %flag
  %.v8 = load i32, i32* %flag
  call void @putint(i32 %.v8)
  br label %if.end3
if.end3:
  store i32 10, i32* %flag
  %.v9 = load i32, i32* %flag
  call void @putch(i32 %.v9)
  ret i32 0
}

