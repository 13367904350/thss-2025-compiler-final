declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

declare float @getfloat()

declare void @putfloat(float)

declare i32 @getfarray(float*)

declare void @putfarray(i32, float*)

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
  %t30 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %a, i64 0, i32 3
  %t31 = getelementptr [2 x i32], [2 x i32]* %t30, i64 0, i32 0
  %.v1 = load i32, i32* %t31
  %t33 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3, i64 0
  store i32 %.v1, i32* %t33
  %t34 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i64 3, i64 1
  store i32 8, i32* %t34
  %t35 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i32 2
  %t36 = getelementptr [2 x i32], [2 x i32]* %t35, i64 0, i32 1
  %.v2 = load i32, i32* %t36
  %t38 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 0, i64 0, i64 0
  store i32 %.v2, i32* %t38
  %t39 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %c, i64 0, i32 2
  %t40 = getelementptr [2 x i32], [2 x i32]* %t39, i64 0, i32 1
  %.v3 = load i32, i32* %t40
  %t42 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 0, i64 1, i64 0
  store i32 %.v3, i32* %t42
  %t43 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 1, i64 0, i64 0
  store i32 3, i32* %t43
  %t44 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 1, i64 1, i64 0
  store i32 4, i32* %t44
  %t45 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 2, i64 0, i64 0
  store i32 5, i32* %t45
  %t46 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 2, i64 1, i64 0
  store i32 6, i32* %t46
  %t47 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 3, i64 0, i64 0
  store i32 7, i32* %t47
  %t48 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i64 3, i64 1, i64 0
  store i32 8, i32* %t48
  %t49 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i32 3
  %t50 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %t49, i64 0, i32 1
  %t51 = getelementptr [1 x i32], [1 x i32]* %t50, i64 0, i32 0
  %.v4 = load i32, i32* %t51
  %t53 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i32 0
  %t54 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %t53, i64 0, i32 0
  %t55 = getelementptr [1 x i32], [1 x i32]* %t54, i64 0, i32 0
  %.v5 = load i32, i32* %t55
  %.v6 = add i32 %.v4, %.v5
  %t58 = getelementptr [4 x [2 x [1 x i32]]], [4 x [2 x [1 x i32]]]* %e, i64 0, i32 0
  %t59 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %t58, i64 0, i32 1
  %t60 = getelementptr [1 x i32], [1 x i32]* %t59, i64 0, i32 0
  %.v7 = load i32, i32* %t60
  %.v8 = add i32 %.v6, %.v7
  %t63 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %d, i64 0, i32 3
  %t64 = getelementptr [2 x i32], [2 x i32]* %t63, i64 0, i32 0
  %.v9 = load i32, i32* %t64
  %.v10 = add i32 %.v8, %.v9
  ret i32 %.v10
}

