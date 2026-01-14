declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %e = alloca [4 x [2 x i32]]
  %d = alloca [4 x [2 x i32]]
  %c = alloca [4 x [2 x i32]]
  %b = alloca [4 x [2 x i32]]
  %a = alloca [4 x [2 x i32]]
  %t0 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 0, i64 0
  store i32 0, i32* %t0
  %t1 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 0, i64 1
  store i32 0, i32* %t1
  %t2 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 1, i64 0
  store i32 0, i32* %t2
  %t3 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 1, i64 1
  store i32 0, i32* %t3
  %t4 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 2, i64 0
  store i32 0, i32* %t4
  %t5 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 2, i64 1
  store i32 0, i32* %t5
  %t6 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 3, i64 0
  store i32 0, i32* %t6
  %t7 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 3, i64 1
  store i32 0, i32* %t7
  %t8 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0, i64 0
  store i32 1, i32* %t8
  %t9 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 0, i64 1
  store i32 2, i32* %t9
  %t10 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 1, i64 0
  store i32 3, i32* %t10
  %t11 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 1, i64 1
  store i32 4, i32* %t11
  %t12 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 2, i64 0
  store i32 5, i32* %t12
  %t13 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 2, i64 1
  store i32 6, i32* %t13
  %t14 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 3, i64 0
  store i32 7, i32* %t14
  %t15 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %b, i64 0, i64 3, i64 1
  store i32 8, i32* %t15
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
  %t30 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3, i64 0
  store i32 7, i32* %t30
  %t31 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3, i64 1
  store i32 8, i32* %t31
  %t32 = sext i32 2 to i64
  %t33 = sext i32 1 to i64
  %t34 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 %t32, i64 %t33
  %.v1 = load i32, i32* %t34
  %t36 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 0, i64 0
  store i32 %.v1, i32* %t36
  %t37 = sext i32 2 to i64
  %t38 = sext i32 1 to i64
  %t39 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i64 %t37, i64 %t38
  %.v2 = load i32, i32* %t39
  %t41 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 0, i64 1
  store i32 %.v2, i32* %t41
  %t42 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 1, i64 0
  store i32 3, i32* %t42
  %t43 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 1, i64 1
  store i32 4, i32* %t43
  %t44 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 2, i64 0
  store i32 5, i32* %t44
  %t45 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 2, i64 1
  store i32 6, i32* %t45
  %t46 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 3, i64 0
  store i32 7, i32* %t46
  %t47 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 3, i64 1
  store i32 8, i32* %t47
  %t48 = sext i32 3 to i64
  %t49 = sext i32 1 to i64
  %t50 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 %t48, i64 %t49
  %.v3 = load i32, i32* %t50
  %t52 = sext i32 0 to i64
  %t53 = sext i32 0 to i64
  %t54 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 %t52, i64 %t53
  %.v4 = load i32, i32* %t54
  %.v5 = add i32 %.v3, %.v4
  %t57 = sext i32 0 to i64
  %t58 = sext i32 1 to i64
  %t59 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %e, i64 0, i64 %t57, i64 %t58
  %.v6 = load i32, i32* %t59
  %.v7 = add i32 %.v5, %.v6
  %t62 = sext i32 2 to i64
  %t63 = sext i32 0 to i64
  %t64 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i64 %t62, i64 %t63
  %.v8 = load i32, i32* %t64
  %.v9 = add i32 %.v7, %.v8
  ret i32 %.v9
}

