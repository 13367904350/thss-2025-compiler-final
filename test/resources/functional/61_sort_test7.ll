@buf = global [2 x [100 x i32]] zeroinitializer
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

define void @merge_sort(i32 %l, i32 %r) {
entry:
  %.v18 = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %mid = alloca i32
  %r.addr = alloca i32
  %l.addr = alloca i32
  store i32 %l, i32* %l.addr
  store i32 %r, i32* %r.addr
  %.v1 = load i32, i32* %l.addr
  %.v2 = add i32 %.v1, 1
  %.v3 = load i32, i32* %r.addr
  %.v4 = icmp sge i32 %.v2, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %if.then1, label %if.end2
if.then1:
  ret void
if.end2:
  %.v7 = load i32, i32* %l.addr
  %.v8 = load i32, i32* %r.addr
  %.v9 = add i32 %.v7, %.v8
  %.v10 = sdiv i32 %.v9, 2
  store i32 %.v10, i32* %mid
  %.v11 = load i32, i32* %l.addr
  %.v12 = load i32, i32* %mid
  call void @merge_sort(i32 %.v11, i32 %.v12)
  %.v13 = load i32, i32* %mid
  %.v14 = load i32, i32* %r.addr
  call void @merge_sort(i32 %.v13, i32 %.v14)
  %.v15 = load i32, i32* %l.addr
  store i32 %.v15, i32* %i
  %.v16 = load i32, i32* %mid
  store i32 %.v16, i32* %j
  %.v17 = load i32, i32* %l.addr
  store i32 %.v17, i32* %k
  br label %while.cond3
while.cond3:
  store i32 0, i32* %.v18
  %.v19 = load i32, i32* %i
  %.v20 = load i32, i32* %mid
  %.v21 = icmp slt i32 %.v19, %.v20
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %land.rhs6, label %land.end7
while.body4:
  %t30 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v32 = load i32, i32* %i
  %t32 = getelementptr [100 x i32], [100 x i32]* %t30, i64 0, i32 %.v32
  %.v33 = load i32, i32* %t32
  %t34 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v34 = load i32, i32* %j
  %t36 = getelementptr [100 x i32], [100 x i32]* %t34, i64 0, i32 %.v34
  %.v35 = load i32, i32* %t36
  %.v36 = icmp slt i32 %.v33, %.v35
  %.v37 = zext i1 %.v36 to i32
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %if.then8, label %if.else9
while.end5:
  br label %while.cond11
land.rhs6:
  %.v24 = load i32, i32* %j
  %.v25 = load i32, i32* %r.addr
  %.v26 = icmp slt i32 %.v24, %.v25
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  %.v29 = zext i1 %.v28 to i32
  store i32 %.v29, i32* %.v18
  br label %land.end7
land.end7:
  %.v30 = load i32, i32* %.v18
  %.v31 = icmp ne i32 %.v30, 0
  br i1 %.v31, label %while.body4, label %while.end5
if.then8:
  %t41 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v39 = load i32, i32* %i
  %t43 = getelementptr [100 x i32], [100 x i32]* %t41, i64 0, i32 %.v39
  %.v40 = load i32, i32* %t43
  %t45 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 1
  %.v41 = load i32, i32* %k
  %t47 = getelementptr [100 x i32], [100 x i32]* %t45, i64 0, i32 %.v41
  store i32 %.v40, i32* %t47
  %.v42 = load i32, i32* %i
  %.v43 = add i32 %.v42, 1
  store i32 %.v43, i32* %i
  br label %if.end10
if.else9:
  %t50 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v44 = load i32, i32* %j
  %t52 = getelementptr [100 x i32], [100 x i32]* %t50, i64 0, i32 %.v44
  %.v45 = load i32, i32* %t52
  %t54 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 1
  %.v46 = load i32, i32* %k
  %t56 = getelementptr [100 x i32], [100 x i32]* %t54, i64 0, i32 %.v46
  store i32 %.v45, i32* %t56
  %.v47 = load i32, i32* %j
  %.v48 = add i32 %.v47, 1
  store i32 %.v48, i32* %j
  br label %if.end10
if.end10:
  %.v49 = load i32, i32* %k
  %.v50 = add i32 %.v49, 1
  store i32 %.v50, i32* %k
  br label %while.cond3
while.cond11:
  %.v51 = load i32, i32* %i
  %.v52 = load i32, i32* %mid
  %.v53 = icmp slt i32 %.v51, %.v52
  %.v54 = zext i1 %.v53 to i32
  %.v55 = icmp ne i32 %.v54, 0
  br i1 %.v55, label %while.body12, label %while.end13
while.body12:
  %t66 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v56 = load i32, i32* %i
  %t68 = getelementptr [100 x i32], [100 x i32]* %t66, i64 0, i32 %.v56
  %.v57 = load i32, i32* %t68
  %t70 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 1
  %.v58 = load i32, i32* %k
  %t72 = getelementptr [100 x i32], [100 x i32]* %t70, i64 0, i32 %.v58
  store i32 %.v57, i32* %t72
  %.v59 = load i32, i32* %i
  %.v60 = add i32 %.v59, 1
  store i32 %.v60, i32* %i
  %.v61 = load i32, i32* %k
  %.v62 = add i32 %.v61, 1
  store i32 %.v62, i32* %k
  br label %while.cond11
while.end13:
  br label %while.cond14
while.cond14:
  %.v63 = load i32, i32* %j
  %.v64 = load i32, i32* %r.addr
  %.v65 = icmp slt i32 %.v63, %.v64
  %.v66 = zext i1 %.v65 to i32
  %.v67 = icmp ne i32 %.v66, 0
  br i1 %.v67, label %while.body15, label %while.end16
while.body15:
  %t82 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v68 = load i32, i32* %j
  %t84 = getelementptr [100 x i32], [100 x i32]* %t82, i64 0, i32 %.v68
  %.v69 = load i32, i32* %t84
  %t86 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 1
  %.v70 = load i32, i32* %k
  %t88 = getelementptr [100 x i32], [100 x i32]* %t86, i64 0, i32 %.v70
  store i32 %.v69, i32* %t88
  %.v71 = load i32, i32* %j
  %.v72 = add i32 %.v71, 1
  store i32 %.v72, i32* %j
  %.v73 = load i32, i32* %k
  %.v74 = add i32 %.v73, 1
  store i32 %.v74, i32* %k
  br label %while.cond14
while.end16:
  br label %while.cond17
while.cond17:
  %.v75 = load i32, i32* %l.addr
  %.v76 = load i32, i32* %r.addr
  %.v77 = icmp slt i32 %.v75, %.v76
  %.v78 = zext i1 %.v77 to i32
  %.v79 = icmp ne i32 %.v78, 0
  br i1 %.v79, label %while.body18, label %while.end19
while.body18:
  %t98 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 1
  %.v80 = load i32, i32* %l.addr
  %t100 = getelementptr [100 x i32], [100 x i32]* %t98, i64 0, i32 %.v80
  %.v81 = load i32, i32* %t100
  %t102 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v82 = load i32, i32* %l.addr
  %t104 = getelementptr [100 x i32], [100 x i32]* %t102, i64 0, i32 %.v82
  store i32 %.v81, i32* %t104
  %.v83 = load i32, i32* %l.addr
  %.v84 = add i32 %.v83, 1
  store i32 %.v84, i32* %l.addr
  br label %while.cond17
while.end19:
  ret void
}

define i32 @main() {
entry:
  %n = alloca i32
  %t107 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v1 = getelementptr [100 x i32], [100 x i32]* %t107, i64 0, i64 0
  %.v2 = call i32 @getarray(i32* %.v1)
  store i32 %.v2, i32* %n
  %.v3 = load i32, i32* %n
  call void @merge_sort(i32 0, i32 %.v3)
  %.v4 = load i32, i32* %n
  %t112 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i64 0, i32 0
  %.v5 = getelementptr [100 x i32], [100 x i32]* %t112, i64 0, i64 0
  call void @putarray(i32 %.v4, i32* %.v5)
  ret i32 0
}

