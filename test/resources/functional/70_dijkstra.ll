@INF = constant i32 65535
@e = global [16 x [16 x i32]] zeroinitializer
@book = global [16 x i32] zeroinitializer
@dis = global [16 x i32] zeroinitializer
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@v1 = global i32 zeroinitializer
@v2 = global i32 zeroinitializer
@w = global i32 zeroinitializer
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

define void @Dijkstra() {
entry:
  %j.1 = alloca i32
  %.v24 = alloca i32
  %k = alloca i32
  %min_index = alloca i32
  %min_num = alloca i32
  %j = alloca i32
  %i = alloca i32
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = icmp sle i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %t5 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 1
  %.v6 = load i32, i32* %i
  %t7 = getelementptr [16 x i32], [16 x i32]* %t5, i64 0, i32 %.v6
  %.v7 = load i32, i32* %t7
  %.v8 = load i32, i32* %i
  %t10 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v8
  store i32 %.v7, i32* %t10
  %.v9 = load i32, i32* %i
  %t12 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i32 %.v9
  store i32 0, i32* %t12
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %i
  br label %while.cond1
while.end3:
  %t15 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i32 1
  store i32 1, i32* %t15
  store i32 1, i32* %i
  br label %while.cond4
while.cond4:
  %.v12 = load i32, i32* %i
  %.v13 = load i32, i32* @n
  %.v14 = sub i32 %.v13, 1
  %.v15 = icmp sle i32 %.v12, %.v14
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %while.body5, label %while.end6
while.body5:
  %.v18 = load i32, i32* @INF
  store i32 %.v18, i32* %min_num
  store i32 0, i32* %min_index
  store i32 1, i32* %k
  br label %while.cond7
while.end6:
  ret void
while.cond7:
  %.v19 = load i32, i32* %k
  %.v20 = load i32, i32* @n
  %.v21 = icmp sle i32 %.v19, %.v20
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %while.body8, label %while.end9
while.body8:
  store i32 0, i32* %.v24
  %.v25 = load i32, i32* %min_num
  %.v26 = load i32, i32* %k
  %t30 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v26
  %.v27 = load i32, i32* %t30
  %.v28 = icmp sgt i32 %.v25, %.v27
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %land.rhs12, label %land.end13
while.end9:
  %.v44 = load i32, i32* %min_index
  %t51 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i32 %.v44
  store i32 1, i32* %t51
  store i32 1, i32* %j.1
  br label %while.cond14
if.then10:
  %.v39 = load i32, i32* %k
  %t45 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v39
  %.v40 = load i32, i32* %t45
  store i32 %.v40, i32* %min_num
  %.v41 = load i32, i32* %k
  store i32 %.v41, i32* %min_index
  br label %if.end11
if.end11:
  %.v42 = load i32, i32* %k
  %.v43 = add i32 %.v42, 1
  store i32 %.v43, i32* %k
  br label %while.cond7
land.rhs12:
  %.v31 = load i32, i32* %k
  %t36 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i32 %.v31
  %.v32 = load i32, i32* %t36
  %.v33 = icmp eq i32 %.v32, 0
  %.v34 = zext i1 %.v33 to i32
  %.v35 = icmp ne i32 %.v34, 0
  %.v36 = zext i1 %.v35 to i32
  store i32 %.v36, i32* %.v24
  br label %land.end13
land.end13:
  %.v37 = load i32, i32* %.v24
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %if.then10, label %if.end11
while.cond14:
  %.v45 = load i32, i32* %j.1
  %.v46 = load i32, i32* @n
  %.v47 = icmp sle i32 %.v45, %.v46
  %.v48 = zext i1 %.v47 to i32
  %.v49 = icmp ne i32 %.v48, 0
  br i1 %.v49, label %while.body15, label %while.end16
while.body15:
  %.v50 = load i32, i32* %min_index
  %t58 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 %.v50
  %.v51 = load i32, i32* %j.1
  %t60 = getelementptr [16 x i32], [16 x i32]* %t58, i64 0, i32 %.v51
  %.v52 = load i32, i32* %t60
  %.v53 = load i32, i32* @INF
  %.v54 = icmp slt i32 %.v52, %.v53
  %.v55 = zext i1 %.v54 to i32
  %.v56 = icmp ne i32 %.v55, 0
  br i1 %.v56, label %if.then17, label %if.end18
while.end16:
  %.v77 = load i32, i32* %i
  %.v78 = add i32 %.v77, 1
  store i32 %.v78, i32* %i
  br label %while.cond4
if.then17:
  %.v57 = load i32, i32* %j.1
  %t67 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v57
  %.v58 = load i32, i32* %t67
  %.v59 = load i32, i32* %min_index
  %t70 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v59
  %.v60 = load i32, i32* %t70
  %.v61 = load i32, i32* %min_index
  %t73 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 %.v61
  %.v62 = load i32, i32* %j.1
  %t75 = getelementptr [16 x i32], [16 x i32]* %t73, i64 0, i32 %.v62
  %.v63 = load i32, i32* %t75
  %.v64 = add i32 %.v60, %.v63
  %.v65 = icmp sgt i32 %.v58, %.v64
  %.v66 = zext i1 %.v65 to i32
  %.v67 = icmp ne i32 %.v66, 0
  br i1 %.v67, label %if.then19, label %if.end20
if.end18:
  %.v75 = load i32, i32* %j.1
  %.v76 = add i32 %.v75, 1
  store i32 %.v76, i32* %j.1
  br label %while.cond14
if.then19:
  %.v68 = load i32, i32* %min_index
  %t82 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v68
  %.v69 = load i32, i32* %t82
  %.v70 = load i32, i32* %min_index
  %t85 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 %.v70
  %.v71 = load i32, i32* %j.1
  %t87 = getelementptr [16 x i32], [16 x i32]* %t85, i64 0, i32 %.v71
  %.v72 = load i32, i32* %t87
  %.v73 = add i32 %.v69, %.v72
  %.v74 = load i32, i32* %j.1
  %t91 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v74
  store i32 %.v73, i32* %t91
  br label %if.end20
if.end20:
  br label %if.end18
}

