declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @get_next(i32* %str, i32* %next) {
entry:
  %v1 = sub i32 0, 1
  %t1 = getelementptr i32, i32* %next, i32 0
  store i32 %v1, i32* %t1
  %t2 = alloca i32
  store i32 0, i32* %t2
  %t3 = alloca i32
  %v2 = sub i32 0, 1
  store i32 %v2, i32* %t3
  br label %while.cond1
while.cond1:
  %v3 = load i32, i32* %t2
  %t6 = getelementptr i32, i32* %str, i32 %v3
  %v4 = load i32, i32* %t6
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = alloca i32
  store i32 1, i32* %v6
  %v7 = load i32, i32* %t3
  %v8 = sub i32 0, 1
  %v9 = icmp eq i32 %v7, %v8
  %v10 = zext i1 %v9 to i32
  %v11 = icmp ne i32 %v10, 0
  br i1 %v11, label %lor.end8, label %lor.rhs7
while.end3:
  ret void
if.then4:
  %v22 = load i32, i32* %t3
  %v23 = add i32 %v22, 1
  store i32 %v23, i32* %t3
  %v24 = load i32, i32* %t2
  %v25 = add i32 %v24, 1
  store i32 %v25, i32* %t2
  %v26 = load i32, i32* %t3
  %v27 = load i32, i32* %t2
  %t33 = getelementptr i32, i32* %next, i32 %v27
  store i32 %v26, i32* %t33
  br label %if.end6
if.else5:
  %v28 = load i32, i32* %t3
  %t35 = getelementptr i32, i32* %next, i32 %v28
  %v29 = load i32, i32* %t35
  store i32 %v29, i32* %t3
  br label %if.end6
if.end6:
  br label %while.cond1
lor.rhs7:
  %v12 = load i32, i32* %t2
  %t16 = getelementptr i32, i32* %str, i32 %v12
  %v13 = load i32, i32* %t16
  %v14 = load i32, i32* %t3
  %t19 = getelementptr i32, i32* %str, i32 %v14
  %v15 = load i32, i32* %t19
  %v16 = icmp eq i32 %v13, %v15
  %v17 = zext i1 %v16 to i32
  %v18 = icmp ne i32 %v17, 0
  %v19 = zext i1 %v18 to i32
  store i32 %v19, i32* %v6
  br label %lor.end8
lor.end8:
  %v20 = load i32, i32* %v6
  %v21 = icmp ne i32 %v20, 0
  br i1 %v21, label %if.then4, label %if.else5
}

define i32 @KMP(i32* %dst, i32* %src) {
entry:
  %t37 = alloca [4096 x i32]
  %v1 = getelementptr [4096 x i32], [4096 x i32]* %t37, i32 0, i32 0
  call void @get_next(i32* %dst, i32* %v1)
  %t39 = alloca i32
  store i32 0, i32* %t39
  %t40 = alloca i32
  store i32 0, i32* %t40
  br label %while.cond1
while.cond1:
  %v2 = load i32, i32* %t40
  %t42 = getelementptr i32, i32* %src, i32 %v2
  %v3 = load i32, i32* %t42
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = load i32, i32* %t39
  %t46 = getelementptr i32, i32* %dst, i32 %v5
  %v6 = load i32, i32* %t46
  %v7 = load i32, i32* %t40
  %t49 = getelementptr i32, i32* %src, i32 %v7
  %v8 = load i32, i32* %t49
  %v9 = icmp eq i32 %v6, %v8
  %v10 = zext i1 %v9 to i32
  %v11 = icmp ne i32 %v10, 0
  br i1 %v11, label %if.then4, label %if.else5
while.end3:
  %v33 = sub i32 0, 1
  ret i32 %v33
if.then4:
  %v12 = load i32, i32* %t39
  %v13 = add i32 %v12, 1
  store i32 %v13, i32* %t39
  %v14 = load i32, i32* %t40
  %v15 = add i32 %v14, 1
  store i32 %v15, i32* %t40
  %v16 = load i32, i32* %t39
  %t59 = getelementptr i32, i32* %dst, i32 %v16
  %v17 = load i32, i32* %t59
  %v18 = icmp eq i32 %v17, 0
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %if.then7, label %if.end8
if.else5:
  %v22 = load i32, i32* %t39
  %t66 = getelementptr [4096 x i32], [4096 x i32]* %t37, i32 0, i32 %v22
  %v23 = load i32, i32* %t66
  store i32 %v23, i32* %t39
  %v24 = load i32, i32* %t39
  %v25 = sub i32 0, 1
  %v26 = icmp eq i32 %v24, %v25
  %v27 = zext i1 %v26 to i32
  %v28 = icmp ne i32 %v27, 0
  br i1 %v28, label %if.then9, label %if.end10
if.end6:
  br label %while.cond1
if.then7:
  %v21 = load i32, i32* %t40
  ret i32 %v21
if.end8:
  br label %if.end6
if.then9:
  %v29 = load i32, i32* %t39
  %v30 = add i32 %v29, 1
  store i32 %v30, i32* %t39
  %v31 = load i32, i32* %t40
  %v32 = add i32 %v31, 1
  store i32 %v32, i32* %t40
  br label %if.end10
if.end10:
  br label %if.end6
}

define i32 @read_str(i32* %buf) {
entry:
  %t78 = alloca i32
  store i32 0, i32* %t78
  br label %while.cond1
while.cond1:
  %v1 = icmp ne i32 1, 0
  br i1 %v1, label %while.body2, label %while.end3
while.body2:
  %v2 = call i32 @getch()
  %v3 = load i32, i32* %t78
  %t82 = getelementptr i32, i32* %buf, i32 %v3
  store i32 %v2, i32* %t82
  %v4 = load i32, i32* %t78
  %t84 = getelementptr i32, i32* %buf, i32 %v4
  %v5 = load i32, i32* %t84
  %v6 = icmp eq i32 %v5, 10
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %if.then4, label %if.end5
while.end3:
  %v11 = load i32, i32* %t78
  %t92 = getelementptr i32, i32* %buf, i32 %v11
  store i32 0, i32* %t92
  %v12 = load i32, i32* %t78
  ret i32 %v12
if.then4:
  br label %while.end3
if.end5:
  %v9 = load i32, i32* %t78
  %v10 = add i32 %v9, 1
  store i32 %v10, i32* %t78
  br label %while.cond1
}

define i32 @main() {
entry:
  %t94 = alloca [4096 x i32]
  %t95 = alloca [4096 x i32]
  %v1 = getelementptr [4096 x i32], [4096 x i32]* %t94, i32 0, i32 0
  %v2 = call i32 @read_str(i32* %v1)
  %v3 = getelementptr [4096 x i32], [4096 x i32]* %t95, i32 0, i32 0
  %v4 = call i32 @read_str(i32* %v3)
  %v5 = getelementptr [4096 x i32], [4096 x i32]* %t94, i32 0, i32 0
  %v6 = getelementptr [4096 x i32], [4096 x i32]* %t95, i32 0, i32 0
  %v7 = call i32 @KMP(i32* %v5, i32* %v6)
  call void @putint(i32 %v7)
  call void @putch(i32 10)
  ret i32 0
}

