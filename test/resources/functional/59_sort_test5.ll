@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @swap(i32* %array, i32 %i, i32 %j) {
entry:
  %t0 = alloca i32
  store i32 %i, i32* %t0
  %t1 = alloca i32
  store i32 %j, i32* %t1
  %t2 = alloca i32
  %v1 = load i32, i32* %t0
  %t4 = getelementptr i32, i32* %array, i32 %v1
  %v2 = load i32, i32* %t4
  store i32 %v2, i32* %t2
  %v3 = load i32, i32* %t1
  %t7 = getelementptr i32, i32* %array, i32 %v3
  %v4 = load i32, i32* %t7
  %v5 = load i32, i32* %t0
  %t10 = getelementptr i32, i32* %array, i32 %v5
  store i32 %v4, i32* %t10
  %v6 = load i32, i32* %t2
  %v7 = load i32, i32* %t1
  %t13 = getelementptr i32, i32* %array, i32 %v7
  store i32 %v6, i32* %t13
  ret i32 0
}

define i32 @heap_ajust(i32* %arr, i32 %start, i32 %end) {
entry:
  %t14 = alloca i32
  store i32 %start, i32* %t14
  %t15 = alloca i32
  store i32 %end, i32* %t15
  %t16 = alloca i32
  %v1 = load i32, i32* %t14
  store i32 %v1, i32* %t16
  %t18 = alloca i32
  %v2 = load i32, i32* %t16
  %v3 = mul i32 %v2, 2
  %v4 = add i32 %v3, 1
  store i32 %v4, i32* %t18
  br label %while.cond1
while.cond1:
  %v5 = load i32, i32* %t18
  %v6 = load i32, i32* %t15
  %v7 = add i32 %v6, 1
  %v8 = icmp slt i32 %v5, %v7
  %v9 = zext i1 %v8 to i32
  %v10 = icmp ne i32 %v9, 0
  br i1 %v10, label %while.body2, label %while.end3
while.body2:
  %v11 = alloca i32
  store i32 0, i32* %v11
  %v12 = load i32, i32* %t18
  %v13 = load i32, i32* %t15
  %v14 = icmp slt i32 %v12, %v13
  %v15 = zext i1 %v14 to i32
  %v16 = icmp ne i32 %v15, 0
  br i1 %v16, label %land.rhs6, label %land.end7
while.end3:
  ret i32 0
if.then4:
  %v28 = load i32, i32* %t18
  %v29 = add i32 %v28, 1
  store i32 %v29, i32* %t18
  br label %if.end5
if.end5:
  %v30 = load i32, i32* %t16
  %t50 = getelementptr i32, i32* %arr, i32 %v30
  %v31 = load i32, i32* %t50
  %v32 = load i32, i32* %t18
  %t53 = getelementptr i32, i32* %arr, i32 %v32
  %v33 = load i32, i32* %t53
  %v34 = icmp sgt i32 %v31, %v33
  %v35 = zext i1 %v34 to i32
  %v36 = icmp ne i32 %v35, 0
  br i1 %v36, label %if.then8, label %if.else9
land.rhs6:
  %v17 = load i32, i32* %t18
  %t35 = getelementptr i32, i32* %arr, i32 %v17
  %v18 = load i32, i32* %t35
  %v19 = load i32, i32* %t18
  %v20 = add i32 %v19, 1
  %t39 = getelementptr i32, i32* %arr, i32 %v20
  %v21 = load i32, i32* %t39
  %v22 = icmp slt i32 %v18, %v21
  %v23 = zext i1 %v22 to i32
  %v24 = icmp ne i32 %v23, 0
  %v25 = zext i1 %v24 to i32
  store i32 %v25, i32* %v11
  br label %land.end7
land.end7:
  %v26 = load i32, i32* %v11
  %v27 = icmp ne i32 %v26, 0
  br i1 %v27, label %if.then4, label %if.end5
if.then8:
  ret i32 0
if.else9:
  %v37 = load i32, i32* %t16
  %v38 = load i32, i32* %t18
  %v39 = call i32 @swap(i32* %arr, i32 %v37, i32 %v38)
  store i32 %v39, i32* %t16
  %v40 = load i32, i32* %t18
  store i32 %v40, i32* %t16
  %v41 = load i32, i32* %t16
  %v42 = mul i32 %v41, 2
  %v43 = add i32 %v42, 1
  store i32 %v43, i32* %t18
  br label %if.end10
if.end10:
  br label %while.cond1
}

