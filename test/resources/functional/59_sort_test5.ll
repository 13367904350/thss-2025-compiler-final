@n = global i32 zeroinitializer
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

define i32 @swap(i32* %array, i32 %i, i32 %j) {
entry:
  %temp = alloca i32
  %j.addr = alloca i32
  %i.addr = alloca i32
  %array.addr = alloca i32*
  store i32* %array, i32** %array.addr
  store i32 %i, i32* %i.addr
  store i32 %j, i32* %j.addr
  %.v1 = load i32, i32* %i.addr
  %.v2 = load i32*, i32** %array.addr
  %.v3 = getelementptr i32, i32* %.v2, i32 %.v1
  %.v4 = load i32, i32* %.v3
  store i32 %.v4, i32* %temp
  %.v5 = load i32, i32* %j.addr
  %.v6 = load i32*, i32** %array.addr
  %.v7 = getelementptr i32, i32* %.v6, i32 %.v5
  %.v8 = load i32, i32* %.v7
  %.v9 = load i32, i32* %i.addr
  %.v10 = load i32*, i32** %array.addr
  %.v11 = getelementptr i32, i32* %.v10, i32 %.v9
  store i32 %.v8, i32* %.v11
  %.v12 = load i32, i32* %temp
  %.v13 = load i32, i32* %j.addr
  %.v14 = load i32*, i32** %array.addr
  %.v15 = getelementptr i32, i32* %.v14, i32 %.v13
  store i32 %.v12, i32* %.v15
  ret i32 0
}

define i32 @heap_ajust(i32* %arr, i32 %start, i32 %end) {
entry:
  %.v11 = alloca i32
  %son = alloca i32
  %dad = alloca i32
  %end.addr = alloca i32
  %start.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
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
  %.v32 = load i32, i32* %son
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %son
  br label %if.end5
if.end5:
  %.v34 = load i32, i32* %dad
  %.v35 = load i32*, i32** %arr.addr
  %.v36 = getelementptr i32, i32* %.v35, i32 %.v34
  %.v37 = load i32, i32* %.v36
  %.v38 = load i32, i32* %son
  %.v39 = load i32*, i32** %arr.addr
  %.v40 = getelementptr i32, i32* %.v39, i32 %.v38
  %.v41 = load i32, i32* %.v40
  %.v42 = icmp sgt i32 %.v37, %.v41
  %.v43 = zext i1 %.v42 to i32
  %.v44 = icmp ne i32 %.v43, 0
  br i1 %.v44, label %if.then8, label %if.else9
land.rhs6:
  %.v17 = load i32, i32* %son
  %.v18 = load i32*, i32** %arr.addr
  %.v19 = getelementptr i32, i32* %.v18, i32 %.v17
  %.v20 = load i32, i32* %.v19
  %.v21 = load i32, i32* %son
  %.v22 = add i32 %.v21, 1
  %.v23 = load i32*, i32** %arr.addr
  %.v24 = getelementptr i32, i32* %.v23, i32 %.v22
  %.v25 = load i32, i32* %.v24
  %.v26 = icmp slt i32 %.v20, %.v25
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  %.v29 = zext i1 %.v28 to i32
  store i32 %.v29, i32* %.v11
  br label %land.end7
land.end7:
  %.v30 = load i32, i32* %.v11
  %.v31 = icmp ne i32 %.v30, 0
  br i1 %.v31, label %if.then4, label %if.end5
if.then8:
  ret i32 0
if.else9:
  %.v45 = load i32*, i32** %arr.addr
  %.v46 = load i32, i32* %dad
  %.v47 = load i32, i32* %son
  %.v48 = call i32 @swap(i32* %.v45, i32 %.v46, i32 %.v47)
  store i32 %.v48, i32* %dad
  %.v49 = load i32, i32* %son
  store i32 %.v49, i32* %dad
  %.v50 = load i32, i32* %dad
  %.v51 = mul i32 %.v50, 2
  %.v52 = add i32 %.v51, 1
  store i32 %.v52, i32* %son
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
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
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
  %.v11 = load i32*, i32** %arr.addr
  %.v12 = load i32, i32* %i
  %.v13 = load i32, i32* %tmp
  %.v14 = call i32 @heap_ajust(i32* %.v11, i32 %.v12, i32 %.v13)
  store i32 %.v14, i32* %tmp
  %.v15 = load i32, i32* %i
  %.v16 = sub i32 %.v15, 1
  store i32 %.v16, i32* %i
  br label %while.cond1
while.end3:
  %.v17 = load i32, i32* %len.addr
  %.v18 = sub i32 %.v17, 1
  store i32 %.v18, i32* %i
  br label %while.cond4
while.cond4:
  %.v19 = load i32, i32* %i
  %.v20 = icmp sgt i32 %.v19, 0
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %tmp0
  %.v23 = load i32*, i32** %arr.addr
  %.v24 = load i32, i32* %tmp0
  %.v25 = load i32, i32* %i
  %.v26 = call i32 @swap(i32* %.v23, i32 %.v24, i32 %.v25)
  store i32 %.v26, i32* %tmp
  %.v27 = load i32, i32* %i
  %.v28 = sub i32 %.v27, 1
  store i32 %.v28, i32* %tmp
  %.v29 = load i32*, i32** %arr.addr
  %.v30 = load i32, i32* %tmp0
  %.v31 = load i32, i32* %tmp
  %.v32 = call i32 @heap_ajust(i32* %.v29, i32 %.v30, i32 %.v31)
  store i32 %.v32, i32* %tmp
  %.v33 = load i32, i32* %i
  %.v34 = sub i32 %.v33, 1
  store i32 %.v34, i32* %i
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
  %t100 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 0
  store i32 4, i32* %t100
  %t101 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 1
  store i32 3, i32* %t101
  %t102 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 2
  store i32 9, i32* %t102
  %t103 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 3
  store i32 2, i32* %t103
  %t104 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 4
  store i32 0, i32* %t104
  %t105 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 5
  store i32 1, i32* %t105
  %t106 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 6
  store i32 6, i32* %t106
  %t107 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 7
  store i32 5, i32* %t107
  %t108 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 8
  store i32 7, i32* %t108
  %t109 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 9
  store i32 8, i32* %t109
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
  %t119 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 %.v9
  %.v10 = load i32, i32* %t119
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

