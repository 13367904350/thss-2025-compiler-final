declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %.v17 = alloca i32
  %n = alloca i32
  %mid = alloca i32
  %low = alloca i32
  %high = alloca i32
  %x = alloca i32
  %a = alloca [10 x i32]
  %sum = alloca i32
  %i = alloca i32
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %i
  %.v6 = add i32 %.v5, 1
  %.v7 = load i32, i32* %i
  %t7 = sext i32 %.v7 to i64
  %t8 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t7
  store i32 %.v6, i32* %t8
  %.v8 = load i32, i32* %i
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %i
  br label %while.cond1
while.end3:
  store i32 10, i32* %n
  %.v10 = call i32 @getint()
  store i32 %.v10, i32* %x
  %.v11 = load i32, i32* %n
  %.v12 = sub i32 %.v11, 1
  store i32 %.v12, i32* %high
  store i32 0, i32* %low
  %.v13 = load i32, i32* %high
  %.v14 = load i32, i32* %low
  %.v15 = add i32 %.v13, %.v14
  %.v16 = sdiv i32 %.v15, 2
  store i32 %.v16, i32* %mid
  br label %while.cond4
while.cond4:
  store i32 0, i32* %.v17
  %.v18 = load i32, i32* %mid
  %t19 = sext i32 %.v18 to i64
  %t20 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t19
  %.v19 = load i32, i32* %t20
  %.v20 = load i32, i32* %x
  %.v21 = icmp ne i32 %.v19, %.v20
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %land.rhs7, label %land.end8
while.body5:
  %.v32 = load i32, i32* %high
  %.v33 = load i32, i32* %low
  %.v34 = add i32 %.v32, %.v33
  %.v35 = sdiv i32 %.v34, 2
  store i32 %.v35, i32* %mid
  %.v36 = load i32, i32* %x
  %.v37 = load i32, i32* %mid
  %t40 = sext i32 %.v37 to i64
  %t41 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t40
  %.v38 = load i32, i32* %t41
  %.v39 = icmp slt i32 %.v36, %.v38
  %.v40 = zext i1 %.v39 to i32
  %.v41 = icmp ne i32 %.v40, 0
  br i1 %.v41, label %if.then9, label %if.else10
while.end6:
  %.v46 = load i32, i32* %x
  %.v47 = load i32, i32* %mid
  %t52 = sext i32 %.v47 to i64
  %t53 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t52
  %.v48 = load i32, i32* %t53
  %.v49 = icmp eq i32 %.v46, %.v48
  %.v50 = zext i1 %.v49 to i32
  %.v51 = icmp ne i32 %.v50, 0
  br i1 %.v51, label %if.then12, label %if.else13
land.rhs7:
  %.v24 = load i32, i32* %low
  %.v25 = load i32, i32* %high
  %.v26 = icmp slt i32 %.v24, %.v25
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  %.v29 = zext i1 %.v28 to i32
  store i32 %.v29, i32* %.v17
  br label %land.end8
land.end8:
  %.v30 = load i32, i32* %.v17
  %.v31 = icmp ne i32 %.v30, 0
  br i1 %.v31, label %while.body5, label %while.end6
if.then9:
  %.v42 = load i32, i32* %mid
  %.v43 = sub i32 %.v42, 1
  store i32 %.v43, i32* %high
  br label %if.end11
if.else10:
  %.v44 = load i32, i32* %mid
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %low
  br label %if.end11
if.end11:
  br label %while.cond4
if.then12:
  %.v52 = load i32, i32* %x
  call void @putint(i32 %.v52)
  br label %if.end14
if.else13:
  store i32 0, i32* %x
  %.v53 = load i32, i32* %x
  call void @putint(i32 %.v53)
  br label %if.end14
if.end14:
  store i32 10, i32* %x
  %.v54 = load i32, i32* %x
  call void @putch(i32 %.v54)
  ret i32 0
}

