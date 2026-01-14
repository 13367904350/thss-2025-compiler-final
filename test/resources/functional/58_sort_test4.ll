@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @select_sort(i32* %A, i32 %n) {
entry:
  %tmp = alloca i32
  %min = alloca i32
  %j = alloca i32
  %i = alloca i32
  %n.addr = alloca i32
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
  %t15 = sext i32 %.v15 to i64
  %t16 = getelementptr i32, i32* %A, i64 %t15
  %.v16 = load i32, i32* %t16
  %.v17 = load i32, i32* %j
  %t19 = sext i32 %.v17 to i64
  %t20 = getelementptr i32, i32* %A, i64 %t19
  %.v18 = load i32, i32* %t20
  %.v19 = icmp sgt i32 %.v16, %.v18
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %if.then7, label %if.end8
while.end6:
  %.v25 = load i32, i32* %min
  %.v26 = load i32, i32* %i
  %.v27 = icmp ne i32 %.v25, %.v26
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then9, label %if.end10
if.then7:
  %.v22 = load i32, i32* %j
  store i32 %.v22, i32* %min
  br label %if.end8
if.end8:
  %.v23 = load i32, i32* %j
  %.v24 = add i32 %.v23, 1
  store i32 %.v24, i32* %j
  br label %while.cond4
if.then9:
  %.v30 = load i32, i32* %min
  %t34 = sext i32 %.v30 to i64
  %t35 = getelementptr i32, i32* %A, i64 %t34
  %.v31 = load i32, i32* %t35
  store i32 %.v31, i32* %tmp
  %.v32 = load i32, i32* %i
  %t38 = sext i32 %.v32 to i64
  %t39 = getelementptr i32, i32* %A, i64 %t38
  %.v33 = load i32, i32* %t39
  %.v34 = load i32, i32* %min
  %t42 = sext i32 %.v34 to i64
  %t43 = getelementptr i32, i32* %A, i64 %t42
  store i32 %.v33, i32* %t43
  %.v35 = load i32, i32* %tmp
  %.v36 = load i32, i32* %i
  %t46 = sext i32 %.v36 to i64
  %t47 = getelementptr i32, i32* %A, i64 %t46
  store i32 %.v35, i32* %t47
  br label %if.end10
if.end10:
  %.v37 = load i32, i32* %i
  %.v38 = add i32 %.v37, 1
  store i32 %.v38, i32* %i
  br label %while.cond1
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t50 = sext i32 0 to i64
  %t51 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t50
  store i32 4, i32* %t51
  %t52 = sext i32 1 to i64
  %t53 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t52
  store i32 3, i32* %t53
  %t54 = sext i32 2 to i64
  %t55 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t54
  store i32 9, i32* %t55
  %t56 = sext i32 3 to i64
  %t57 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t56
  store i32 2, i32* %t57
  %t58 = sext i32 4 to i64
  %t59 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t58
  store i32 0, i32* %t59
  %t60 = sext i32 5 to i64
  %t61 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t60
  store i32 1, i32* %t61
  %t62 = sext i32 6 to i64
  %t63 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t62
  store i32 6, i32* %t63
  %t64 = sext i32 7 to i64
  %t65 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t64
  store i32 5, i32* %t65
  %t66 = sext i32 8 to i64
  %t67 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t66
  store i32 7, i32* %t67
  %t68 = sext i32 9 to i64
  %t69 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t68
  store i32 8, i32* %t69
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
  %t79 = sext i32 %.v9 to i64
  %t80 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t79
  %.v10 = load i32, i32* %t80
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

