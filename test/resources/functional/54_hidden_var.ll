@b = global i32 5
@c = global [4 x i32] [i32 6, i32 7, i32 8, i32 9]
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %c.1 = alloca [7 x [1 x [5 x i32]]]
  %b = alloca i32
  %c = alloca [2 x [8 x i32]]
  %a.2 = alloca i32
  %a.1 = alloca i32
  %a = alloca i32
  store i32 1, i32* %a
  store i32 2, i32* %a.1
  store i32 3, i32* %a.1
  %.v1 = load i32, i32* %a.1
  call void @putint(i32 %.v1)
  %.v2 = load i32, i32* %a.1
  call void @putint(i32 %.v2)
  %.v3 = load i32, i32* %a
  call void @putint(i32 %.v3)
  call void @putch(i32 10)
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %a
  %.v5 = icmp slt i32 %.v4, 5
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %a.2
  %.v8 = load i32, i32* %a.2
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %a.2
  %.v10 = load i32, i32* %a.2
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then4, label %if.end5
while.end3:
  %.v12 = load i32, i32* %a
  call void @putint(i32 %.v12)
  call void @putch(i32 10)
  %t12 = sext i32 2 to i64
  %t13 = getelementptr [4 x i32], [4 x i32]* @c, i64 0, i64 %t12
  store i32 1, i32* %t13
  %t14 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 0
  store i32 0, i32* %t14
  %t15 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 1
  store i32 9, i32* %t15
  %t16 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 2
  store i32 0, i32* %t16
  %t17 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 3
  store i32 0, i32* %t17
  %t18 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 4
  store i32 0, i32* %t18
  %t19 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 5
  store i32 0, i32* %t19
  %t20 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 6
  store i32 0, i32* %t20
  %t21 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 0, i64 7
  store i32 0, i32* %t21
  %t22 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 0
  store i32 8, i32* %t22
  %t23 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 1
  store i32 3, i32* %t23
  %t24 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 2
  store i32 0, i32* %t24
  %t25 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 3
  store i32 0, i32* %t25
  %t26 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 4
  store i32 0, i32* %t26
  %t27 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 5
  store i32 0, i32* %t27
  %t28 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 6
  store i32 0, i32* %t28
  %t29 = getelementptr [2 x [8 x i32]], [2 x [8 x i32]]* %c, i64 0, i64 1, i64 7
  store i32 0, i32* %t29
  store i32 2, i32* %b
  %t30 = sext i32 2 to i64
  %t31 = getelementptr [4 x i32], [4 x i32]* @c, i64 0, i64 %t30
  %.v13 = load i32, i32* %t31
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %if.then6, label %if.end7
if.then4:
  br label %while.end3
if.end5:
  br label %while.cond1
