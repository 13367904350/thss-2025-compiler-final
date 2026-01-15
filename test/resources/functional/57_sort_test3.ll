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

define i32 @QuickSort(i32* %arr, i32 %low, i32 %high) {
entry:
  %tmp = alloca i32
  %.v51 = alloca i32
  %.v17 = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %high.addr = alloca i32
  %low.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 %low, i32* %low.addr
  store i32 %high, i32* %high.addr
  %.v1 = load i32, i32* %low.addr
  %.v2 = load i32, i32* %high.addr
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.end2
if.then1:
  %.v6 = load i32, i32* %low.addr
  store i32 %.v6, i32* %i
  %.v7 = load i32, i32* %high.addr
  store i32 %.v7, i32* %j
  %.v8 = load i32, i32* %low.addr
  %.v9 = load i32*, i32** %arr.addr
  %.v10 = getelementptr i32, i32* %.v9, i32 %.v8
  %.v11 = load i32, i32* %.v10
  store i32 %.v11, i32* %k
  br label %while.cond3
if.end2:
  ret i32 0
while.cond3:
  %.v12 = load i32, i32* %i
  %.v13 = load i32, i32* %j
  %.v14 = icmp slt i32 %.v12, %.v13
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %while.body4, label %while.end5
while.body4:
  br label %while.cond6
while.end5:
  %.v84 = load i32, i32* %k
  %.v85 = load i32, i32* %i
  %.v86 = load i32*, i32** %arr.addr
  %.v87 = getelementptr i32, i32* %.v86, i32 %.v85
  store i32 %.v84, i32* %.v87
  %.v88 = load i32, i32* %i
  %.v89 = sub i32 %.v88, 1
  store i32 %.v89, i32* %tmp
  %.v90 = load i32*, i32** %arr.addr
  %.v91 = load i32, i32* %low.addr
  %.v92 = load i32, i32* %tmp
  %.v93 = call i32 @QuickSort(i32* %.v90, i32 %.v91, i32 %.v92)
  store i32 %.v93, i32* %tmp
  %.v94 = load i32, i32* %i
  %.v95 = add i32 %.v94, 1
  store i32 %.v95, i32* %tmp
  %.v96 = load i32*, i32** %arr.addr
  %.v97 = load i32, i32* %tmp
  %.v98 = load i32, i32* %high.addr
  %.v99 = call i32 @QuickSort(i32* %.v96, i32 %.v97, i32 %.v98)
  store i32 %.v99, i32* %tmp
  br label %if.end2
while.cond6:
  store i32 0, i32* %.v17
  %.v18 = load i32, i32* %i
  %.v19 = load i32, i32* %j
  %.v20 = icmp slt i32 %.v18, %.v19
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %land.rhs9, label %land.end10
while.body7:
  %.v35 = load i32, i32* %j
  %.v36 = sub i32 %.v35, 1
  store i32 %.v36, i32* %j
  br label %while.cond6
while.end8:
  %.v37 = load i32, i32* %i
  %.v38 = load i32, i32* %j
  %.v39 = icmp slt i32 %.v37, %.v38
  %.v40 = zext i1 %.v39 to i32
  %.v41 = icmp ne i32 %.v40, 0
  br i1 %.v41, label %if.then11, label %if.end12
land.rhs9:
  %.v23 = load i32, i32* %j
  %.v24 = load i32*, i32** %arr.addr
  %.v25 = getelementptr i32, i32* %.v24, i32 %.v23
  %.v26 = load i32, i32* %.v25
  %.v27 = load i32, i32* %k
  %.v28 = sub i32 %.v27, 1
  %.v29 = icmp sgt i32 %.v26, %.v28
  %.v30 = zext i1 %.v29 to i32
  %.v31 = icmp ne i32 %.v30, 0
  %.v32 = zext i1 %.v31 to i32
  store i32 %.v32, i32* %.v17
  br label %land.end10
land.end10:
  %.v33 = load i32, i32* %.v17
  %.v34 = icmp ne i32 %.v33, 0
  br i1 %.v34, label %while.body7, label %while.end8
if.then11:
  %.v42 = load i32, i32* %j
  %.v43 = load i32*, i32** %arr.addr
  %.v44 = getelementptr i32, i32* %.v43, i32 %.v42
  %.v45 = load i32, i32* %.v44
  %.v46 = load i32, i32* %i
  %.v47 = load i32*, i32** %arr.addr
  %.v48 = getelementptr i32, i32* %.v47, i32 %.v46
  store i32 %.v45, i32* %.v48
  %.v49 = load i32, i32* %i
  %.v50 = add i32 %.v49, 1
  store i32 %.v50, i32* %i
  br label %if.end12
if.end12:
  br label %while.cond13
while.cond13:
  store i32 0, i32* %.v51
  %.v52 = load i32, i32* %i
  %.v53 = load i32, i32* %j
  %.v54 = icmp slt i32 %.v52, %.v53
  %.v55 = zext i1 %.v54 to i32
  %.v56 = icmp ne i32 %.v55, 0
  br i1 %.v56, label %land.rhs16, label %land.end17
while.body14:
  %.v68 = load i32, i32* %i
  %.v69 = add i32 %.v68, 1
  store i32 %.v69, i32* %i
  br label %while.cond13
while.end15:
  %.v70 = load i32, i32* %i
  %.v71 = load i32, i32* %j
  %.v72 = icmp slt i32 %.v70, %.v71
  %.v73 = zext i1 %.v72 to i32
  %.v74 = icmp ne i32 %.v73, 0
  br i1 %.v74, label %if.then18, label %if.end19
land.rhs16:
  %.v57 = load i32, i32* %i
  %.v58 = load i32*, i32** %arr.addr
  %.v59 = getelementptr i32, i32* %.v58, i32 %.v57
  %.v60 = load i32, i32* %.v59
  %.v61 = load i32, i32* %k
  %.v62 = icmp slt i32 %.v60, %.v61
  %.v63 = zext i1 %.v62 to i32
  %.v64 = icmp ne i32 %.v63, 0
  %.v65 = zext i1 %.v64 to i32
  store i32 %.v65, i32* %.v51
  br label %land.end17
land.end17:
  %.v66 = load i32, i32* %.v51
  %.v67 = icmp ne i32 %.v66, 0
  br i1 %.v67, label %while.body14, label %while.end15
if.then18:
  %.v75 = load i32, i32* %i
  %.v76 = load i32*, i32** %arr.addr
  %.v77 = getelementptr i32, i32* %.v76, i32 %.v75
  %.v78 = load i32, i32* %.v77
  %.v79 = load i32, i32* %j
  %.v80 = load i32*, i32** %arr.addr
  %.v81 = getelementptr i32, i32* %.v80, i32 %.v79
  store i32 %.v78, i32* %.v81
  %.v82 = load i32, i32* %j
  %.v83 = sub i32 %.v82, 1
  store i32 %.v83, i32* %j
  br label %if.end19
if.end19:
  br label %while.cond3
}

