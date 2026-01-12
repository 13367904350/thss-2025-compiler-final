@ans = global [50 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@sum = global i32 0
@n = global i32 0
@row = global [50 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@line1 = global [50 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@line2 = global [100 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @printans() {
entry:
  %v1 = load i32, i32* @sum
  %v2 = add i32 %v1, 1
  store i32 %v2, i32* @sum
  %t2 = alloca i32
  store i32 1, i32* %t2
  br label %while.cond1
while.cond1:
  %v3 = load i32, i32* %t2
  %v4 = load i32, i32* @n
  %v5 = icmp sle i32 %v3, %v4
  %v6 = zext i1 %v5 to i32
  %v7 = icmp ne i32 %v6, 0
  br i1 %v7, label %while.body2, label %while.end3
while.body2:
  %v8 = load i32, i32* %t2
  %t9 = getelementptr [50 x i32], [50 x i32]* @ans, i32 0, i32 %v8
  %v9 = load i32, i32* %t9
  call void @putint(i32 %v9)
  %v10 = load i32, i32* %t2
  %v11 = load i32, i32* @n
  %v12 = icmp eq i32 %v10, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %if.then4, label %if.else5
while.end3:
  ret void
if.then4:
  call void @putch(i32 10)
  ret void
if.else5:
  call void @putch(i32 32)
  br label %if.end6
if.end6:
  %v15 = load i32, i32* %t2
  %v16 = add i32 %v15, 1
  store i32 %v16, i32* %t2
  br label %while.cond1
}

define void @f(i32 %step) {
entry:
  %t18 = alloca i32
  store i32 %step, i32* %t18
  %t19 = alloca i32
  store i32 1, i32* %t19
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t19
  %v2 = load i32, i32* @n
  %v3 = icmp sle i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = alloca i32
  store i32 0, i32* %v6
  %v7 = alloca i32
  store i32 0, i32* %v7
  %v8 = load i32, i32* %t19
  %t28 = getelementptr [50 x i32], [50 x i32]* @row, i32 0, i32 %v8
  %v9 = load i32, i32* %t28
  %v10 = icmp ne i32 %v9, 1
  %v11 = zext i1 %v10 to i32
  %v12 = icmp ne i32 %v11, 0
  br i1 %v12, label %land.rhs6, label %land.end7
while.end3:
  ret void
if.then4:
  %v35 = load i32, i32* %t19
  %v36 = load i32, i32* %t18
  %t59 = getelementptr [50 x i32], [50 x i32]* @ans, i32 0, i32 %v36
  store i32 %v35, i32* %t59
  %v37 = load i32, i32* %t18
  %v38 = load i32, i32* @n
  %v39 = icmp eq i32 %v37, %v38
  %v40 = zext i1 %v39 to i32
  %v41 = icmp ne i32 %v40, 0
  br i1 %v41, label %if.then10, label %if.end11
if.end5:
  %v62 = load i32, i32* %t19
  %v63 = add i32 %v62, 1
  store i32 %v63, i32* %t19
  br label %while.cond1
land.rhs6:
  %v13 = load i32, i32* %t18
  %v14 = load i32, i32* %t19
  %v15 = add i32 %v13, %v14
  %t36 = getelementptr [50 x i32], [50 x i32]* @line1, i32 0, i32 %v15
  %v16 = load i32, i32* %t36
  %v17 = icmp eq i32 %v16, 0
  %v18 = zext i1 %v17 to i32
  %v19 = icmp ne i32 %v18, 0
  %v20 = zext i1 %v19 to i32
  store i32 %v20, i32* %v7
  br label %land.end7
land.end7:
  %v21 = load i32, i32* %v7
  %v22 = icmp ne i32 %v21, 0
  br i1 %v22, label %land.rhs8, label %land.end9
land.rhs8:
  %v23 = load i32, i32* @n
  %v24 = load i32, i32* %t18
  %v25 = add i32 %v23, %v24
  %v26 = load i32, i32* %t19
  %v27 = sub i32 %v25, %v26
  %t49 = getelementptr [100 x i32], [100 x i32]* @line2, i32 0, i32 %v27
  %v28 = load i32, i32* %t49
  %v29 = icmp eq i32 %v28, 0
  %v30 = zext i1 %v29 to i32
  %v31 = icmp ne i32 %v30, 0
  %v32 = zext i1 %v31 to i32
  store i32 %v32, i32* %v6
  br label %land.end9
land.end9:
  %v33 = load i32, i32* %v6
  %v34 = icmp ne i32 %v33, 0
  br i1 %v34, label %if.then4, label %if.end5
if.then10:
  call void @printans()
  br label %if.end11
if.end11:
  %v42 = load i32, i32* %t19
  %t66 = getelementptr [50 x i32], [50 x i32]* @row, i32 0, i32 %v42
  store i32 1, i32* %t66
  %v43 = load i32, i32* %t18
  %v44 = load i32, i32* %t19
  %v45 = add i32 %v43, %v44
  %t70 = getelementptr [50 x i32], [50 x i32]* @line1, i32 0, i32 %v45
  store i32 1, i32* %t70
  %v46 = load i32, i32* @n
  %v47 = load i32, i32* %t18
  %v48 = add i32 %v46, %v47
  %v49 = load i32, i32* %t19
  %v50 = sub i32 %v48, %v49
  %t76 = getelementptr [100 x i32], [100 x i32]* @line2, i32 0, i32 %v50
  store i32 1, i32* %t76
  %v51 = load i32, i32* %t18
  %v52 = add i32 %v51, 1
  call void @f(i32 %v52)
  %v53 = load i32, i32* %t19
  %t80 = getelementptr [50 x i32], [50 x i32]* @row, i32 0, i32 %v53
  store i32 0, i32* %t80
  %v54 = load i32, i32* %t18
  %v55 = load i32, i32* %t19
  %v56 = add i32 %v54, %v55
  %t84 = getelementptr [50 x i32], [50 x i32]* @line1, i32 0, i32 %v56
  store i32 0, i32* %t84
  %v57 = load i32, i32* @n
  %v58 = load i32, i32* %t18
  %v59 = add i32 %v57, %v58
  %v60 = load i32, i32* %t19
  %v61 = sub i32 %v59, %v60
  %t90 = getelementptr [100 x i32], [100 x i32]* @line2, i32 0, i32 %v61
  store i32 0, i32* %t90
  br label %if.end5
}

define i32 @main() {
entry:
  %t93 = alloca i32
  %v1 = call i32 @getint()
  store i32 %v1, i32* %t93
  br label %while.cond1
while.cond1:
  %v2 = load i32, i32* %t93
  %v3 = icmp sgt i32 %v2, 0
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = call i32 @getint()
  store i32 %v6, i32* @n
  call void @f(i32 1)
  %v7 = load i32, i32* %t93
  %v8 = sub i32 %v7, 1
  store i32 %v8, i32* %t93
  br label %while.cond1
while.end3:
  %v9 = load i32, i32* @sum
  ret i32 %v9
}

