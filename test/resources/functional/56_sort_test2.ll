@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @insertsort(i32* %a) {
entry:
  %t0 = alloca i32
  store i32 1, i32* %t0
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* @n
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %t6 = alloca i32
  %v6 = load i32, i32* %t0
  %t8 = getelementptr i32, i32* %a, i32 %v6
  %v7 = load i32, i32* %t8
  store i32 %v7, i32* %t6
  %t10 = alloca i32
  %v8 = load i32, i32* %t0
  %v9 = sub i32 %v8, 1
  store i32 %v9, i32* %t10
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %v10 = alloca i32
  store i32 0, i32* %v10
  %v11 = load i32, i32* %t10
  %v12 = sub i32 0, 1
  %v13 = icmp sgt i32 %v11, %v12
  %v14 = zext i1 %v13 to i32
  %v15 = icmp ne i32 %v14, 0
  br i1 %v15, label %land.rhs7, label %land.end8
while.body5:
  %v25 = load i32, i32* %t10
  %t30 = getelementptr i32, i32* %a, i32 %v25
  %v26 = load i32, i32* %t30
  %v27 = load i32, i32* %t10
  %v28 = add i32 %v27, 1
  %t34 = getelementptr i32, i32* %a, i32 %v28
  store i32 %v26, i32* %t34
  %v29 = load i32, i32* %t10
  %v30 = sub i32 %v29, 1
  store i32 %v30, i32* %t10
  br label %while.cond4
while.end6:
  %v31 = load i32, i32* %t6
  %v32 = load i32, i32* %t10
  %v33 = add i32 %v32, 1
  %t40 = getelementptr i32, i32* %a, i32 %v33
  store i32 %v31, i32* %t40
  %v34 = load i32, i32* %t0
  %v35 = add i32 %v34, 1
  store i32 %v35, i32* %t0
  br label %while.cond1
land.rhs7:
  %v16 = load i32, i32* %t6
  %v17 = load i32, i32* %t10
  %t21 = getelementptr i32, i32* %a, i32 %v17
  %v18 = load i32, i32* %t21
  %v19 = icmp slt i32 %v16, %v18
  %v20 = zext i1 %v19 to i32
  %v21 = icmp ne i32 %v20, 0
  %v22 = zext i1 %v21 to i32
  store i32 %v22, i32* %v10
  br label %land.end8
land.end8:
  %v23 = load i32, i32* %v10
  %v24 = icmp ne i32 %v23, 0
  br i1 %v24, label %while.body5, label %while.end6
}

define i32 @main() {
entry:
  store i32 10, i32* @n
  %t43 = alloca [10 x i32]
  %t44 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 0
  store i32 4, i32* %t44
  %t45 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 1
  store i32 3, i32* %t45
  %t46 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 2
  store i32 9, i32* %t46
  %t47 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 3
  store i32 2, i32* %t47
  %t48 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 4
  store i32 0, i32* %t48
  %t49 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 5
  store i32 1, i32* %t49
  %t50 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 6
  store i32 6, i32* %t50
  %t51 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 7
  store i32 5, i32* %t51
  %t52 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 8
  store i32 7, i32* %t52
  %t53 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 9
  store i32 8, i32* %t53
  %t54 = alloca i32
  %v1 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 0
  %v2 = call i32 @insertsort(i32* %v1)
  store i32 %v2, i32* %t54
  br label %while.cond1
while.cond1:
  %v3 = load i32, i32* %t54
  %v4 = load i32, i32* @n
  %v5 = icmp slt i32 %v3, %v4
  %v6 = zext i1 %v5 to i32
  %v7 = icmp ne i32 %v6, 0
  br i1 %v7, label %while.body2, label %while.end3
while.body2:
  %t62 = alloca i32
  %v8 = load i32, i32* %t54
  %t64 = getelementptr [10 x i32], [10 x i32]* %t43, i32 0, i32 %v8
  %v9 = load i32, i32* %t64
  store i32 %v9, i32* %t62
  %v10 = load i32, i32* %t62
  call void @putint(i32 %v10)
  store i32 10, i32* %t62
  %v11 = load i32, i32* %t62
  call void @putch(i32 %v11)
  %v12 = load i32, i32* %t54
  %v13 = add i32 %v12, 1
  store i32 %v13, i32* %t54
  br label %while.cond1
while.end3:
  ret i32 0
}

