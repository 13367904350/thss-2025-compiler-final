@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @select_sort(i32* %A, i32 %n) {
entry:
  %t0 = alloca i32
  store i32 %n, i32* %t0
  %t1 = alloca i32
  %t2 = alloca i32
  %t3 = alloca i32
  store i32 0, i32* %t1
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t1
  %v2 = load i32, i32* %t0
  %v3 = sub i32 %v2, 1
  %v4 = icmp slt i32 %v1, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %while.body2, label %while.end3
while.body2:
  %v7 = load i32, i32* %t1
  store i32 %v7, i32* %t3
  %v8 = load i32, i32* %t1
  %v9 = add i32 %v8, 1
  store i32 %v9, i32* %t2
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %v10 = load i32, i32* %t2
  %v11 = load i32, i32* %t0
  %v12 = icmp slt i32 %v10, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %while.body5, label %while.end6
while.body5:
  %v15 = load i32, i32* %t3
  %t19 = getelementptr i32, i32* %A, i32 %v15
  %v16 = load i32, i32* %t19
  %v17 = load i32, i32* %t2
  %t22 = getelementptr i32, i32* %A, i32 %v17
  %v18 = load i32, i32* %t22
  %v19 = icmp sgt i32 %v16, %v18
  %v20 = zext i1 %v19 to i32
  %v21 = icmp ne i32 %v20, 0
  br i1 %v21, label %if.then7, label %if.end8
while.end6:
  %v25 = load i32, i32* %t3
  %v26 = load i32, i32* %t1
  %v27 = icmp ne i32 %v25, %v26
  %v28 = zext i1 %v27 to i32
  %v29 = icmp ne i32 %v28, 0
  br i1 %v29, label %if.then9, label %if.end10
if.then7:
  %v22 = load i32, i32* %t2
  store i32 %v22, i32* %t3
  br label %if.end8
if.end8:
  %v23 = load i32, i32* %t2
  %v24 = add i32 %v23, 1
  store i32 %v24, i32* %t2
  br label %while.cond4
if.then9:
  %t35 = alloca i32
  %v30 = load i32, i32* %t3
  %t37 = getelementptr i32, i32* %A, i32 %v30
  %v31 = load i32, i32* %t37
  store i32 %v31, i32* %t35
  %v32 = load i32, i32* %t1
  %t40 = getelementptr i32, i32* %A, i32 %v32
  %v33 = load i32, i32* %t40
  %v34 = load i32, i32* %t3
  %t43 = getelementptr i32, i32* %A, i32 %v34
  store i32 %v33, i32* %t43
  %v35 = load i32, i32* %t35
  %v36 = load i32, i32* %t1
  %t46 = getelementptr i32, i32* %A, i32 %v36
  store i32 %v35, i32* %t46
  br label %if.end10
if.end10:
  %v37 = load i32, i32* %t1
  %v38 = add i32 %v37, 1
  store i32 %v38, i32* %t1
  br label %while.cond1
}

define i32 @main() {
entry:
  store i32 10, i32* @n
  %t49 = alloca [10 x i32]
  %t50 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 0
  store i32 4, i32* %t50
  %t51 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 1
  store i32 3, i32* %t51
  %t52 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 2
  store i32 9, i32* %t52
  %t53 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 3
  store i32 2, i32* %t53
  %t54 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 4
  store i32 0, i32* %t54
  %t55 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 5
  store i32 1, i32* %t55
  %t56 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 6
  store i32 6, i32* %t56
  %t57 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 7
  store i32 5, i32* %t57
  %t58 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 8
  store i32 7, i32* %t58
  %t59 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 9
  store i32 8, i32* %t59
  %t60 = alloca i32
  store i32 0, i32* %t60
  %v1 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 0
  %v2 = load i32, i32* @n
  %v3 = call i32 @select_sort(i32* %v1, i32 %v2)
  store i32 %v3, i32* %t60
  br label %while.cond1
while.cond1:
  %v4 = load i32, i32* %t60
  %v5 = load i32, i32* @n
  %v6 = icmp slt i32 %v4, %v5
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %while.body2, label %while.end3
while.body2:
  %t69 = alloca i32
  %v9 = load i32, i32* %t60
  %t71 = getelementptr [10 x i32], [10 x i32]* %t49, i32 0, i32 %v9
  %v10 = load i32, i32* %t71
  store i32 %v10, i32* %t69
  %v11 = load i32, i32* %t69
  call void @putint(i32 %v11)
  store i32 10, i32* %t69
  %v12 = load i32, i32* %t69
  call void @putch(i32 %v12)
  %v13 = load i32, i32* %t60
  %v14 = add i32 %v13, 1
  store i32 %v14, i32* %t60
  br label %while.cond1
while.end3:
  ret i32 0
}

