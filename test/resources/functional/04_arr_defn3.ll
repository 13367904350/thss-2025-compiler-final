declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca [4 x [2 x i32]]
  %t1 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 0, i32 0
  store i32 0, i32* %t1
  %t2 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 0, i32 1
  store i32 0, i32* %t2
  %t3 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 1, i32 0
  store i32 0, i32* %t3
  %t4 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 1, i32 1
  store i32 0, i32* %t4
  %t5 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 2, i32 0
  store i32 0, i32* %t5
  %t6 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 2, i32 1
  store i32 0, i32* %t6
  %t7 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 3, i32 0
  store i32 0, i32* %t7
  %t8 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 3, i32 1
  store i32 0, i32* %t8
  %t9 = alloca [4 x [2 x i32]]
  %t10 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 0, i32 0
  store i32 1, i32* %t10
  %t11 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 0, i32 1
  store i32 2, i32* %t11
  %t12 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 1, i32 0
  store i32 3, i32* %t12
  %t13 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 1, i32 1
  store i32 4, i32* %t13
  %t14 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 2, i32 0
  store i32 5, i32* %t14
  %t15 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 2, i32 1
  store i32 6, i32* %t15
  %t16 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 3, i32 0
  store i32 7, i32* %t16
  %t17 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t9, i32 0, i32 3, i32 1
  store i32 8, i32* %t17
  %t18 = alloca [4 x [2 x i32]]
  %t19 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 0, i32 0
  store i32 1, i32* %t19
  %t20 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 0, i32 1
  store i32 2, i32* %t20
  %t21 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 1, i32 0
  store i32 3, i32* %t21
  %t22 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 1, i32 1
  store i32 4, i32* %t22
  %t23 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 2, i32 0
  store i32 5, i32* %t23
  %t24 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 2, i32 1
  store i32 6, i32* %t24
  %t25 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 3, i32 0
  store i32 7, i32* %t25
  %t26 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 3, i32 1
  store i32 8, i32* %t26
  %t27 = alloca [4 x [2 x i32]]
  %t28 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 0, i32 0
  store i32 1, i32* %t28
  %t29 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 0, i32 1
  store i32 2, i32* %t29
  %t30 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 1, i32 0
  store i32 3, i32* %t30
  %t31 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 1, i32 1
  store i32 0, i32* %t31
  %t32 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 2, i32 0
  store i32 5, i32* %t32
  %t33 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 2, i32 1
  store i32 0, i32* %t33
  %t34 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 3, i32 0
  store i32 7, i32* %t34
  %t35 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 3, i32 1
  store i32 8, i32* %t35
  %t36 = alloca [4 x [2 x i32]]
  %t37 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t27, i32 0, i32 2, i32 1
  %v1 = load i32, i32* %t37
  %t39 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 0, i32 0
  store i32 %v1, i32* %t39
  %t40 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t18, i32 0, i32 2, i32 1
  %v2 = load i32, i32* %t40
  %t42 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 0, i32 1
  store i32 %v2, i32* %t42
  %t43 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 1, i32 0
  store i32 3, i32* %t43
  %t44 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 1, i32 1
  store i32 4, i32* %t44
  %t45 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 2, i32 0
  store i32 5, i32* %t45
  %t46 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 2, i32 1
  store i32 6, i32* %t46
  %t47 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 3, i32 0
  store i32 7, i32* %t47
  %t48 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 3, i32 1
  store i32 8, i32* %t48
  %t49 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 3, i32 1
  %v3 = load i32, i32* %t49
  %t51 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 0, i32 0
  %v4 = load i32, i32* %t51
  %v5 = add i32 %v3, %v4
  %t54 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t36, i32 0, i32 0, i32 1
  %v6 = load i32, i32* %t54
  %v7 = add i32 %v5, %v6
  %t57 = getelementptr [4 x [2 x i32]], [4 x [2 x i32]]* %t0, i32 0, i32 2, i32 0
  %v8 = load i32, i32* %t57
  %v9 = add i32 %v7, %v8
  ret i32 %v9
}

