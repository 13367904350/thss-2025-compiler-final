@ascii_0 = constant i32 48
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

define i32 @my_getint() {
entry:
  %.v22 = alloca i32
  %.v5 = alloca i32
  %c = alloca i32
  %sum = alloca i32
  store i32 0, i32* %sum
  br label %while.cond1
while.cond1:
  %.v1 = icmp ne i32 1, 0
  br i1 %.v1, label %while.body2, label %while.end3
while.body2:
  %.v2 = call i32 @getch()
  %.v3 = load i32, i32* @ascii_0
  %.v4 = sub i32 %.v2, %.v3
  store i32 %.v4, i32* %c
  store i32 1, i32* %.v5
  %.v6 = load i32, i32* %c
  %.v7 = icmp slt i32 %.v6, 0
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %lor.end8, label %lor.rhs7
while.end3:
  %.v17 = load i32, i32* %c
  store i32 %.v17, i32* %sum
  br label %while.cond9
if.then4:
  br label %while.cond1
if.else5:
  br label %while.end3
if.end6:
  br label %while.cond1
lor.rhs7:
  %.v10 = load i32, i32* %c
  %.v11 = icmp sgt i32 %.v10, 9
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  %.v14 = zext i1 %.v13 to i32
  store i32 %.v14, i32* %.v5
  br label %lor.end8
lor.end8:
  %.v15 = load i32, i32* %.v5
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then4, label %if.else5
while.cond9:
  %.v18 = icmp ne i32 1, 0
  br i1 %.v18, label %while.body10, label %while.end11
while.body10:
  %.v19 = call i32 @getch()
  %.v20 = load i32, i32* @ascii_0
  %.v21 = sub i32 %.v19, %.v20
  store i32 %.v21, i32* %c
  store i32 0, i32* %.v22
  %.v23 = load i32, i32* %c
  %.v24 = icmp sge i32 %.v23, 0
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %land.rhs15, label %land.end16
while.end11:
  %.v38 = load i32, i32* %sum
  ret i32 %.v38
if.then12:
  %.v34 = load i32, i32* %sum
  %.v35 = mul i32 %.v34, 10
  %.v36 = load i32, i32* %c
  %.v37 = add i32 %.v35, %.v36
  store i32 %.v37, i32* %sum
  br label %if.end14
if.else13:
  br label %while.end11
if.end14:
  br label %while.cond9
land.rhs15:
  %.v27 = load i32, i32* %c
  %.v28 = icmp sle i32 %.v27, 9
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  %.v31 = zext i1 %.v30 to i32
  store i32 %.v31, i32* %.v22
  br label %land.end16
land.end16:
  %.v32 = load i32, i32* %.v22
  %.v33 = icmp ne i32 %.v32, 0
  br i1 %.v33, label %if.then12, label %if.else13
}

define void @my_putint(i32 %a) {
entry:
  %i = alloca i32
  %b = alloca [16 x i32]
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %a.addr
  %.v2 = icmp sgt i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %a.addr
  %.v6 = srem i32 %.v5, 10
  %.v7 = load i32, i32* @ascii_0
  %.v8 = add i32 %.v6, %.v7
  %.v9 = load i32, i32* %i
  %t45 = getelementptr [16 x i32], [16 x i32]* %b, i64 0, i32 %.v9
  store i32 %.v8, i32* %t45
  %.v10 = load i32, i32* %a.addr
  %.v11 = sdiv i32 %.v10, 10
  store i32 %.v11, i32* %a.addr
  %.v12 = load i32, i32* %i
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %i
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %.v14 = load i32, i32* %i
  %.v15 = icmp sgt i32 %.v14, 0
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %while.body5, label %while.end6
while.body5:
  %.v18 = load i32, i32* %i
  %.v19 = sub i32 %.v18, 1
  store i32 %.v19, i32* %i
  %.v20 = load i32, i32* %i
  %t57 = getelementptr [16 x i32], [16 x i32]* %b, i64 0, i32 %.v20
  %.v21 = load i32, i32* %t57
  call void @putch(i32 %.v21)
  br label %while.cond4
while.end6:
  ret void
}

define i32 @main() {
entry:
  %m = alloca i32
  %n = alloca i32
  %.v1 = call i32 @my_getint()
  store i32 %.v1, i32* %n
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %n
  %.v3 = icmp sgt i32 %.v2, 0
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = call i32 @my_getint()
  store i32 %.v6, i32* %m
  %.v7 = load i32, i32* %m
  call void @my_putint(i32 %.v7)
  call void @putch(i32 10)
  %.v8 = load i32, i32* %n
  %.v9 = sub i32 %.v8, 1
  store i32 %.v9, i32* %n
  br label %while.cond1
while.end3:
  ret i32 0
}

