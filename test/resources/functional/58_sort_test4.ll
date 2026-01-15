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

define i32 @select_sort(i32* %A, i32 %n) {
entry:
  %tmp = alloca i32
  %min = alloca i32
  %j = alloca i32
  %i = alloca i32
  %n.addr = alloca i32
  %A.addr = alloca i32*
  store i32* %A, i32** %A.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = sub i32 %.v2, 1
  %.v4 = icmp slt i32 %.v1, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  %.v7 = load i32, i32* %i
  store i32 %.v7, i32* %min
  %.v8 = load i32, i32* %i
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %.v10 = load i32, i32* %j
  %.v11 = load i32, i32* %n.addr
  %.v12 = icmp slt i32 %.v10, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body5, label %while.end6
while.body5:
  %.v15 = load i32, i32* %min
  %.v16 = load i32*, i32** %A.addr
  %.v17 = getelementptr i32, i32* %.v16, i32 %.v15
  %.v18 = load i32, i32* %.v17
  %.v19 = load i32, i32* %j
  %.v20 = load i32*, i32** %A.addr
  %.v21 = getelementptr i32, i32* %.v20, i32 %.v19
  %.v22 = load i32, i32* %.v21
  %.v23 = icmp sgt i32 %.v18, %.v22
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %if.then7, label %if.end8
while.end6:
  %.v29 = load i32, i32* %min
  %.v30 = load i32, i32* %i
  %.v31 = icmp ne i32 %.v29, %.v30
  %.v32 = zext i1 %.v31 to i32
  %.v33 = icmp ne i32 %.v32, 0
  br i1 %.v33, label %if.then9, label %if.end10
if.then7:
  %.v26 = load i32, i32* %j
  store i32 %.v26, i32* %min
  br label %if.end8
if.end8:
  %.v27 = load i32, i32* %j
  %.v28 = add i32 %.v27, 1
  store i32 %.v28, i32* %j
  br label %while.cond4
if.then9:
  %.v34 = load i32, i32* %min
  %.v35 = load i32*, i32** %A.addr
  %.v36 = getelementptr i32, i32* %.v35, i32 %.v34
  %.v37 = load i32, i32* %.v36
  store i32 %.v37, i32* %tmp
  %.v38 = load i32, i32* %i
  %.v39 = load i32*, i32** %A.addr
  %.v40 = getelementptr i32, i32* %.v39, i32 %.v38
  %.v41 = load i32, i32* %.v40
  %.v42 = load i32, i32* %min
  %.v43 = load i32*, i32** %A.addr
  %.v44 = getelementptr i32, i32* %.v43, i32 %.v42
  store i32 %.v41, i32* %.v44
  %.v45 = load i32, i32* %tmp
  %.v46 = load i32, i32* %i
  %.v47 = load i32*, i32** %A.addr
  %.v48 = getelementptr i32, i32* %.v47, i32 %.v46
  store i32 %.v45, i32* %.v48
  br label %if.end10
if.end10:
  %.v49 = load i32, i32* %i
  %.v50 = add i32 %.v49, 1
  store i32 %.v50, i32* %i
  br label %while.cond1
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t50 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 0
  store i32 4, i32* %t50
  %t51 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 1
  store i32 3, i32* %t51
  %t52 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 2
  store i32 9, i32* %t52
  %t53 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 3
  store i32 2, i32* %t53
  %t54 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 4
  store i32 0, i32* %t54
  %t55 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 5
  store i32 1, i32* %t55
  %t56 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 6
  store i32 6, i32* %t56
  %t57 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 7
  store i32 5, i32* %t57
  %t58 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 8
  store i32 7, i32* %t58
  %t59 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 9
  store i32 8, i32* %t59
  store i32 0, i32* %i
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = load i32, i32* @n
  %.v3 = call i32 @select_sort(i32* %.v1, i32 %.v2)
  store i32 %.v3, i32* %i
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %i
  %.v5 = load i32, i32* @n
  %.v6 = icmp slt i32 %.v4, %.v5
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body2, label %while.end3
while.body2:
  %.v9 = load i32, i32* %i
  %t69 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 %.v9
  %.v10 = load i32, i32* %t69
  store i32 %.v10, i32* %tmp
  %.v11 = load i32, i32* %tmp
  call void @putint(i32 %.v11)
  store i32 10, i32* %tmp
  %.v12 = load i32, i32* %tmp
  call void @putch(i32 %.v12)
  %.v13 = load i32, i32* %i
  %.v14 = add i32 %.v13, 1
  store i32 %.v14, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