define i32 @main() {
entry:
  %v = alloca i32
  %u = alloca i32
  %j = alloca i32
  %i = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* @n
  %.v2 = call i32 @getint()
  store i32 %.v2, i32* @m
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v3 = load i32, i32* %i
  %.v4 = load i32, i32* @n
  %.v5 = icmp sle i32 %.v3, %.v4
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  store i32 1, i32* %j
  br label %while.cond4
while.end3:
  store i32 1, i32* %i
  br label %while.cond10
while.cond4:
  %.v8 = load i32, i32* %j
  %.v9 = load i32, i32* @n
  %.v10 = icmp sle i32 %.v8, %.v9
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body5, label %while.end6
while.body5:
  %.v13 = load i32, i32* %i
  %.v14 = load i32, i32* %j
  %.v15 = icmp eq i32 %.v13, %.v14
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %if.then7, label %if.else8
while.end6:
  %.v25 = load i32, i32* %i
  %.v26 = add i32 %.v25, 1
  store i32 %.v26, i32* %i
  br label %while.cond1
if.then7:
  %.v18 = load i32, i32* %i
  %t114 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 %.v18
  %.v19 = load i32, i32* %j
  %t116 = getelementptr [16 x i32], [16 x i32]* %t114, i64 0, i32 %.v19
  store i32 0, i32* %t116
  br label %if.end9
if.else8:
  %.v20 = load i32, i32* @INF
  %.v21 = load i32, i32* %i
  %t119 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 %.v21
  %.v22 = load i32, i32* %j
  %t121 = getelementptr [16 x i32], [16 x i32]* %t119, i64 0, i32 %.v22
  store i32 %.v20, i32* %t121
  br label %if.end9
if.end9:
  %.v23 = load i32, i32* %j
  %.v24 = add i32 %.v23, 1
  store i32 %.v24, i32* %j
  br label %while.cond4
while.cond10:
  %.v27 = load i32, i32* %i
  %.v28 = load i32, i32* @m
  %.v29 = icmp sle i32 %.v27, %.v28
  %.v30 = zext i1 %.v29 to i32
  %.v31 = icmp ne i32 %.v30, 0
  br i1 %.v31, label %while.body11, label %while.end12
while.body11:
  %.v32 = call i32 @getint()
  store i32 %.v32, i32* %u
  %.v33 = call i32 @getint()
  store i32 %.v33, i32* %v
  %.v34 = call i32 @getint()
  %.v35 = load i32, i32* %u
  %t135 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i32 %.v35
  %.v36 = load i32, i32* %v
  %t137 = getelementptr [16 x i32], [16 x i32]* %t135, i64 0, i32 %.v36
  store i32 %.v34, i32* %t137
  %.v37 = load i32, i32* %i
  %.v38 = add i32 %.v37, 1
  store i32 %.v38, i32* %i
  br label %while.cond10
while.end12:
  call void @Dijkstra()
  store i32 1, i32* %i
  br label %while.cond13
while.cond13:
  %.v39 = load i32, i32* %i
  %.v40 = load i32, i32* @n
  %.v41 = icmp sle i32 %.v39, %.v40
  %.v42 = zext i1 %.v41 to i32
  %.v43 = icmp ne i32 %.v42, 0
  br i1 %.v43, label %while.body14, label %while.end15
while.body14:
  %.v44 = load i32, i32* %i
  %t146 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i32 %.v44
  %.v45 = load i32, i32* %t146
  call void @putint(i32 %.v45)
  call void @putch(i32 32)
  %.v46 = load i32, i32* %i
  %.v47 = add i32 %.v46, 1
  store i32 %.v47, i32* %i
  br label %while.cond13
while.end15:
  call void @putch(i32 10)
  ret i32 0
}

