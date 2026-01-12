declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  store i32 2, i32* %t0
  %t1 = alloca i32
  store i32 20, i32* %t1
  %t2 = alloca [20 x i32]
  %t3 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 0
  store i32 1, i32* %t3
  %t4 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 1
  store i32 2, i32* %t4
  %t5 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 2
  store i32 0, i32* %t5
  %t6 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 3
  store i32 0, i32* %t6
  %t7 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 4
  store i32 0, i32* %t7
  %t8 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 5
  store i32 0, i32* %t8
  %t9 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 6
  store i32 0, i32* %t9
  %t10 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 7
  store i32 0, i32* %t10
  %t11 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 8
  store i32 0, i32* %t11
  %t12 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 9
  store i32 0, i32* %t12
  %t13 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 10
  store i32 0, i32* %t13
  %t14 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 11
  store i32 0, i32* %t14
  %t15 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 12
  store i32 0, i32* %t15
  %t16 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 13
  store i32 0, i32* %t16
  %t17 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 14
  store i32 0, i32* %t17
  %t18 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 15
  store i32 0, i32* %t18
  %t19 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 16
  store i32 0, i32* %t19
  %t20 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 17
  store i32 0, i32* %t20
  %t21 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 18
  store i32 0, i32* %t21
  %t22 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 19
  store i32 0, i32* %t22
  %t23 = alloca i32
  store i32 0, i32* %t23
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* %t1
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t0
  %t30 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 %v6
  %v7 = load i32, i32* %t30
  %v8 = load i32, i32* %t0
  %v9 = sub i32 %v8, 1
  %t34 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 %v9
  %v10 = load i32, i32* %t34
  %v11 = add i32 %v7, %v10
  %v12 = load i32, i32* %t0
  %v13 = sub i32 %v12, 2
  %t39 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 %v13
  %v14 = load i32, i32* %t39
  %v15 = add i32 %v11, %v14
  %v16 = load i32, i32* %t0
  %t43 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 %v16
  store i32 %v15, i32* %t43
  %v17 = load i32, i32* %t23
  %v18 = load i32, i32* %t0
  %t46 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 %v18
  %v19 = load i32, i32* %t46
  %v20 = add i32 %v17, %v19
  store i32 %v20, i32* %t23
  %v21 = load i32, i32* %t0
  %t50 = getelementptr [20 x i32], [20 x i32]* %t2, i32 0, i32 %v21
  %v22 = load i32, i32* %t50
  call void @putint(i32 %v22)
  call void @putch(i32 10)
  %v23 = load i32, i32* %t0
  %v24 = add i32 %v23, 1
  store i32 %v24, i32* %t0
  br label %while.cond1
while.end3:
  %v25 = load i32, i32* %t23
  ret i32 %v25
}

