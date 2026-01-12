@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @bubblesort(i32* %arr) {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  store i32 0, i32* %t0
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* @n
  %v3 = sub i32 %v2, 1
  %v4 = icmp slt i32 %v1, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %t1
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %v7 = load i32, i32* %t1
  %v8 = load i32, i32* @n
  %v9 = load i32, i32* %t0
  %v10 = sub i32 %v8, %v9
  %v11 = sub i32 %v10, 1
  %v12 = icmp slt i32 %v7, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %while.body5, label %while.end6
while.body5:
  %v15 = load i32, i32* %t1
  %t17 = getelementptr i32, i32* %arr, i32 %v15
  %v16 = load i32, i32* %t17
  %v17 = load i32, i32* %t1
  %v18 = add i32 %v17, 1
  %t21 = getelementptr i32, i32* %arr, i32 %v18
  %v19 = load i32, i32* %t21
  %v20 = icmp sgt i32 %v16, %v19
  %v21 = zext i1 %v20 to i32
  %v22 = icmp ne i32 %v21, 0
  br i1 %v22, label %if.then7, label %if.end8
while.end6:
  %v34 = load i32, i32* %t0
  %v35 = add i32 %v34, 1
  store i32 %v35, i32* %t0
  br label %while.cond1
if.then7:
  %t26 = alloca i32
  %v23 = load i32, i32* %t1
  %v24 = add i32 %v23, 1
  %t29 = getelementptr i32, i32* %arr, i32 %v24
  %v25 = load i32, i32* %t29
  store i32 %v25, i32* %t26
  %v26 = load i32, i32* %t1
  %t32 = getelementptr i32, i32* %arr, i32 %v26
  %v27 = load i32, i32* %t32
  %v28 = load i32, i32* %t1
  %v29 = add i32 %v28, 1
  %t36 = getelementptr i32, i32* %arr, i32 %v29
  store i32 %v27, i32* %t36
  %v30 = load i32, i32* %t26
  %v31 = load i32, i32* %t1
  %t39 = getelementptr i32, i32* %arr, i32 %v31
  store i32 %v30, i32* %t39
  br label %if.end8
if.end8:
  %v32 = load i32, i32* %t1
  %v33 = add i32 %v32, 1
  store i32 %v33, i32* %t1
  br label %while.cond4
}

define i32 @main() {
entry:
  store i32 10, i32* @n
  %t44 = alloca [10 x i32]
  %t45 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 0
  store i32 4, i32* %t45
  %t46 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 1
  store i32 3, i32* %t46
  %t47 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 2
  store i32 9, i32* %t47
  %t48 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 3
  store i32 2, i32* %t48
  %t49 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 4
  store i32 0, i32* %t49
  %t50 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 5
  store i32 1, i32* %t50
  %t51 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 6
  store i32 6, i32* %t51
  %t52 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 7
  store i32 5, i32* %t52
  %t53 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 8
  store i32 7, i32* %t53
  %t54 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 9
  store i32 8, i32* %t54
  %t55 = alloca i32
  %v1 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 0
  %v2 = call i32 @bubblesort(i32* %v1)
  store i32 %v2, i32* %t55
  br label %while.cond1
while.cond1:
  %v3 = load i32, i32* %t55
  %v4 = load i32, i32* @n
  %v5 = icmp slt i32 %v3, %v4
  %v6 = zext i1 %v5 to i32
  %v7 = icmp ne i32 %v6, 0
  br i1 %v7, label %while.body2, label %while.end3
while.body2:
  %t63 = alloca i32
  %v8 = load i32, i32* %t55
  %t65 = getelementptr [10 x i32], [10 x i32]* %t44, i32 0, i32 %v8
  %v9 = load i32, i32* %t65
  store i32 %v9, i32* %t63
  %v10 = load i32, i32* %t63
  call void @putint(i32 %v10)
  store i32 10, i32* %t63
  %v11 = load i32, i32* %t63
  call void @putch(i32 %v11)
  %v12 = load i32, i32* %t55
  %v13 = add i32 %v12, 1
  store i32 %v13, i32* %t55
  br label %while.cond1
while.end3:
  ret i32 0
}

