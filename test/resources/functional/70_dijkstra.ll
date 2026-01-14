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

define void @Dijkstra() {
entry:
  %j.1 = alloca i32
  %.v23 = alloca i32
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
  %t5 = sext i32 1 to i64
  %.v6 = load i32, i32* %i
  %t7 = sext i32 %.v6 to i64
  %t8 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t5, i64 %t7
  %.v7 = load i32, i32* %t8
  %.v8 = load i32, i32* %i
  %t11 = sext i32 %.v8 to i64
  %t12 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t11
  store i32 %.v7, i32* %t12
  %.v9 = load i32, i32* %i
  %t14 = sext i32 %.v9 to i64
  %t15 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i64 %t14
  store i32 0, i32* %t15
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %i
  br label %while.cond1
while.end3:
  %t18 = sext i32 1 to i64
  %t19 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i64 %t18
  store i32 1, i32* %t19
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
  store i32 65535, i32* %min_num
  store i32 0, i32* %min_index
  store i32 1, i32* %k
  br label %while.cond7
while.end6:
  ret void
while.cond7:
  %.v18 = load i32, i32* %k
  %.v19 = load i32, i32* @n
  %.v20 = icmp sle i32 %.v18, %.v19
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %while.body8, label %while.end9
while.body8:
  store i32 0, i32* %.v23
  %.v24 = load i32, i32* %min_num
  %.v25 = load i32, i32* %k
  %t33 = sext i32 %.v25 to i64
  %t34 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t33
  %.v26 = load i32, i32* %t34
  %.v27 = icmp sgt i32 %.v24, %.v26
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %land.rhs12, label %land.end13
while.end9:
  %.v43 = load i32, i32* %min_index
  %t57 = sext i32 %.v43 to i64
  %t58 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i64 %t57
  store i32 1, i32* %t58
  store i32 1, i32* %j.1
  br label %while.cond14
if.then10:
  %.v38 = load i32, i32* %k
  %t50 = sext i32 %.v38 to i64
  %t51 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t50
  %.v39 = load i32, i32* %t51
  store i32 %.v39, i32* %min_num
  %.v40 = load i32, i32* %k
  store i32 %.v40, i32* %min_index
  br label %if.end11
if.end11:
  %.v41 = load i32, i32* %k
  %.v42 = add i32 %.v41, 1
  store i32 %.v42, i32* %k
  br label %while.cond7
land.rhs12:
  %.v30 = load i32, i32* %k
  %t40 = sext i32 %.v30 to i64
  %t41 = getelementptr [16 x i32], [16 x i32]* @book, i64 0, i64 %t40
  %.v31 = load i32, i32* %t41
  %.v32 = icmp eq i32 %.v31, 0
  %.v33 = zext i1 %.v32 to i32
  %.v34 = icmp ne i32 %.v33, 0
  %.v35 = zext i1 %.v34 to i32
  store i32 %.v35, i32* %.v23
  br label %land.end13
land.end13:
  %.v36 = load i32, i32* %.v23
  %.v37 = icmp ne i32 %.v36, 0
  br i1 %.v37, label %if.then10, label %if.end11
while.cond14:
  %.v44 = load i32, i32* %j.1
  %.v45 = load i32, i32* @n
  %.v46 = icmp sle i32 %.v44, %.v45
  %.v47 = zext i1 %.v46 to i32
  %.v48 = icmp ne i32 %.v47, 0
  br i1 %.v48, label %while.body15, label %while.end16
while.body15:
  %.v49 = load i32, i32* %min_index
  %t65 = sext i32 %.v49 to i64
  %.v50 = load i32, i32* %j.1
  %t67 = sext i32 %.v50 to i64
  %t68 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t65, i64 %t67
  %.v51 = load i32, i32* %t68
  %.v52 = icmp slt i32 %.v51, 65535
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %if.then17, label %if.end18
while.end16:
  %.v75 = load i32, i32* %i
  %.v76 = add i32 %.v75, 1
  store i32 %.v76, i32* %i
  br label %while.cond4
if.then17:
  %.v55 = load i32, i32* %j.1
  %t74 = sext i32 %.v55 to i64
  %t75 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t74
  %.v56 = load i32, i32* %t75
  %.v57 = load i32, i32* %min_index
  %t78 = sext i32 %.v57 to i64
  %t79 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t78
  %.v58 = load i32, i32* %t79
  %.v59 = load i32, i32* %min_index
  %t82 = sext i32 %.v59 to i64
  %.v60 = load i32, i32* %j.1
  %t84 = sext i32 %.v60 to i64
  %t85 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t82, i64 %t84
  %.v61 = load i32, i32* %t85
  %.v62 = add i32 %.v58, %.v61
  %.v63 = icmp sgt i32 %.v56, %.v62
  %.v64 = zext i1 %.v63 to i32
  %.v65 = icmp ne i32 %.v64, 0
  br i1 %.v65, label %if.then19, label %if.end20
if.end18:
  %.v73 = load i32, i32* %j.1
  %.v74 = add i32 %.v73, 1
  store i32 %.v74, i32* %j.1
  br label %while.cond14
if.then19:
  %.v66 = load i32, i32* %min_index
  %t92 = sext i32 %.v66 to i64
  %t93 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t92
  %.v67 = load i32, i32* %t93
  %.v68 = load i32, i32* %min_index
  %t96 = sext i32 %.v68 to i64
  %.v69 = load i32, i32* %j.1
  %t98 = sext i32 %.v69 to i64
  %t99 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t96, i64 %t98
  %.v70 = load i32, i32* %t99
  %.v71 = add i32 %.v67, %.v70
  %.v72 = load i32, i32* %j.1
  %t103 = sext i32 %.v72 to i64
  %t104 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t103
  store i32 %.v71, i32* %t104
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
  %.v24 = load i32, i32* %i
  %.v25 = add i32 %.v24, 1
  store i32 %.v25, i32* %i
  br label %while.cond1
if.then7:
  %.v18 = load i32, i32* %i
  %t127 = sext i32 %.v18 to i64
  %.v19 = load i32, i32* %j
  %t129 = sext i32 %.v19 to i64
  %t130 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t127, i64 %t129
  store i32 0, i32* %t130
  br label %if.end9
if.else8:
  %.v20 = load i32, i32* %i
  %t132 = sext i32 %.v20 to i64
  %.v21 = load i32, i32* %j
  %t134 = sext i32 %.v21 to i64
  %t135 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t132, i64 %t134
  store i32 65535, i32* %t135
  br label %if.end9
if.end9:
  %.v22 = load i32, i32* %j
  %.v23 = add i32 %.v22, 1
  store i32 %.v23, i32* %j
  br label %while.cond4
while.cond10:
  %.v26 = load i32, i32* %i
  %.v27 = load i32, i32* @m
  %.v28 = icmp sle i32 %.v26, %.v27
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %while.body11, label %while.end12
while.body11:
  %.v31 = call i32 @getint()
  store i32 %.v31, i32* %u
  %.v32 = call i32 @getint()
  store i32 %.v32, i32* %v
  %.v33 = call i32 @getint()
  %.v34 = load i32, i32* %u
  %t149 = sext i32 %.v34 to i64
  %.v35 = load i32, i32* %v
  %t151 = sext i32 %.v35 to i64
  %t152 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i64 0, i64 %t149, i64 %t151
  store i32 %.v33, i32* %t152
  %.v36 = load i32, i32* %i
  %.v37 = add i32 %.v36, 1
  store i32 %.v37, i32* %i
  br label %while.cond10
while.end12:
  call void @Dijkstra()
  store i32 1, i32* %i
  br label %while.cond13
while.cond13:
  %.v38 = load i32, i32* %i
  %.v39 = load i32, i32* @n
  %.v40 = icmp sle i32 %.v38, %.v39
  %.v41 = zext i1 %.v40 to i32
  %.v42 = icmp ne i32 %.v41, 0
  br i1 %.v42, label %while.body14, label %while.end15
while.body14:
  %.v43 = load i32, i32* %i
  %t161 = sext i32 %.v43 to i64
  %t162 = getelementptr [16 x i32], [16 x i32]* @dis, i64 0, i64 %t161
  %.v44 = load i32, i32* %t162
  call void @putint(i32 %.v44)
  call void @putch(i32 32)
  %.v45 = load i32, i32* %i
  %.v46 = add i32 %.v45, 1
  store i32 %.v46, i32* %i
  br label %while.cond13
while.end15:
  call void @putch(i32 10)
  ret i32 0
}

