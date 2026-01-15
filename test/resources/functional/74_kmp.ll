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

define void @get_next(i32* %str, i32* %next) {
entry:
  %.v10 = alloca i32
  %j = alloca i32
  %i = alloca i32
  %next.addr = alloca i32*
  %str.addr = alloca i32*
  store i32* %str, i32** %str.addr
  store i32* %next, i32** %next.addr
  %.v1 = sub i32 0, 1
  %.v2 = load i32*, i32** %next.addr
  %.v3 = getelementptr i32, i32* %.v2, i32 0
  store i32 %.v1, i32* %.v3
  store i32 0, i32* %i
  %.v4 = sub i32 0, 1
  store i32 %.v4, i32* %j
  br label %while.cond1
while.cond1:
  %.v5 = load i32, i32* %i
  %.v6 = load i32*, i32** %str.addr
  %.v7 = getelementptr i32, i32* %.v6, i32 %.v5
  %.v8 = load i32, i32* %.v7
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body2, label %while.end3
while.body2:
  store i32 1, i32* %.v10
  %.v11 = load i32, i32* %j
  %.v12 = sub i32 0, 1
  %.v13 = icmp eq i32 %.v11, %.v12
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %lor.end8, label %lor.rhs7
while.end3:
  ret void
if.then4:
  %.v30 = load i32, i32* %j
  %.v31 = add i32 %.v30, 1
  store i32 %.v31, i32* %j
  %.v32 = load i32, i32* %i
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %i
  %.v34 = load i32, i32* %j
  %.v35 = load i32, i32* %i
  %.v36 = load i32*, i32** %next.addr
  %.v37 = getelementptr i32, i32* %.v36, i32 %.v35
  store i32 %.v34, i32* %.v37
  br label %if.end6
if.else5:
  %.v38 = load i32, i32* %j
  %.v39 = load i32*, i32** %next.addr
  %.v40 = getelementptr i32, i32* %.v39, i32 %.v38
  %.v41 = load i32, i32* %.v40
  store i32 %.v41, i32* %j
  br label %if.end6
if.end6:
  br label %while.cond1
lor.rhs7:
  %.v16 = load i32, i32* %i
  %.v17 = load i32*, i32** %str.addr
  %.v18 = getelementptr i32, i32* %.v17, i32 %.v16
  %.v19 = load i32, i32* %.v18
  %.v20 = load i32, i32* %j
  %.v21 = load i32*, i32** %str.addr
  %.v22 = getelementptr i32, i32* %.v21, i32 %.v20
  %.v23 = load i32, i32* %.v22
  %.v24 = icmp eq i32 %.v19, %.v23
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  %.v27 = zext i1 %.v26 to i32
  store i32 %.v27, i32* %.v10
  br label %lor.end8
lor.end8:
  %.v28 = load i32, i32* %.v10
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then4, label %if.else5
}

define i32 @KMP(i32* %dst, i32* %src) {
entry:
  %j = alloca i32
  %i = alloca i32
  %next = alloca [4096 x i32]
  %src.addr = alloca i32*
  %dst.addr = alloca i32*
  store i32* %dst, i32** %dst.addr
  store i32* %src, i32** %src.addr
  %.v1 = load i32*, i32** %dst.addr
  %.v2 = getelementptr [4096 x i32], [4096 x i32]* %next, i64 0, i64 0
  call void @get_next(i32* %.v1, i32* %.v2)
  store i32 0, i32* %i
  store i32 0, i32* %j
  br label %while.cond1
while.cond1:
  %.v3 = load i32, i32* %j
  %.v4 = load i32*, i32** %src.addr
  %.v5 = getelementptr i32, i32* %.v4, i32 %.v3
  %.v6 = load i32, i32* %.v5
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  %.v8 = load i32, i32* %i
  %.v9 = load i32*, i32** %dst.addr
  %.v10 = getelementptr i32, i32* %.v9, i32 %.v8
  %.v11 = load i32, i32* %.v10
  %.v12 = load i32, i32* %j
  %.v13 = load i32*, i32** %src.addr
  %.v14 = getelementptr i32, i32* %.v13, i32 %.v12
  %.v15 = load i32, i32* %.v14
  %.v16 = icmp eq i32 %.v11, %.v15
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then4, label %if.else5
while.end3:
  %.v42 = sub i32 0, 1
  ret i32 %.v42
if.then4:
  %.v19 = load i32, i32* %i
  %.v20 = add i32 %.v19, 1
  store i32 %.v20, i32* %i
  %.v21 = load i32, i32* %j
  %.v22 = add i32 %.v21, 1
  store i32 %.v22, i32* %j
  %.v23 = load i32, i32* %i
  %.v24 = load i32*, i32** %dst.addr
  %.v25 = getelementptr i32, i32* %.v24, i32 %.v23
  %.v26 = load i32, i32* %.v25
  %.v27 = icmp eq i32 %.v26, 0
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then7, label %if.end8
if.else5:
  %.v31 = load i32, i32* %i
  %t71 = getelementptr [4096 x i32], [4096 x i32]* %next, i64 0, i32 %.v31
  %.v32 = load i32, i32* %t71
  store i32 %.v32, i32* %i
  %.v33 = load i32, i32* %i
  %.v34 = sub i32 0, 1
  %.v35 = icmp eq i32 %.v33, %.v34
  %.v36 = zext i1 %.v35 to i32
  %.v37 = icmp ne i32 %.v36, 0
  br i1 %.v37, label %if.then9, label %if.end10
if.end6:
  br label %while.cond1
if.then7:
  %.v30 = load i32, i32* %j
  ret i32 %.v30
if.end8:
  br label %if.end6
if.then9:
  %.v38 = load i32, i32* %i
  %.v39 = add i32 %.v38, 1
  store i32 %.v39, i32* %i
  %.v40 = load i32, i32* %j
  %.v41 = add i32 %.v40, 1
  store i32 %.v41, i32* %j
  br label %if.end10
if.end10:
  br label %if.end6
}

define i32 @read_str(i32* %buf) {
entry:
  %i = alloca i32
  %buf.addr = alloca i32*
  store i32* %buf, i32** %buf.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = icmp ne i32 1, 0
  br i1 %.v1, label %while.body2, label %while.end3
while.body2:
  %.v2 = call i32 @getch()
  %.v3 = load i32, i32* %i
  %.v4 = load i32*, i32** %buf.addr
  %.v5 = getelementptr i32, i32* %.v4, i32 %.v3
  store i32 %.v2, i32* %.v5
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %buf.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  %.v10 = icmp eq i32 %.v9, 10
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then4, label %if.end5
while.end3:
  %.v15 = load i32, i32* %i
  %.v16 = load i32*, i32** %buf.addr
  %.v17 = getelementptr i32, i32* %.v16, i32 %.v15
  store i32 0, i32* %.v17
  %.v18 = load i32, i32* %i
  ret i32 %.v18
if.then4:
  br label %while.end3
if.end5:
  %.v13 = load i32, i32* %i
  %.v14 = add i32 %.v13, 1
  store i32 %.v14, i32* %i
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

