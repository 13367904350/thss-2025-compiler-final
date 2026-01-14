@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @bubblesort(i32* %arr) {
entry:
  %tmp = alloca i32
  %j = alloca i32
  %i = alloca i32
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
  %t15 = sext i32 %.v15 to i64
  %t16 = getelementptr i32, i32* %arr, i64 %t15
  %.v16 = load i32, i32* %t16
  %.v17 = load i32, i32* %j
  %.v18 = add i32 %.v17, 1
  %t20 = sext i32 %.v18 to i64
  %t21 = getelementptr i32, i32* %arr, i64 %t20
  %.v19 = load i32, i32* %t21
  %.v20 = icmp sgt i32 %.v16, %.v19
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %if.then7, label %if.end8
while.end6:
  %.v34 = load i32, i32* %i
  %.v35 = add i32 %.v34, 1
  store i32 %.v35, i32* %i
  br label %while.cond1
if.then7:
  %.v23 = load i32, i32* %j
  %.v24 = add i32 %.v23, 1
  %t28 = sext i32 %.v24 to i64
  %t29 = getelementptr i32, i32* %arr, i64 %t28
  %.v25 = load i32, i32* %t29
  store i32 %.v25, i32* %tmp
  %.v26 = load i32, i32* %j
  %t32 = sext i32 %.v26 to i64
  %t33 = getelementptr i32, i32* %arr, i64 %t32
  %.v27 = load i32, i32* %t33
  %.v28 = load i32, i32* %j
  %.v29 = add i32 %.v28, 1
  %t37 = sext i32 %.v29 to i64
  %t38 = getelementptr i32, i32* %arr, i64 %t37
  store i32 %.v27, i32* %t38
  %.v30 = load i32, i32* %tmp
  %.v31 = load i32, i32* %j
  %t41 = sext i32 %.v31 to i64
  %t42 = getelementptr i32, i32* %arr, i64 %t41
  store i32 %.v30, i32* %t42
  br label %if.end8
if.end8:
  %.v32 = load i32, i32* %j
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %j
  br label %while.cond4
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t47 = sext i32 0 to i64
  %t48 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t47
  store i32 4, i32* %t48
  %t49 = sext i32 1 to i64
  %t50 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t49
  store i32 3, i32* %t50
  %t51 = sext i32 2 to i64
  %t52 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t51
  store i32 9, i32* %t52
  %t53 = sext i32 3 to i64
  %t54 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t53
  store i32 2, i32* %t54
  %t55 = sext i32 4 to i64
  %t56 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t55
  store i32 0, i32* %t56
  %t57 = sext i32 5 to i64
  %t58 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t57
  store i32 1, i32* %t58
  %t59 = sext i32 6 to i64
  %t60 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t59
  store i32 6, i32* %t60
  %t61 = sext i32 7 to i64
  %t62 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t61
  store i32 5, i32* %t62
  %t63 = sext i32 8 to i64
  %t64 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t63
  store i32 7, i32* %t64
  %t65 = sext i32 9 to i64
  %t66 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t65
  store i32 8, i32* %t66
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
  %t75 = sext i32 %.v8 to i64
  %t76 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t75
  %.v9 = load i32, i32* %t76
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

