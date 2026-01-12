@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @counting_sort(i32* %ini_arr, i32* %sorted_arr, i32 %n) {
entry:
  %t0 = alloca i32
  store i32 %n, i32* %t0
  %t1 = alloca [10 x i32]
  %t2 = alloca i32
  %t3 = alloca i32
  %t4 = alloca i32
  store i32 0, i32* %t4
  store i32 0, i32* %t2
  store i32 0, i32* %t3
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t4
  %v2 = icmp slt i32 %v1, 10
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = load i32, i32* %t4
  %t10 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v5
  store i32 0, i32* %t10
  %v6 = load i32, i32* %t4
  %v7 = add i32 %v6, 1
  store i32 %v7, i32* %t4
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %v8 = load i32, i32* %t2
  %v9 = load i32, i32* %t0
  %v10 = icmp slt i32 %v8, %v9
  %v11 = zext i1 %v10 to i32
  %v12 = icmp ne i32 %v11, 0
  br i1 %v12, label %while.body5, label %while.end6
while.body5:
  %v13 = load i32, i32* %t2
  %t19 = getelementptr i32, i32* %ini_arr, i32 %v13
  %v14 = load i32, i32* %t19
  %t21 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v14
  %v15 = load i32, i32* %t21
  %v16 = add i32 %v15, 1
  %v17 = load i32, i32* %t2
  %t25 = getelementptr i32, i32* %ini_arr, i32 %v17
  %v18 = load i32, i32* %t25
  %t27 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v18
  store i32 %v16, i32* %t27
  %v19 = load i32, i32* %t2
  %v20 = add i32 %v19, 1
  store i32 %v20, i32* %t2
  br label %while.cond4
while.end6:
  store i32 1, i32* %t4
  br label %while.cond7
while.cond7:
  %v21 = load i32, i32* %t4
  %v22 = icmp slt i32 %v21, 10
  %v23 = zext i1 %v22 to i32
  %v24 = icmp ne i32 %v23, 0
  br i1 %v24, label %while.body8, label %while.end9
while.body8:
  %v25 = load i32, i32* %t4
  %t35 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v25
  %v26 = load i32, i32* %t35
  %v27 = load i32, i32* %t4
  %v28 = sub i32 %v27, 1
  %t39 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v28
  %v29 = load i32, i32* %t39
  %v30 = add i32 %v26, %v29
  %v31 = load i32, i32* %t4
  %t43 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v31
  store i32 %v30, i32* %t43
  %v32 = load i32, i32* %t4
  %v33 = add i32 %v32, 1
  store i32 %v33, i32* %t4
  br label %while.cond7
while.end9:
  %v34 = load i32, i32* %t0
  store i32 %v34, i32* %t3
  br label %while.cond10
while.cond10:
  %v35 = load i32, i32* %t3
  %v36 = icmp sgt i32 %v35, 0
  %v37 = zext i1 %v36 to i32
  %v38 = icmp ne i32 %v37, 0
  br i1 %v38, label %while.body11, label %while.end12
while.body11:
  %v39 = load i32, i32* %t3
  %v40 = sub i32 %v39, 1
  %t53 = getelementptr i32, i32* %ini_arr, i32 %v40
  %v41 = load i32, i32* %t53
  %t55 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v41
  %v42 = load i32, i32* %t55
  %v43 = sub i32 %v42, 1
  %v44 = load i32, i32* %t3
  %v45 = sub i32 %v44, 1
  %t60 = getelementptr i32, i32* %ini_arr, i32 %v45
  %v46 = load i32, i32* %t60
  %t62 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v46
  store i32 %v43, i32* %t62
  %v47 = load i32, i32* %t3
  %v48 = sub i32 %v47, 1
  %t65 = getelementptr i32, i32* %ini_arr, i32 %v48
  %v49 = load i32, i32* %t65
  %v50 = load i32, i32* %t3
  %v51 = sub i32 %v50, 1
  %t69 = getelementptr i32, i32* %ini_arr, i32 %v51
  %v52 = load i32, i32* %t69
  %t71 = getelementptr [10 x i32], [10 x i32]* %t1, i32 0, i32 %v52
  %v53 = load i32, i32* %t71
  %t73 = getelementptr i32, i32* %sorted_arr, i32 %v53
  store i32 %v49, i32* %t73
  %v54 = load i32, i32* %t3
  %v55 = sub i32 %v54, 1
  store i32 %v55, i32* %t3
  br label %while.cond10
while.end12:
  ret i32 0
}

define i32 @main() {
entry:
  store i32 10, i32* @n
  %t76 = alloca [10 x i32]
  %t77 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 0
  store i32 4, i32* %t77
  %t78 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 1
  store i32 3, i32* %t78
  %t79 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 2
  store i32 9, i32* %t79
  %t80 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 3
  store i32 2, i32* %t80
  %t81 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 4
  store i32 0, i32* %t81
  %t82 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 5
  store i32 1, i32* %t82
  %t83 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 6
  store i32 6, i32* %t83
  %t84 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 7
  store i32 5, i32* %t84
  %t85 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 8
  store i32 7, i32* %t85
  %t86 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 9
  store i32 8, i32* %t86
  %t87 = alloca i32
  store i32 0, i32* %t87
  %t88 = alloca [10 x i32]
  %v1 = getelementptr [10 x i32], [10 x i32]* %t76, i32 0, i32 0
  %v2 = getelementptr [10 x i32], [10 x i32]* %t88, i32 0, i32 0
  %v3 = load i32, i32* @n
  %v4 = call i32 @counting_sort(i32* %v1, i32* %v2, i32 %v3)
  store i32 %v4, i32* %t87
  br label %while.cond1
while.cond1:
  %v5 = load i32, i32* %t87
  %v6 = load i32, i32* @n
  %v7 = icmp slt i32 %v5, %v6
  %v8 = zext i1 %v7 to i32
  %v9 = icmp ne i32 %v8, 0
  br i1 %v9, label %while.body2, label %while.end3
while.body2:
  %t98 = alloca i32
  %v10 = load i32, i32* %t87
  %t100 = getelementptr [10 x i32], [10 x i32]* %t88, i32 0, i32 %v10
  %v11 = load i32, i32* %t100
  store i32 %v11, i32* %t98
  %v12 = load i32, i32* %t98
  call void @putint(i32 %v12)
  store i32 10, i32* %t98
  %v13 = load i32, i32* %t98
  call void @putch(i32 %v13)
  %v14 = load i32, i32* %t87
  %v15 = add i32 %v14, 1
  store i32 %v15, i32* %t87
  br label %while.cond1
while.end3:
  ret i32 0
}