if.then6:
  %t34 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0, i64 0, i64 0
  store i32 0, i32* %t34
  %t35 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0, i64 0, i64 1
  store i32 0, i32* %t35
  %t36 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0, i64 0, i64 2
  store i32 0, i32* %t36
  %t37 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0, i64 0, i64 3
  store i32 0, i32* %t37
  %t38 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 0, i64 0, i64 4
  store i32 0, i32* %t38
  %t39 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 1, i64 0, i64 0
  store i32 0, i32* %t39
  %t40 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 1, i64 0, i64 1
  store i32 0, i32* %t40
  %t41 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 1, i64 0, i64 2
  store i32 0, i32* %t41
  %t42 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 1, i64 0, i64 3
  store i32 0, i32* %t42
  %t43 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 1, i64 0, i64 4
  store i32 0, i32* %t43
  %t44 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2, i64 0, i64 0
  store i32 2, i32* %t44
  %t45 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2, i64 0, i64 1
  store i32 1, i32* %t45
  %t46 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2, i64 0, i64 2
  store i32 8, i32* %t46
  %t47 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2, i64 0, i64 3
  store i32 0, i32* %t47
  %t48 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 2, i64 0, i64 4
  store i32 0, i32* %t48
  %t49 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 3, i64 0, i64 0
  store i32 0, i32* %t49
  %t50 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 3, i64 0, i64 1
  store i32 0, i32* %t50
  %t51 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 3, i64 0, i64 2
  store i32 0, i32* %t51
  %t52 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 3, i64 0, i64 3
  store i32 0, i32* %t52
  %t53 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 3, i64 0, i64 4
  store i32 0, i32* %t53
  %t54 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 4, i64 0, i64 0
  store i32 0, i32* %t54
  %t55 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 4, i64 0, i64 1
  store i32 0, i32* %t55
  %t56 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 4, i64 0, i64 2
  store i32 0, i32* %t56
  %t57 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 4, i64 0, i64 3
  store i32 0, i32* %t57
  %t58 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 4, i64 0, i64 4
  store i32 0, i32* %t58
  %t59 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 5, i64 0, i64 0
  store i32 0, i32* %t59
  %t60 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 5, i64 0, i64 1
  store i32 0, i32* %t60
  %t61 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 5, i64 0, i64 2
  store i32 0, i32* %t61
  %t62 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 5, i64 0, i64 3
  store i32 0, i32* %t62
  %t63 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 5, i64 0, i64 4
  store i32 0, i32* %t63
  %t64 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 6, i64 0, i64 0
  store i32 0, i32* %t64
  %t65 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 6, i64 0, i64 1
  store i32 0, i32* %t65
  %t66 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 6, i64 0, i64 2
  store i32 0, i32* %t66
  %t67 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 6, i64 0, i64 3
  store i32 0, i32* %t67
  %t68 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 6, i64 0, i64 4
  store i32 0, i32* %t68
  %.v15 = load i32, i32* %b
  %t70 = sext i32 %.v15 to i64
  %t71 = sext i32 0 to i64
  %t72 = sext i32 0 to i64
  %t73 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %t70, i64 %t71, i64 %t72
  %.v16 = load i32, i32* %t73
  call void @putint(i32 %.v16)
  %.v17 = load i32, i32* %b
  %t76 = sext i32 %.v17 to i64
  %t77 = sext i32 0 to i64
  %t78 = sext i32 1 to i64
  %t79 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %t76, i64 %t77, i64 %t78
  %.v18 = load i32, i32* %t79
  call void @putint(i32 %.v18)
  %.v19 = load i32, i32* %b
  %t82 = sext i32 %.v19 to i64
  %t83 = sext i32 0 to i64
  %t84 = sext i32 2 to i64
  %t85 = getelementptr [7 x [1 x [5 x i32]]], [7 x [1 x [5 x i32]]]* %c.1, i64 0, i64 %t82, i64 %t83, i64 %t84
  %.v20 = load i32, i32* %t85
  call void @putint(i32 %.v20)
  br label %if.end7
if.end7:
  call void @putch(i32 10)
  %.v21 = load i32, i32* @b
  call void @putint(i32 %.v21)
  call void @putch(i32 10)
  %t88 = sext i32 0 to i64
  %t89 = getelementptr [4 x i32], [4 x i32]* @c, i64 0, i64 %t88
  %.v22 = load i32, i32* %t89
  call void @putint(i32 %.v22)
  %t91 = sext i32 1 to i64
  %t92 = getelementptr [4 x i32], [4 x i32]* @c, i64 0, i64 %t91
  %.v23 = load i32, i32* %t92
  call void @putint(i32 %.v23)
  %t94 = sext i32 2 to i64
  %t95 = getelementptr [4 x i32], [4 x i32]* @c, i64 0, i64 %t94
  %.v24 = load i32, i32* %t95
  call void @putint(i32 %.v24)
  %t97 = sext i32 3 to i64
  %t98 = getelementptr [4 x i32], [4 x i32]* @c, i64 0, i64 %t97
  %.v25 = load i32, i32* %t98
  call void @putint(i32 %.v25)
  call void @putch(i32 10)
  ret i32 0
}

