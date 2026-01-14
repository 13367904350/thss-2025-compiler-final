declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @get_next(i32* %str, i32* %next) {
entry:
  %.v6 = alloca i32
  %j = alloca i32
  %i = alloca i32
  %.v1 = sub i32 0, 1
  %t1 = sext i32 0 to i64
  %t2 = getelementptr i32, i32* %next, i64 %t1
  store i32 %.v1, i32* %t2
  store i32 0, i32* %i
  %.v2 = sub i32 0, 1
  store i32 %.v2, i32* %j
  br label %while.cond1
while.cond1:
  %.v3 = load i32, i32* %i
  %t5 = sext i32 %.v3 to i64
  %t6 = getelementptr i32, i32* %str, i64 %t5
  %.v4 = load i32, i32* %t6
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  store i32 1, i32* %.v6
  %.v7 = load i32, i32* %j
  %.v8 = sub i32 0, 1
  %.v9 = icmp eq i32 %.v7, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %lor.end8, label %lor.rhs7
while.end3:
  ret void
if.then4:
  %.v22 = load i32, i32* %j
  %.v23 = add i32 %.v22, 1
  store i32 %.v23, i32* %j
  %.v24 = load i32, i32* %i
  %.v25 = add i32 %.v24, 1
  store i32 %.v25, i32* %i
  %.v26 = load i32, i32* %j
  %.v27 = load i32, i32* %i
  %t34 = sext i32 %.v27 to i64
  %t35 = getelementptr i32, i32* %next, i64 %t34
  store i32 %.v26, i32* %t35
  br label %if.end6
if.else5:
  %.v28 = load i32, i32* %j
  %t37 = sext i32 %.v28 to i64
  %t38 = getelementptr i32, i32* %next, i64 %t37
  %.v29 = load i32, i32* %t38
  store i32 %.v29, i32* %j
  br label %if.end6
if.end6:
  br label %while.cond1
lor.rhs7:
  %.v12 = load i32, i32* %i
  %t15 = sext i32 %.v12 to i64
  %t16 = getelementptr i32, i32* %str, i64 %t15
  %.v13 = load i32, i32* %t16
  %.v14 = load i32, i32* %j
  %t19 = sext i32 %.v14 to i64
  %t20 = getelementptr i32, i32* %str, i64 %t19
  %.v15 = load i32, i32* %t20
  %.v16 = icmp eq i32 %.v13, %.v15
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  %.v19 = zext i1 %.v18 to i32
  store i32 %.v19, i32* %.v6
  br label %lor.end8
lor.end8:
  %.v20 = load i32, i32* %.v6
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %if.then4, label %if.else5
}

define i32 @KMP(i32* %dst, i32* %src) {
entry:
  %j = alloca i32
  %i = alloca i32
  %next = alloca [4096 x i32]
  %.v1 = getelementptr [4096 x i32], [4096 x i32]* %next, i64 0, i64 0
  call void @get_next(i32* %dst, i32* %.v1)
  store i32 0, i32* %i
  store i32 0, i32* %j
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %j
  %t42 = sext i32 %.v2 to i64
  %t43 = getelementptr i32, i32* %src, i64 %t42
  %.v3 = load i32, i32* %t43
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %i
  %t47 = sext i32 %.v5 to i64
  %t48 = getelementptr i32, i32* %dst, i64 %t47
  %.v6 = load i32, i32* %t48
  %.v7 = load i32, i32* %j
  %t51 = sext i32 %.v7 to i64
  %t52 = getelementptr i32, i32* %src, i64 %t51
  %.v8 = load i32, i32* %t52
  %.v9 = icmp eq i32 %.v6, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then4, label %if.else5
while.end3:
  %.v33 = sub i32 0, 1
  ret i32 %.v33
if.then4:
  %.v12 = load i32, i32* %i
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %i
  %.v14 = load i32, i32* %j
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* %j
  %.v16 = load i32, i32* %i
  %t62 = sext i32 %.v16 to i64
  %t63 = getelementptr i32, i32* %dst, i64 %t62
  %.v17 = load i32, i32* %t63
  %.v18 = icmp eq i32 %.v17, 0
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then7, label %if.end8
if.else5:
  %.v22 = load i32, i32* %i
  %t70 = sext i32 %.v22 to i64
  %t71 = getelementptr [4096 x i32], [4096 x i32]* %next, i64 0, i64 %t70
  %.v23 = load i32, i32* %t71
  store i32 %.v23, i32* %i
  %.v24 = load i32, i32* %i
  %.v25 = sub i32 0, 1
  %.v26 = icmp eq i32 %.v24, %.v25
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %if.then9, label %if.end10
if.end6:
  br label %while.cond1
if.then7:
  %.v21 = load i32, i32* %j
  ret i32 %.v21
if.end8:
  br label %if.end6
if.then9:
  %.v29 = load i32, i32* %i
  %.v30 = add i32 %.v29, 1
  store i32 %.v30, i32* %i
  %.v31 = load i32, i32* %j
  %.v32 = add i32 %.v31, 1
  store i32 %.v32, i32* %j
  br label %if.end10
if.end10:
  br label %if.end6
}

define i32 @read_str(i32* %buf) {
entry:
  %i = alloca i32
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = icmp ne i32 1, 0
  br i1 %.v1, label %while.body2, label %while.end3
while.body2:
  %.v2 = call i32 @getch()
  %.v3 = load i32, i32* %i
  %t86 = sext i32 %.v3 to i64
  %t87 = getelementptr i32, i32* %buf, i64 %t86
  store i32 %.v2, i32* %t87
  %.v4 = load i32, i32* %i
  %t89 = sext i32 %.v4 to i64
  %t90 = getelementptr i32, i32* %buf, i64 %t89
  %.v5 = load i32, i32* %t90
  %.v6 = icmp eq i32 %.v5, 10
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then4, label %if.end5
while.end3:
  %.v11 = load i32, i32* %i
  %t98 = sext i32 %.v11 to i64
  %t99 = getelementptr i32, i32* %buf, i64 %t98
  store i32 0, i32* %t99
  %.v12 = load i32, i32* %i
  ret i32 %.v12
if.then4:
  br label %while.end3
if.end5:
  %.v9 = load i32, i32* %i
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %i
  br label %while.cond1
}

define i32 @main() {
entry:
  %src = alloca [4096 x i32]
  %dst = alloca [4096 x i32]
  %.v1 = getelementptr [4096 x i32], [4096 x i32]* %dst, i64 0, i64 0
  %.v2 = call i32 @read_str(i32* %.v1)
  %.v3 = getelementptr [4096 x i32], [4096 x i32]* %src, i64 0, i64 0
  %.v4 = call i32 @read_str(i32* %.v3)
  %.v5 = getelementptr [4096 x i32], [4096 x i32]* %dst, i64 0, i64 0
  %.v6 = getelementptr [4096 x i32], [4096 x i32]* %src, i64 0, i64 0
  %.v7 = call i32 @KMP(i32* %.v5, i32* %.v6)
  call void @putint(i32 %.v7)
  call void @putch(i32 10)
  ret i32 0
}

