@n = global i32 zeroinitializer
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

define i32 @insertsort(i32* %a) {
entry:
  %.v12 = alloca i32
  %j = alloca i32
  %temp = alloca i32
  %i = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %a.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  store i32 %.v9, i32* %temp
  %.v10 = load i32, i32* %i
  %.v11 = sub i32 %.v10, 1
  store i32 %.v11, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  store i32 0, i32* %.v12
  %.v13 = load i32, i32* %j
  %.v14 = sub i32 0, 1
  %.v15 = icmp sgt i32 %.v13, %.v14
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %land.rhs7, label %land.end8
while.body5:
  %.v29 = load i32, i32* %j
  %.v30 = load i32*, i32** %a.addr
  %.v31 = getelementptr i32, i32* %.v30, i32 %.v29
  %.v32 = load i32, i32* %.v31
  %.v33 = load i32, i32* %j
  %.v34 = add i32 %.v33, 1
  %.v35 = load i32*, i32** %a.addr
  %.v36 = getelementptr i32, i32* %.v35, i32 %.v34
  store i32 %.v32, i32* %.v36
  %.v37 = load i32, i32* %j
  %.v38 = sub i32 %.v37, 1
  store i32 %.v38, i32* %j
  br label %while.cond4
while.end6:
  %.v39 = load i32, i32* %temp
  %.v40 = load i32, i32* %j
  %.v41 = add i32 %.v40, 1
  %.v42 = load i32*, i32** %a.addr
  %.v43 = getelementptr i32, i32* %.v42, i32 %.v41
  store i32 %.v39, i32* %.v43
  %.v44 = load i32, i32* %i
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %i
  br label %while.cond1
land.rhs7:
  %.v18 = load i32, i32* %temp
  %.v19 = load i32, i32* %j
  %.v20 = load i32*, i32** %a.addr
  %.v21 = getelementptr i32, i32* %.v20, i32 %.v19
  %.v22 = load i32, i32* %.v21
  %.v23 = icmp slt i32 %.v18, %.v22
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  %.v26 = zext i1 %.v25 to i32
  store i32 %.v26, i32* %.v12
  br label %land.end8
land.end8:
  %.v27 = load i32, i32* %.v12
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %while.body5, label %while.end6
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t44 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 0
  store i32 4, i32* %t44
  %t45 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 1
  store i32 3, i32* %t45
  %t46 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 2
  store i32 9, i32* %t46
  %t47 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 3
  store i32 2, i32* %t47
  %t48 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 4
  store i32 0, i32* %t48
  %t49 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 5
  store i32 1, i32* %t49
  %t50 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 6
  store i32 6, i32* %t50
  %t51 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 7
  store i32 5, i32* %t51
  %t52 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 8
  store i32 7, i32* %t52
  %t53 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 9
  store i32 8, i32* %t53
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @insertsort(i32* %.v1)
  store i32 %.v2, i32* %i
  br label %while.cond1
while.cond1:
  %.v3 = load i32, i32* %i
  %.v4 = load i32, i32* @n
  %.v5 = icmp slt i32 %.v3, %.v4
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  %.v8 = load i32, i32* %i
  %t62 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 %.v8
  %.v9 = load i32, i32* %t62
  store i32 %.v9, i32* %tmp
  %.v10 = load i32, i32* %tmp
  call void @putint(i32 %.v10)
  store i32 10, i32* %tmp
  %.v11 = load i32, i32* %tmp
  call void @putch(i32 %.v11)
  %.v12 = load i32, i32* %i
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

