@ascii_0 = constant i32 48
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @my_getint() {
entry:
  %.v20 = alloca i32
  %.v4 = alloca i32
  %c = alloca i32
  %sum = alloca i32
  store i32 0, i32* %sum
  br label %while.cond1
while.cond1:
  %.v1 = icmp ne i32 1, 0
  br i1 %.v1, label %while.body2, label %while.end3
while.body2:
  %.v2 = call i32 @getch()
  %.v3 = sub i32 %.v2, 48
  store i32 %.v3, i32* %c
  store i32 1, i32* %.v4
  %.v5 = load i32, i32* %c
  %.v6 = icmp slt i32 %.v5, 0
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %lor.end8, label %lor.rhs7
while.end3:
  %.v16 = load i32, i32* %c
  store i32 %.v16, i32* %sum
  br label %while.cond9
if.then4:
  br label %while.cond1
if.else5:
  br label %while.end3
if.end6:
  br label %while.cond1
lor.rhs7:
  %.v9 = load i32, i32* %c
  %.v10 = icmp sgt i32 %.v9, 9
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  %.v13 = zext i1 %.v12 to i32
  store i32 %.v13, i32* %.v4
  br label %lor.end8
lor.end8:
  %.v14 = load i32, i32* %.v4
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %if.then4, label %if.else5
while.cond9:
  %.v17 = icmp ne i32 1, 0
  br i1 %.v17, label %while.body10, label %while.end11
while.body10:
  %.v18 = call i32 @getch()
  %.v19 = sub i32 %.v18, 48
  store i32 %.v19, i32* %c
  store i32 0, i32* %.v20
  %.v21 = load i32, i32* %c
  %.v22 = icmp sge i32 %.v21, 0
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %land.rhs15, label %land.end16
while.end11:
  %.v36 = load i32, i32* %sum
  ret i32 %.v36
if.then12:
  %.v32 = load i32, i32* %sum
  %.v33 = mul i32 %.v32, 10
  %.v34 = load i32, i32* %c
  %.v35 = add i32 %.v33, %.v34
  store i32 %.v35, i32* %sum
  br label %if.end14
if.else13:
  br label %while.end11
if.end14:
  br label %while.cond9
land.rhs15:
  %.v25 = load i32, i32* %c
  %.v26 = icmp sle i32 %.v25, 9
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  %.v29 = zext i1 %.v28 to i32
  store i32 %.v29, i32* %.v20
  br label %land.end16
land.end16:
  %.v30 = load i32, i32* %.v20
  %.v31 = icmp ne i32 %.v30, 0
  br i1 %.v31, label %if.then12, label %if.else13
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
  %.v7 = add i32 %.v6, 48
  %.v8 = load i32, i32* %i
  %t42 = sext i32 %.v8 to i64
  %t43 = getelementptr [16 x i32], [16 x i32]* %b, i64 0, i64 %t42
  store i32 %.v7, i32* %t43
  %.v9 = load i32, i32* %a.addr
  %.v10 = sdiv i32 %.v9, 10
  store i32 %.v10, i32* %a.addr
  %.v11 = load i32, i32* %i
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %i
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %.v13 = load i32, i32* %i
  %.v14 = icmp sgt i32 %.v13, 0
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %while.body5, label %while.end6
while.body5:
  %.v17 = load i32, i32* %i
  %.v18 = sub i32 %.v17, 1
  store i32 %.v18, i32* %i
  %.v19 = load i32, i32* %i
  %t55 = sext i32 %.v19 to i64
  %t56 = getelementptr [16 x i32], [16 x i32]* %b, i64 0, i64 %t55
  %.v20 = load i32, i32* %t56
  call void @putch(i32 %.v20)
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

