@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @swap(i32* %array, i32 %i, i32 %j) {
entry:
  %temp = alloca i32
  %j.addr = alloca i32
  %i.addr = alloca i32
  store i32 %i, i32* %i.addr
  store i32 %j, i32* %j.addr
  %.v1 = load i32, i32* %i.addr
  %t1 = sext i32 %.v1 to i64
  %t2 = getelementptr i32, i32* %array, i64 %t1
  %.v2 = load i32, i32* %t2
  store i32 %.v2, i32* %temp
  %.v3 = load i32, i32* %j.addr
  %t5 = sext i32 %.v3 to i64
  %t6 = getelementptr i32, i32* %array, i64 %t5
  %.v4 = load i32, i32* %t6
  %.v5 = load i32, i32* %i.addr
  %t9 = sext i32 %.v5 to i64
  %t10 = getelementptr i32, i32* %array, i64 %t9
  store i32 %.v4, i32* %t10
  %.v6 = load i32, i32* %temp
  %.v7 = load i32, i32* %j.addr
  %t13 = sext i32 %.v7 to i64
  %t14 = getelementptr i32, i32* %array, i64 %t13
  store i32 %.v6, i32* %t14
  ret i32 0
}

define i32 @heap_ajust(i32* %arr, i32 %start, i32 %end) {
entry:
  %.v11 = alloca i32
  %son = alloca i32
  %dad = alloca i32
  %end.addr = alloca i32
  %start.addr = alloca i32
  store i32 %start, i32* %start.addr
  store i32 %end, i32* %end.addr
  %.v1 = load i32, i32* %start.addr
  store i32 %.v1, i32* %dad
  %.v2 = load i32, i32* %dad
  %.v3 = mul i32 %.v2, 2
  %.v4 = add i32 %.v3, 1
  store i32 %.v4, i32* %son
  br label %while.cond1
while.cond1:
  %.v5 = load i32, i32* %son
  %.v6 = load i32, i32* %end.addr
  %.v7 = add i32 %.v6, 1
  %.v8 = icmp slt i32 %.v5, %.v7
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  br i1 %.v10, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %.v11
  %.v12 = load i32, i32* %son
  %.v13 = load i32, i32* %end.addr
  %.v14 = icmp slt i32 %.v12, %.v13
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %land.rhs6, label %land.end7
while.end3:
  ret i32 0
if.then4:
  %.v28 = load i32, i32* %son
  %.v29 = add i32 %.v28, 1
  store i32 %.v29, i32* %son
  br label %if.end5
if.end5:
  %.v30 = load i32, i32* %dad
  %t48 = sext i32 %.v30 to i64
  %t49 = getelementptr i32, i32* %arr, i64 %t48
  %.v31 = load i32, i32* %t49
  %.v32 = load i32, i32* %son
  %t52 = sext i32 %.v32 to i64
  %t53 = getelementptr i32, i32* %arr, i64 %t52
  %.v33 = load i32, i32* %t53
  %.v34 = icmp sgt i32 %.v31, %.v33
  %.v35 = zext i1 %.v34 to i32
  %.v36 = icmp ne i32 %.v35, 0
  br i1 %.v36, label %if.then8, label %if.else9
land.rhs6:
  %.v17 = load i32, i32* %son
  %t31 = sext i32 %.v17 to i64
  %t32 = getelementptr i32, i32* %arr, i64 %t31
  %.v18 = load i32, i32* %t32
  %.v19 = load i32, i32* %son
  %.v20 = add i32 %.v19, 1
  %t36 = sext i32 %.v20 to i64
  %t37 = getelementptr i32, i32* %arr, i64 %t36
  %.v21 = load i32, i32* %t37
  %.v22 = icmp slt i32 %.v18, %.v21
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  %.v25 = zext i1 %.v24 to i32
  store i32 %.v25, i32* %.v11
  br label %land.end7
land.end7:
  %.v26 = load i32, i32* %.v11
  %.v27 = icmp ne i32 %.v26, 0
  br i1 %.v27, label %if.then4, label %if.end5
if.then8:
  ret i32 0
if.else9:
  %.v37 = load i32, i32* %dad
  %.v38 = load i32, i32* %son
  %.v39 = call i32 @swap(i32* %arr, i32 %.v37, i32 %.v38)
  store i32 %.v39, i32* %dad
  %.v40 = load i32, i32* %son
  store i32 %.v40, i32* %dad
  %.v41 = load i32, i32* %dad
  %.v42 = mul i32 %.v41, 2
  %.v43 = add i32 %.v42, 1
  store i32 %.v43, i32* %son
  br label %if.end10
if.end10:
  br label %while.cond1
}

