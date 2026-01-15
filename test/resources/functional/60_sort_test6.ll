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

define i32 @counting_sort(i32* %ini_arr, i32* %sorted_arr, i32 %n) {
entry:
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %count_arr = alloca [10 x i32]
  %n.addr = alloca i32
  %sorted_arr.addr = alloca i32*
  %ini_arr.addr = alloca i32*
  store i32* %ini_arr, i32** %ini_arr.addr
  store i32* %sorted_arr, i32** %sorted_arr.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %k
  store i32 0, i32* %i
  store i32 0, i32* %j
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %k
  %.v2 = icmp slt i32 %.v1, 10
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %k
  %t5 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v5
  store i32 0, i32* %t5
  %.v6 = load i32, i32* %k
  %.v7 = add i32 %.v6, 1
  store i32 %.v7, i32* %k
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %.v8 = load i32, i32* %i
  %.v9 = load i32, i32* %n.addr
  %.v10 = icmp slt i32 %.v8, %.v9
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body5, label %while.end6
while.body5:
  %.v13 = load i32, i32* %i
  %.v14 = load i32*, i32** %ini_arr.addr
  %.v15 = getelementptr i32, i32* %.v14, i32 %.v13
  %.v16 = load i32, i32* %.v15
  %t17 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v16
  %.v17 = load i32, i32* %t17
  %.v18 = add i32 %.v17, 1
  %.v19 = load i32, i32* %i
  %.v20 = load i32*, i32** %ini_arr.addr
  %.v21 = getelementptr i32, i32* %.v20, i32 %.v19
  %.v22 = load i32, i32* %.v21
  %t24 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v22
  store i32 %.v18, i32* %t24
  %.v23 = load i32, i32* %i
  %.v24 = add i32 %.v23, 1
  store i32 %.v24, i32* %i
  br label %while.cond4
while.end6:
  store i32 1, i32* %k
  br label %while.cond7
while.cond7:
  %.v25 = load i32, i32* %k
  %.v26 = icmp slt i32 %.v25, 10
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %while.body8, label %while.end9
while.body8:
  %.v29 = load i32, i32* %k
  %t32 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v29
  %.v30 = load i32, i32* %t32
  %.v31 = load i32, i32* %k
  %.v32 = sub i32 %.v31, 1
  %t36 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v32
  %.v33 = load i32, i32* %t36
  %.v34 = add i32 %.v30, %.v33
  %.v35 = load i32, i32* %k
  %t40 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v35
  store i32 %.v34, i32* %t40
  %.v36 = load i32, i32* %k
  %.v37 = add i32 %.v36, 1
  store i32 %.v37, i32* %k
  br label %while.cond7
while.end9:
  %.v38 = load i32, i32* %n.addr
  store i32 %.v38, i32* %j
  br label %while.cond10
while.cond10:
  %.v39 = load i32, i32* %j
  %.v40 = icmp sgt i32 %.v39, 0
  %.v41 = zext i1 %.v40 to i32
  %.v42 = icmp ne i32 %.v41, 0
  br i1 %.v42, label %while.body11, label %while.end12
while.body11:
  %.v43 = load i32, i32* %j
  %.v44 = sub i32 %.v43, 1
  %.v45 = load i32*, i32** %ini_arr.addr
  %.v46 = getelementptr i32, i32* %.v45, i32 %.v44
  %.v47 = load i32, i32* %.v46
  %t53 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v47
  %.v48 = load i32, i32* %t53
  %.v49 = sub i32 %.v48, 1
  %.v50 = load i32, i32* %j
  %.v51 = sub i32 %.v50, 1
  %.v52 = load i32*, i32** %ini_arr.addr
  %.v53 = getelementptr i32, i32* %.v52, i32 %.v51
  %.v54 = load i32, i32* %.v53
  %t61 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v54
  store i32 %.v49, i32* %t61
  %.v55 = load i32, i32* %j
  %.v56 = sub i32 %.v55, 1
  %.v57 = load i32*, i32** %ini_arr.addr
  %.v58 = getelementptr i32, i32* %.v57, i32 %.v56
  %.v59 = load i32, i32* %.v58
  %.v60 = load i32, i32* %j
  %.v61 = sub i32 %.v60, 1
  %.v62 = load i32*, i32** %ini_arr.addr
  %.v63 = getelementptr i32, i32* %.v62, i32 %.v61
  %.v64 = load i32, i32* %.v63
  %t72 = getelementptr [10 x i32], [10 x i32]* %count_arr, i64 0, i32 %.v64
  %.v65 = load i32, i32* %t72
  %.v66 = load i32*, i32** %sorted_arr.addr
  %.v67 = getelementptr i32, i32* %.v66, i32 %.v65
  store i32 %.v59, i32* %.v67
  %.v68 = load i32, i32* %j
  %.v69 = sub i32 %.v68, 1
  store i32 %.v69, i32* %j
  br label %while.cond10
while.end12:
  ret i32 0
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %b = alloca [10 x i32]
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t78 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 0
  store i32 4, i32* %t78
  %t79 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 1
  store i32 3, i32* %t79
  %t80 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 2
  store i32 9, i32* %t80
  %t81 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 3
  store i32 2, i32* %t81
  %t82 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 4
  store i32 0, i32* %t82
  %t83 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 5
  store i32 1, i32* %t83
  %t84 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 6
  store i32 6, i32* %t84
  %t85 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 7
  store i32 5, i32* %t85
  %t86 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 8
  store i32 7, i32* %t86
  %t87 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 9
  store i32 8, i32* %t87
  store i32 0, i32* %i
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = getelementptr [10 x i32], [10 x i32]* %b, i64 0, i64 0
  %.v3 = load i32, i32* @n
  %.v4 = call i32 @counting_sort(i32* %.v1, i32* %.v2, i32 %.v3)
  store i32 %.v4, i32* %i
  br label %while.cond1
while.cond1:
  %.v5 = load i32, i32* %i
  %.v6 = load i32, i32* @n
  %.v7 = icmp slt i32 %.v5, %.v6
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body2, label %while.end3
while.body2:
  %.v10 = load i32, i32* %i
  %t98 = getelementptr [10 x i32], [10 x i32]* %b, i64 0, i32 %.v10
  %.v11 = load i32, i32* %t98
  store i32 %.v11, i32* %tmp
  %.v12 = load i32, i32* %tmp
  call void @putint(i32 %.v12)
  store i32 10, i32* %tmp
  %.v13 = load i32, i32* %tmp
  call void @putch(i32 %.v13)
  %.v14 = load i32, i32* %i
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