define i32 @heap_sort(i32* %arr, i32 %len) {
entry:
  %t65 = alloca i32
  store i32 %len, i32* %t65
  %t66 = alloca i32
  %t67 = alloca i32
  %v1 = load i32, i32* %t65
  %v2 = sdiv i32 %v1, 2
  %v3 = sub i32 %v2, 1
  store i32 %v3, i32* %t66
  br label %while.cond1
while.cond1:
  %v4 = load i32, i32* %t66
  %v5 = sub i32 0, 1
  %v6 = icmp sgt i32 %v4, %v5
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %while.body2, label %while.end3
while.body2:
  %v9 = load i32, i32* %t65
  %v10 = sub i32 %v9, 1
  store i32 %v10, i32* %t67
  %v11 = load i32, i32* %t66
  %v12 = load i32, i32* %t67
  %v13 = call i32 @heap_ajust(i32* %arr, i32 %v11, i32 %v12)
  store i32 %v13, i32* %t67
  %v14 = load i32, i32* %t66
  %v15 = sub i32 %v14, 1
  store i32 %v15, i32* %t66
  br label %while.cond1
while.end3:
  %v16 = load i32, i32* %t65
  %v17 = sub i32 %v16, 1
  store i32 %v17, i32* %t66
  br label %while.cond4
while.cond4:
  %v18 = load i32, i32* %t66
  %v19 = icmp sgt i32 %v18, 0
  %v20 = zext i1 %v19 to i32
  %v21 = icmp ne i32 %v20, 0
  br i1 %v21, label %while.body5, label %while.end6
while.body5:
  %t89 = alloca i32
  store i32 0, i32* %t89
  %v22 = load i32, i32* %t89
  %v23 = load i32, i32* %t66
  %v24 = call i32 @swap(i32* %arr, i32 %v22, i32 %v23)
  store i32 %v24, i32* %t67
  %v25 = load i32, i32* %t66
  %v26 = sub i32 %v25, 1
  store i32 %v26, i32* %t67
  %v27 = load i32, i32* %t89
  %v28 = load i32, i32* %t67
  %v29 = call i32 @heap_ajust(i32* %arr, i32 %v27, i32 %v28)
  store i32 %v29, i32* %t67
  %v30 = load i32, i32* %t66
  %v31 = sub i32 %v30, 1
  store i32 %v31, i32* %t66
  br label %while.cond4
while.end6:
  ret i32 0
}

define i32 @main() {
entry:
  store i32 10, i32* @n
  %t100 = alloca [10 x i32]
  %t101 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 0
  store i32 4, i32* %t101
  %t102 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 1
  store i32 3, i32* %t102
  %t103 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 2
  store i32 9, i32* %t103
  %t104 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 3
  store i32 2, i32* %t104
  %t105 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 4
  store i32 0, i32* %t105
  %t106 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 5
  store i32 1, i32* %t106
  %t107 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 6
  store i32 6, i32* %t107
  %t108 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 7
  store i32 5, i32* %t108
  %t109 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 8
  store i32 7, i32* %t109
  %t110 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 9
  store i32 8, i32* %t110
  %t111 = alloca i32
  store i32 0, i32* %t111
  %v1 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 0
  %v2 = load i32, i32* @n
  %v3 = call i32 @heap_sort(i32* %v1, i32 %v2)
  store i32 %v3, i32* %t111
  br label %while.cond1
while.cond1:
  %v4 = load i32, i32* %t111
  %v5 = load i32, i32* @n
  %v6 = icmp slt i32 %v4, %v5
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %while.body2, label %while.end3
while.body2:
  %t120 = alloca i32
  %v9 = load i32, i32* %t111
  %t122 = getelementptr [10 x i32], [10 x i32]* %t100, i32 0, i32 %v9
  %v10 = load i32, i32* %t122
  store i32 %v10, i32* %t120
  %v11 = load i32, i32* %t120
  call void @putint(i32 %v11)
  store i32 10, i32* %t120
  %v12 = load i32, i32* %t120
  call void @putch(i32 %v12)
  %v13 = load i32, i32* %t111
  %v14 = add i32 %v13, 1
  store i32 %v14, i32* %t111
  br label %while.cond1
while.end3:
  ret i32 0
}

