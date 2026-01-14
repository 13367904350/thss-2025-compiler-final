@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @insertsort(i32* %a) {
entry:
  %.v10 = alloca i32
  %j = alloca i32
  %temp = alloca i32
  %i = alloca i32
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
  %t6 = sext i32 %.v6 to i64
  %t7 = getelementptr i32, i32* %a, i64 %t6
  %.v7 = load i32, i32* %t7
  store i32 %.v7, i32* %temp
  %.v8 = load i32, i32* %i
  %.v9 = sub i32 %.v8, 1
  store i32 %.v9, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  store i32 0, i32* %.v10
  %.v11 = load i32, i32* %j
  %.v12 = sub i32 0, 1
  %.v13 = icmp sgt i32 %.v11, %.v12
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %land.rhs7, label %land.end8
while.body5:
  %.v25 = load i32, i32* %j
  %t28 = sext i32 %.v25 to i64
  %t29 = getelementptr i32, i32* %a, i64 %t28
  %.v26 = load i32, i32* %t29
  %.v27 = load i32, i32* %j
  %.v28 = add i32 %.v27, 1
  %t33 = sext i32 %.v28 to i64
  %t34 = getelementptr i32, i32* %a, i64 %t33
  store i32 %.v26, i32* %t34
  %.v29 = load i32, i32* %j
  %.v30 = sub i32 %.v29, 1
  store i32 %.v30, i32* %j
  br label %while.cond4
while.end6:
  %.v31 = load i32, i32* %temp
  %.v32 = load i32, i32* %j
  %.v33 = add i32 %.v32, 1
  %t40 = sext i32 %.v33 to i64
  %t41 = getelementptr i32, i32* %a, i64 %t40
  store i32 %.v31, i32* %t41
  %.v34 = load i32, i32* %i
  %.v35 = add i32 %.v34, 1
  store i32 %.v35, i32* %i
  br label %while.cond1
land.rhs7:
  %.v16 = load i32, i32* %temp
  %.v17 = load i32, i32* %j
  %t18 = sext i32 %.v17 to i64
  %t19 = getelementptr i32, i32* %a, i64 %t18
  %.v18 = load i32, i32* %t19
  %.v19 = icmp slt i32 %.v16, %.v18
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  %.v22 = zext i1 %.v21 to i32
  store i32 %.v22, i32* %.v10
  br label %land.end8
land.end8:
  %.v23 = load i32, i32* %.v10
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %while.body5, label %while.end6
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t44 = sext i32 0 to i64
  %t45 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t44
  store i32 4, i32* %t45
  %t46 = sext i32 1 to i64
  %t47 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t46
  store i32 3, i32* %t47
  %t48 = sext i32 2 to i64
  %t49 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t48
  store i32 9, i32* %t49
  %t50 = sext i32 3 to i64
  %t51 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t50
  store i32 2, i32* %t51
  %t52 = sext i32 4 to i64
  %t53 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t52
  store i32 0, i32* %t53
  %t54 = sext i32 5 to i64
  %t55 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t54
  store i32 1, i32* %t55
  %t56 = sext i32 6 to i64
  %t57 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t56
  store i32 6, i32* %t57
  %t58 = sext i32 7 to i64
  %t59 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t58
  store i32 5, i32* %t59
  %t60 = sext i32 8 to i64
  %t61 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t60
  store i32 7, i32* %t61
  %t62 = sext i32 9 to i64
  %t63 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t62
  store i32 8, i32* %t63
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
  %t72 = sext i32 %.v8 to i64
  %t73 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t72
  %.v9 = load i32, i32* %t73
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