define i32 @heap_sort(i32* %arr, i32 %len) {
entry:
  %tmp0 = alloca i32
  %tmp = alloca i32
  %i = alloca i32
  %len.addr = alloca i32
  store i32 %len, i32* %len.addr
  %.v1 = load i32, i32* %len.addr
  %.v2 = sdiv i32 %.v1, 2
  %.v3 = sub i32 %.v2, 1
  store i32 %.v3, i32* %i
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %i
  %.v5 = sub i32 0, 1
  %.v6 = icmp sgt i32 %.v4, %.v5
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body2, label %while.end3
while.body2:
  %.v9 = load i32, i32* %len.addr
  %.v10 = sub i32 %.v9, 1
  store i32 %.v10, i32* %tmp
  %.v11 = load i32, i32* %i
  %.v12 = load i32, i32* %tmp
  %.v13 = call i32 @heap_ajust(i32* %arr, i32 %.v11, i32 %.v12)
  store i32 %.v13, i32* %tmp
  %.v14 = load i32, i32* %i
  %.v15 = sub i32 %.v14, 1
  store i32 %.v15, i32* %i
  br label %while.cond1
while.end3:
  %.v16 = load i32, i32* %len.addr
  %.v17 = sub i32 %.v16, 1
  store i32 %.v17, i32* %i
  br label %while.cond4
while.cond4:
  %.v18 = load i32, i32* %i
  %.v19 = icmp sgt i32 %.v18, 0
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %tmp0
  %.v22 = load i32, i32* %tmp0
  %.v23 = load i32, i32* %i
  %.v24 = call i32 @swap(i32* %arr, i32 %.v22, i32 %.v23)
  store i32 %.v24, i32* %tmp
  %.v25 = load i32, i32* %i
  %.v26 = sub i32 %.v25, 1
  store i32 %.v26, i32* %tmp
  %.v27 = load i32, i32* %tmp0
  %.v28 = load i32, i32* %tmp
  %.v29 = call i32 @heap_ajust(i32* %arr, i32 %.v27, i32 %.v28)
  store i32 %.v29, i32* %tmp
  %.v30 = load i32, i32* %i
  %.v31 = sub i32 %.v30, 1
  store i32 %.v31, i32* %i
  br label %while.cond4
while.end6:
  ret i32 0
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t96 = sext i32 0 to i64
  %t97 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t96
  store i32 4, i32* %t97
  %t98 = sext i32 1 to i64
  %t99 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t98
  store i32 3, i32* %t99
  %t100 = sext i32 2 to i64
  %t101 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t100
  store i32 9, i32* %t101
  %t102 = sext i32 3 to i64
  %t103 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t102
  store i32 2, i32* %t103
  %t104 = sext i32 4 to i64
  %t105 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t104
  store i32 0, i32* %t105
  %t106 = sext i32 5 to i64
  %t107 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t106
  store i32 1, i32* %t107
  %t108 = sext i32 6 to i64
  %t109 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t108
  store i32 6, i32* %t109
  %t110 = sext i32 7 to i64
  %t111 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t110
  store i32 5, i32* %t111
  %t112 = sext i32 8 to i64
  %t113 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t112
  store i32 7, i32* %t113
  %t114 = sext i32 9 to i64
  %t115 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t114
  store i32 8, i32* %t115
  store i32 0, i32* %i
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = load i32, i32* @n
  %.v3 = call i32 @heap_sort(i32* %.v1, i32 %.v2)
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
  %t125 = sext i32 %.v9 to i64
  %t126 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 %t125
  %.v10 = load i32, i32* %t126
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

