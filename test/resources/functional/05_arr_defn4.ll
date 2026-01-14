declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %e = alloca [4 x [2 x [1 x i32]]]
  %d = alloca [4 x [2 x i32]]
  %c = alloca [4 x [2 x i32]]
  %b = alloca [4 x [2 x i32]]
  %N = alloca i32
  %a = alloca [4 x [2 x i32]]
  %t0 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 0, i64 0
  store i32 1, i32* %t0
  %t1 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 0, i64 1
  store i32 2, i32* %t1
  %t2 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 1, i64 0
  store i32 3, i32* %t2
  %t3 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 1, i64 1
  store i32 4, i32* %t3
  %t4 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 2, i64 0
  store i32 0, i32* %t4
  %t5 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 2, i64 1
  store i32 0, i32* %t5
  %t6 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 3, i64 0
  store i32 7, i32* %t6
  %t7 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 3, i64 1
  store i32 0, i32* %t7
  store i32 3, i32* %N
  %t8 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0, i64 0
  store i32 0, i32* %t8
  %t9 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0, i64 1
  store i32 0, i32* %t9
  %t10 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 1, i64 0
  store i32 0, i32* %t10
  %t11 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 1, i64 1
  store i32 0, i32* %t11
  %t12 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 2, i64 0
  store i32 0, i32* %t12
  %t13 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 2, i64 1
  store i32 0, i32* %t13
  %t14 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 3, i64 0
  store i32 0, i32* %t14
  %t15 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 3, i64 1
  store i32 0, i32* %t15
  %t16 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 0, i64 0
  store i32 1, i32* %t16
  %t17 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 0, i64 1
  store i32 2, i32* %t17
  %t18 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 1, i64 0
  store i32 3, i32* %t18
  %t19 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 1, i64 1
  store i32 4, i32* %t19
  %t20 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 2, i64 0
  store i32 5, i32* %t20
  %t21 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 2, i64 1
  store i32 6, i32* %t21
  %t22 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 3, i64 0
  store i32 7, i32* %t22
  %t23 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 3, i64 1
  store i32 8, i32* %t23
  %t24 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 0, i64 0
  store i32 1, i32* %t24
  %t25 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 0, i64 1
  store i32 2, i32* %t25
  %t26 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 1, i64 0
  store i32 3, i32* %t26
  %t27 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 1, i64 1
  store i32 0, i32* %t27
  %t28 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 2, i64 0
  store i32 5, i32* %t28
  %t29 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 2, i64 1
  store i32 0, i32* %t29
  %t30 = sext i32 3 to i64
  %t31 = sext i32 0 to i64
  %t32 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 %t30, i64 %t31
  %.v1 = load i32, i32* %t32
  %t34 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3, i64 0
  store i32 %.v1, i32* %t34
  %t35 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3, i64 1
  store i32 8, i32* %t35
  %t36 = sext i32 2 to i64
  %t37 = sext i32 1 to i64
  %t38 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 %t36, i64 %t37
  %.v2 = load i32, i32* %t38
  %t40 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 0, i64 0, i64 0
  store i32 %.v2, i32* %t40
  %t41 = sext i32 2 to i64
  %t42 = sext i32 1 to i64
  %t43 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 %t41, i64 %t42
  %.v3 = load i32, i32* %t43
  %t45 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 0, i64 1, i64 0
  store i32 %.v3, i32* %t45
  %t46 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 1, i64 0, i64 0
  store i32 3, i32* %t46
  %t47 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 1, i64 1, i64 0
  store i32 4, i32* %t47
  %t48 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 2, i64 0, i64 0
  store i32 5, i32* %t48
  %t49 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 2, i64 1, i64 0
  store i32 6, i32* %t49
  %t50 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 3, i64 0, i64 0
  store i32 7, i32* %t50
  %t51 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 3, i64 1, i64 0
  store i32 8, i32* %t51
  %t52 = sext i32 3 to i64
  %t53 = sext i32 1 to i64
  %t54 = sext i32 0 to i64
  %t55 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 %t52, i64 %t53, i64 %t54
  %.v4 = load i32, i32* %t55
  %t57 = sext i32 0 to i64
  %t58 = sext i32 0 to i64
  %t59 = sext i32 0 to i64
  %t60 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 %t57, i64 %t58, i64 %t59
  %.v5 = load i32, i32* %t60
  %.v6 = add i32 %.v4, %.v5
  %t63 = sext i32 0 to i64
  %t64 = sext i32 1 to i64
  %t65 = sext i32 0 to i64
  %t66 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 %t63, i64 %t64, i64 %t65
  %.v7 = load i32, i32* %t66
  %.v8 = add i32 %.v6, %.v7
  %t69 = sext i32 3 to i64
  %t70 = sext i32 0 to i64
  %t71 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 %t69, i64 %t70
  %.v9 = load i32, i32* %t71
  %.v10 = add i32 %.v8, %.v9
  ret i32 %.v10
}

