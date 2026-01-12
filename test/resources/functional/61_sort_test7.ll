@buf = global [2 x [100 x i32]] [[100 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [100 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @merge_sort(i32 %l, i32 %r) {
entry:
  %t0 = alloca i32
  store i32 %l, i32* %t0
  %t1 = alloca i32
  store i32 %r, i32* %t1
  %v1 = load i32, i32* %t0
  %v2 = add i32 %v1, 1
  %v3 = load i32, i32* %t1
  %v4 = icmp sge i32 %v2, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %if.then1, label %if.end2
if.then1:
  ret void
if.end2:
  %t8 = alloca i32
  %v7 = load i32, i32* %t0
  %v8 = load i32, i32* %t1
  %v9 = add i32 %v7, %v8
  %v10 = sdiv i32 %v9, 2
  store i32 %v10, i32* %t8
  %v11 = load i32, i32* %t0
  %v12 = load i32, i32* %t8
  call void @merge_sort(i32 %v11, i32 %v12)
  %v13 = load i32, i32* %t8
  %v14 = load i32, i32* %t1
  call void @merge_sort(i32 %v13, i32 %v14)
  %t17 = alloca i32
  %v15 = load i32, i32* %t0
  store i32 %v15, i32* %t17
  %t19 = alloca i32
  %v16 = load i32, i32* %t8
  store i32 %v16, i32* %t19
  %t21 = alloca i32
  %v17 = load i32, i32* %t0
  store i32 %v17, i32* %t21
  br label %while.cond3
while.cond3:
  %v18 = alloca i32
  store i32 0, i32* %v18
  %v19 = load i32, i32* %t17
  %v20 = load i32, i32* %t8
  %v21 = icmp slt i32 %v19, %v20
  %v22 = zext i1 %v21 to i32
  %v23 = icmp ne i32 %v22, 0
  br i1 %v23, label %land.rhs6, label %land.end7
while.body4:
  %v32 = load i32, i32* %t17
  %t38 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v32
  %v33 = load i32, i32* %t38
  %v34 = load i32, i32* %t19
  %t41 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v34
  %v35 = load i32, i32* %t41
  %v36 = icmp slt i32 %v33, %v35
  %v37 = zext i1 %v36 to i32
  %v38 = icmp ne i32 %v37, 0
  br i1 %v38, label %if.then8, label %if.else9
while.end5:
  br label %while.cond11
land.rhs6:
  %v24 = load i32, i32* %t19
  %v25 = load i32, i32* %t1
  %v26 = icmp slt i32 %v24, %v25
  %v27 = zext i1 %v26 to i32
  %v28 = icmp ne i32 %v27, 0
  %v29 = zext i1 %v28 to i32
  store i32 %v29, i32* %v18
  br label %land.end7
land.end7:
  %v30 = load i32, i32* %v18
  %v31 = icmp ne i32 %v30, 0
  br i1 %v31, label %while.body4, label %while.end5
if.then8:
  %v39 = load i32, i32* %t17
  %t47 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v39
  %v40 = load i32, i32* %t47
  %v41 = load i32, i32* %t21
  %t50 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %v41
  store i32 %v40, i32* %t50
  %v42 = load i32, i32* %t17
  %v43 = add i32 %v42, 1
  store i32 %v43, i32* %t17
  br label %if.end10
if.else9:
  %v44 = load i32, i32* %t19
  %t54 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v44
  %v45 = load i32, i32* %t54
  %v46 = load i32, i32* %t21
  %t57 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %v46
  store i32 %v45, i32* %t57
  %v47 = load i32, i32* %t19
  %v48 = add i32 %v47, 1
  store i32 %v48, i32* %t19
  br label %if.end10
if.end10:
  %v49 = load i32, i32* %t21
  %v50 = add i32 %v49, 1
  store i32 %v50, i32* %t21
  br label %while.cond3
while.cond11:
  %v51 = load i32, i32* %t17
  %v52 = load i32, i32* %t8
  %v53 = icmp slt i32 %v51, %v52
  %v54 = zext i1 %v53 to i32
  %v55 = icmp ne i32 %v54, 0
  br i1 %v55, label %while.body12, label %while.end13
while.body12:
  %v56 = load i32, i32* %t17
  %t68 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v56
  %v57 = load i32, i32* %t68
  %v58 = load i32, i32* %t21
  %t71 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %v58
  store i32 %v57, i32* %t71
  %v59 = load i32, i32* %t17
  %v60 = add i32 %v59, 1
  store i32 %v60, i32* %t17
  %v61 = load i32, i32* %t21
  %v62 = add i32 %v61, 1
  store i32 %v62, i32* %t21
  br label %while.cond11
while.end13:
  br label %while.cond14
while.cond14:
  %v63 = load i32, i32* %t19
  %v64 = load i32, i32* %t1
  %v65 = icmp slt i32 %v63, %v64
  %v66 = zext i1 %v65 to i32
  %v67 = icmp ne i32 %v66, 0
  br i1 %v67, label %while.body15, label %while.end16
while.body15:
  %v68 = load i32, i32* %t19
  %t82 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v68
  %v69 = load i32, i32* %t82
  %v70 = load i32, i32* %t21
  %t85 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %v70
  store i32 %v69, i32* %t85
  %v71 = load i32, i32* %t19
  %v72 = add i32 %v71, 1
  store i32 %v72, i32* %t19
  %v73 = load i32, i32* %t21
  %v74 = add i32 %v73, 1
  store i32 %v74, i32* %t21
  br label %while.cond14
while.end16:
  br label %while.cond17
while.cond17:
  %v75 = load i32, i32* %t0
  %v76 = load i32, i32* %t1
  %v77 = icmp slt i32 %v75, %v76
  %v78 = zext i1 %v77 to i32
  %v79 = icmp ne i32 %v78, 0
  br i1 %v79, label %while.body18, label %while.end19
while.body18:
  %v80 = load i32, i32* %t0
  %t96 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %v80
  %v81 = load i32, i32* %t96
  %v82 = load i32, i32* %t0
  %t99 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %v82
  store i32 %v81, i32* %t99
  %v83 = load i32, i32* %t0
  %v84 = add i32 %v83, 1
  store i32 %v84, i32* %t0
  br label %while.cond17
while.end19:
  ret void
}

define i32 @main() {
entry:
  %t102 = alloca i32
  %t103 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %v1 = getelementptr [100 x i32], [100 x i32]* %t103, i32 0, i32 0
  %v2 = call i32 @getarray(i32* %v1)
  store i32 %v2, i32* %t102
  %v3 = load i32, i32* %t102
  call void @merge_sort(i32 0, i32 %v3)
  %v4 = load i32, i32* %t102
  %t108 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
  %v5 = getelementptr [100 x i32], [100 x i32]* %t108, i32 0, i32 0
  call void @putarray(i32 %v4, i32* %v5)
  ret i32 0
}