define i32 @main() {
entry:
  %tmp.1 = alloca i32
  %tmp = alloca i32
  %i = alloca i32
  %a = alloca [10 x i32]
  store i32 10, i32* @n
  %t97 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 0
  store i32 4, i32* %t97
  %t98 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 1
  store i32 3, i32* %t98
  %t99 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 2
  store i32 9, i32* %t99
  %t100 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 3
  store i32 2, i32* %t100
  %t101 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 4
  store i32 0, i32* %t101
  %t102 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 5
  store i32 1, i32* %t102
  %t103 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 6
  store i32 6, i32* %t103
  %t104 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 7
  store i32 5, i32* %t104
  %t105 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 8
  store i32 7, i32* %t105
  %t106 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 9
  store i32 8, i32* %t106
  store i32 0, i32* %i
  store i32 9, i32* %tmp
  %.v1 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %.v2 = load i32, i32* %i
  %.v3 = load i32, i32* %tmp
  %.v4 = call i32 @QuickSort(i32* %.v1, i32 %.v2, i32 %.v3)
  store i32 %.v4, i32* %i
  br label %while.cond1
while.cond1:
  %.v5 = load i32, i32* %i
  %.v6 = load i32, i32* @n
  %.v7 = icmp slt i32 %.v5, %.v6
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body2, label %while.end3
while.body2:
  %.v10 = load i32, i32* %i
  %t117 = getelementptr [10 x i32], [10 x i32]* %a, i64 0, i32 %.v10
  %.v11 = load i32, i32* %t117
  store i32 %.v11, i32* %tmp.1
  %.v12 = load i32, i32* %tmp.1
  call void @putint(i32 %.v12)
  store i32 10, i32* %tmp.1
  %.v13 = load i32, i32* %tmp.1
  call void @putch(i32 %.v13)
  %.v14 = load i32, i32* %i
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

