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

define i32 @bubblesort(i32* %arr) {
entry:
  %tmp = alloca i32
  %j = alloca i32
  %i = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = sub i32 %.v2, 1
  %.v4 = icmp slt i32 %.v1, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %.v7 = load i32, i32* %j
  %.v8 = load i32, i32* @n
  %.v9 = load i32, i32* %i
  %.v10 = sub i32 %.v8, %.v9
  %.v11 = sub i32 %.v10, 1
  %.v12 = icmp slt i32 %.v7, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body5, label %while.end6
while.body5:
  %.v15 = load i32, i32* %j
  %.v16 = load i32*, i32** %arr.addr
  %.v17 = getelementptr i32, i32* %.v16, i32 %.v15
  %.v18 = load i32, i32* %.v17
  %.v19 = load i32, i32* %j
  %.v20 = add i32 %.v19, 1
  %.v21 = load i32*, i32** %arr.addr
  %.v22 = getelementptr i32, i32* %.v21, i32 %.v20
  %.v23 = load i32, i32* %.v22
  %.v24 = icmp sgt i32 %.v18, %.v23
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %if.then7, label %if.end8
while.end6:
  %.v46 = load i32, i32* %i
  %.v47 = add i32 %.v46, 1
  store i32 %.v47, i32* %i
  br label %while.cond1
if.then7:
  %.v27 = load i32, i32* %j
  %.v28 = add i32 %.v27, 1
  %.v29 = load i32*, i32** %arr.addr
  %.v30 = getelementptr i32, i32* %.v29, i32 %.v28
  %.v31 = load i32, i32* %.v30
  store i32 %.v31, i32* %tmp
  %.v32 = load i32, i32* %j
  %.v33 = load i32*, i32** %arr.addr
  %.v34 = getelementptr i32, i32* %.v33, i32 %.v32
  %.v35 = load i32, i32* %.v34
  %.v36 = load i32, i32* %j
  %.v37 = add i32 %.v36, 1
  %.v38 = load i32*, i32** %arr.addr
  %.v39 = getelementptr i32, i32* %.v38, i32 %.v37
  store i32 %.v35, i32* %.v39
  %.v40 = load i32, i32* %tmp
  %.v41 = load i32, i32* %j
  %.v42 = load i32*, i32** %arr.addr
  %.v43 = getelementptr i32, i32* %.v42, i32 %.v41
  store i32 %.v40, i32* %.v43
  br label %if.end8
if.end8:
  %.v44 = load i32, i32* %j
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %j
  br label %while.cond4
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t47 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 0
  store i32 4, i32* %t47
  %t48 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 1
  store i32 3, i32* %t48
  %t49 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 2
  store i32 9, i32* %t49
  %t50 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 3
  store i32 2, i32* %t50
  %t51 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 4
  store i32 0, i32* %t51
  %t52 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 5
  store i32 1, i32* %t52
  %t53 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 6
  store i32 6, i32* %t53
  %t54 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 7
  store i32 5, i32* %t54
  %t55 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 8
  store i32 7, i32* %t55
  %t56 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 9
  store i32 8, i32* %t56
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = call i32 @bubblesort(i32* %.v1)
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
  %t65 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 %.v8
  %.v9 = load i32, i32* %t65
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

