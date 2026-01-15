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

define i32 @bubblesort(i32* %arr) {
entry:
  %tmp = alloca i32
  %j = alloca i32
  %i = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = sub i32 %.v2, 1
  %.v4 = icmp slt i32 %.v1, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %.v7 = load i32, i32* %j
  %.v8 = load i32, i32* @n
  %.v9 = load i32, i32* %i
  %.v10 = sub i32 %.v8, %.v9
  %.v11 = sub i32 %.v10, 1
  %.v12 = icmp slt i32 %.v7, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body5, label %while.end6
while.body5:
  %.v15 = load i32, i32* %j
  %.v16 = load i32*, i32** %arr.addr
  %.v17 = getelementptr i32, i32* %.v16, i32 %.v15
  %.v18 = load i32, i32* %.v17
  %.v19 = load i32, i32* %j
  %.v20 = add i32 %.v19, 1
  %.v21 = load i32*, i32** %arr.addr
  %.v22 = getelementptr i32, i32* %.v21, i32 %.v20
  %.v23 = load i32, i32* %.v22
  %.v24 = icmp sgt i32 %.v18, %.v23
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %if.then7, label %if.end8
while.end6:
  %.v46 = load i32, i32* %i
  %.v47 = add i32 %.v46, 1
  store i32 %.v47, i32* %i
  br label %while.cond1
if.then7:
  %.v27 = load i32, i32* %j
  %.v28 = add i32 %.v27, 1
  %.v29 = load i32*, i32** %arr.addr
  %.v30 = getelementptr i32, i32* %.v29, i32 %.v28
  %.v31 = load i32, i32* %.v30
  store i32 %.v31, i32* %tmp
  %.v32 = load i32, i32* %j
  %.v33 = load i32*, i32** %arr.addr
  %.v34 = getelementptr i32, i32* %.v33, i32 %.v32
  %.v35 = load i32, i32* %.v34
  %.v36 = load i32, i32* %j
  %.v37 = add i32 %.v36, 1
  %.v38 = load i32*, i32** %arr.addr
  %.v39 = getelementptr i32, i32* %.v38, i32 %.v37
  store i32 %.v35, i32* %.v39
  %.v40 = load i32, i32* %tmp
  %.v41 = load i32, i32* %j
  %.v42 = load i32*, i32** %arr.addr
  %.v43 = getelementptr i32, i32* %.v42, i32 %.v41
  store i32 %.v40, i32* %.v43
  br label %if.end8
if.end8:
  %.v44 = load i32, i32* %j
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %j
  br label %while.cond4
}

define i32 @insertsort(i32* %a) {
entry:
  %.v12 = alloca i32
  %j = alloca i32
  %temp = alloca i32
  %i = alloca i32
  %a.addr = alloca i32*
  store i32* %a, i32** %a.addr
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %a.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  store i32 %.v9, i32* %temp
  %.v10 = load i32, i32* %i
  %.v11 = sub i32 %.v10, 1
  store i32 %.v11, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  store i32 0, i32* %.v12
  %.v13 = load i32, i32* %j
  %.v14 = sub i32 0, 1
  %.v15 = icmp sgt i32 %.v13, %.v14
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %land.rhs7, label %land.end8
while.body5:
  %.v29 = load i32, i32* %j
  %.v30 = load i32*, i32** %a.addr
  %.v31 = getelementptr i32, i32* %.v30, i32 %.v29
  %.v32 = load i32, i32* %.v31
  %.v33 = load i32, i32* %j
  %.v34 = add i32 %.v33, 1
  %.v35 = load i32*, i32** %a.addr
  %.v36 = getelementptr i32, i32* %.v35, i32 %.v34
  store i32 %.v32, i32* %.v36
  %.v37 = load i32, i32* %j
  %.v38 = sub i32 %.v37, 1
  store i32 %.v38, i32* %j
  br label %while.cond4
while.end6:
  %.v39 = load i32, i32* %temp
  %.v40 = load i32, i32* %j
  %.v41 = add i32 %.v40, 1
  %.v42 = load i32*, i32** %a.addr
  %.v43 = getelementptr i32, i32* %.v42, i32 %.v41
  store i32 %.v39, i32* %.v43
  %.v44 = load i32, i32* %i
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %i
  br label %while.cond1
land.rhs7:
  %.v18 = load i32, i32* %temp
  %.v19 = load i32, i32* %j
  %.v20 = load i32*, i32** %a.addr
  %.v21 = getelementptr i32, i32* %.v20, i32 %.v19
  %.v22 = load i32, i32* %.v21
  %.v23 = icmp slt i32 %.v18, %.v22
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  %.v26 = zext i1 %.v25 to i32
  store i32 %.v26, i32* %.v12
  br label %land.end8
land.end8:
  %.v27 = load i32, i32* %.v12
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %while.body5, label %while.end6
}

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

define i32 @getMid(i32* %arr) {
entry:
  %mid = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  %.v1 = load i32, i32* @n
  %.v2 = srem i32 %.v1, 2
  %.v3 = icmp eq i32 %.v2, 0
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.else2
if.then1:
  %.v6 = load i32, i32* @n
  %.v7 = sdiv i32 %.v6, 2
  store i32 %.v7, i32* %mid
  %.v8 = load i32, i32* %mid
  %.v9 = load i32*, i32** %arr.addr
  %.v10 = getelementptr i32, i32* %.v9, i32 %.v8
  %.v11 = load i32, i32* %.v10
  %.v12 = load i32, i32* %mid
  %.v13 = sub i32 %.v12, 1
  %.v14 = load i32*, i32** %arr.addr
  %.v15 = getelementptr i32, i32* %.v14, i32 %.v13
  %.v16 = load i32, i32* %.v15
  %.v17 = add i32 %.v11, %.v16
  %.v18 = sdiv i32 %.v17, 2
  ret i32 %.v18
if.else2:
  %.v19 = load i32, i32* @n
  %.v20 = sdiv i32 %.v19, 2
  store i32 %.v20, i32* %mid
  %.v21 = load i32, i32* %mid
  %.v22 = load i32*, i32** %arr.addr
  %.v23 = getelementptr i32, i32* %.v22, i32 %.v21
  %.v24 = load i32, i32* %.v23
  ret i32 %.v24
if.end3:
  ret i32 0
}

define i32 @getMost(i32* %arr) {
entry:
  %num = alloca i32
  %number = alloca i32
  %max = alloca i32
  %i = alloca i32
  %count = alloca [1000 x i32]
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 1000
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %i
  %t217 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i32 %.v5
  store i32 0, i32* %t217
  %.v6 = load i32, i32* %i
  %.v7 = add i32 %.v6, 1
  store i32 %.v7, i32* %i
  br label %while.cond1
while.end3:
  store i32 0, i32* %i
  store i32 0, i32* %max
  br label %while.cond4
while.cond4:
  %.v8 = load i32, i32* %i
  %.v9 = load i32, i32* @n
  %.v10 = icmp slt i32 %.v8, %.v9
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %while.body5, label %while.end6
while.body5:
  %.v13 = load i32, i32* %i
  %.v14 = load i32*, i32** %arr.addr
  %.v15 = getelementptr i32, i32* %.v14, i32 %.v13
  %.v16 = load i32, i32* %.v15
  store i32 %.v16, i32* %num
  %.v17 = load i32, i32* %num
  %t230 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i32 %.v17
  %.v18 = load i32, i32* %t230
  %.v19 = add i32 %.v18, 1
  %.v20 = load i32, i32* %num
  %t234 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i32 %.v20
  store i32 %.v19, i32* %t234
  %.v21 = load i32, i32* %num
  %t236 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i32 %.v21
  %.v22 = load i32, i32* %t236
  %.v23 = load i32, i32* %max
  %.v24 = icmp sgt i32 %.v22, %.v23
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %if.then7, label %if.end8
while.end6:
  %.v32 = load i32, i32* %number
  ret i32 %.v32
if.then7:
  %.v27 = load i32, i32* %num
  %t243 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i32 %.v27
  %.v28 = load i32, i32* %t243
  store i32 %.v28, i32* %max
  %.v29 = load i32, i32* %num
  store i32 %.v29, i32* %number
  br label %if.end8
if.end8:
  %.v30 = load i32, i32* %i
  %.v31 = add i32 %.v30, 1
  store i32 %.v31, i32* %i
  br label %while.cond4
}

define i32 @revert(i32* %arr) {
entry:
  %j = alloca i32
  %i = alloca i32
  %temp = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 0, i32* %i
  store i32 0, i32* %j
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %j
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %arr.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  store i32 %.v9, i32* %temp
  %.v10 = load i32, i32* %j
  %.v11 = load i32*, i32** %arr.addr
  %.v12 = getelementptr i32, i32* %.v11, i32 %.v10
  %.v13 = load i32, i32* %.v12
  %.v14 = load i32, i32* %i
  %.v15 = load i32*, i32** %arr.addr
  %.v16 = getelementptr i32, i32* %.v15, i32 %.v14
  store i32 %.v13, i32* %.v16
  %.v17 = load i32, i32* %temp
  %.v18 = load i32, i32* %j
  %.v19 = load i32*, i32** %arr.addr
  %.v20 = getelementptr i32, i32* %.v19, i32 %.v18
  store i32 %.v17, i32* %.v20
  %.v21 = load i32, i32* %i
  %.v22 = add i32 %.v21, 1
  store i32 %.v22, i32* %i
  %.v23 = load i32, i32* %j
  %.v24 = sub i32 %.v23, 1
  store i32 %.v24, i32* %j
  br label %while.cond1
while.end3:
  ret i32 0
}

define i32 @arrCopy(i32* %src, i32* %target) {
entry:
  %i = alloca i32
  %target.addr = alloca i32*
  %src.addr = alloca i32*
  store i32* %src, i32** %src.addr
  store i32* %target, i32** %target.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = load i32*, i32** %src.addr
  %.v8 = getelementptr i32, i32* %.v7, i32 %.v6
  %.v9 = load i32, i32* %.v8
  %.v10 = load i32, i32* %i
  %.v11 = load i32*, i32** %target.addr
  %.v12 = getelementptr i32, i32* %.v11, i32 %.v10
  store i32 %.v9, i32* %.v12
  %.v13 = load i32, i32* %i
  %.v14 = add i32 %.v13, 1
  store i32 %.v14, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

define i32 @calSum(i32* %arr, i32 %stride) {
entry:
  %i = alloca i32
  %sum = alloca i32
  %stride.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 %stride, i32* %stride.addr
  store i32 0, i32* %sum
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %sum
  %.v7 = load i32, i32* %i
  %.v8 = load i32*, i32** %arr.addr
  %.v9 = getelementptr i32, i32* %.v8, i32 %.v7
  %.v10 = load i32, i32* %.v9
  %.v11 = add i32 %.v6, %.v10
  store i32 %.v11, i32* %sum
  %.v12 = load i32, i32* %i
  %.v13 = load i32, i32* %stride.addr
  %.v14 = srem i32 %.v12, %.v13
  %.v15 = load i32, i32* %stride.addr
  %.v16 = sub i32 %.v15, 1
  %.v17 = icmp ne i32 %.v14, %.v16
  %.v18 = zext i1 %.v17 to i32
  %.v19 = icmp ne i32 %.v18, 0
  br i1 %.v19, label %if.then4, label %if.else5
while.end3:
  ret i32 0
if.then4:
  %.v20 = load i32, i32* %i
  %.v21 = load i32*, i32** %arr.addr
  %.v22 = getelementptr i32, i32* %.v21, i32 %.v20
  store i32 0, i32* %.v22
  br label %if.end6
if.else5:
  %.v23 = load i32, i32* %sum
  %.v24 = load i32, i32* %i
  %.v25 = load i32*, i32** %arr.addr
  %.v26 = getelementptr i32, i32* %.v25, i32 %.v24
  store i32 %.v23, i32* %.v26
  store i32 0, i32* %sum
  br label %if.end6
if.end6:
  %.v27 = load i32, i32* %i
  %.v28 = add i32 %.v27, 1
  store i32 %.v28, i32* %i
  br label %while.cond1
}

define i32 @avgPooling(i32* %arr, i32 %stride) {
entry:
  %lastnum = alloca i32
  %i = alloca i32
  %sum = alloca i32
  %stride.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 %stride, i32* %stride.addr
  store i32 0, i32* %i
  store i32 0, i32* %sum
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* @n
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = load i32, i32* %stride.addr
  %.v8 = sub i32 %.v7, 1
  %.v9 = icmp slt i32 %.v6, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then4, label %if.else5
while.end3:
  %.v58 = load i32, i32* @n
  %.v59 = load i32, i32* %stride.addr
  %.v60 = sub i32 %.v58, %.v59
  %.v61 = add i32 %.v60, 1
  store i32 %.v61, i32* %i
  br label %while.cond10
if.then4:
  %.v12 = load i32, i32* %sum
  %.v13 = load i32, i32* %i
  %.v14 = load i32*, i32** %arr.addr
  %.v15 = getelementptr i32, i32* %.v14, i32 %.v13
  %.v16 = load i32, i32* %.v15
  %.v17 = add i32 %.v12, %.v16
  store i32 %.v17, i32* %sum
  br label %if.end6
if.else5:
  %.v18 = load i32, i32* %i
  %.v19 = load i32, i32* %stride.addr
  %.v20 = sub i32 %.v19, 1
  %.v21 = icmp eq i32 %.v18, %.v20
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %if.then7, label %if.else8
if.end6:
  %.v56 = load i32, i32* %i
  %.v57 = add i32 %.v56, 1
  store i32 %.v57, i32* %i
  br label %while.cond1
if.then7:
  %.v24 = load i32*, i32** %arr.addr
  %.v25 = getelementptr i32, i32* %.v24, i32 0
  %.v26 = load i32, i32* %.v25
  store i32 %.v26, i32* %lastnum
  %.v27 = load i32, i32* %sum
  %.v28 = load i32, i32* %stride.addr
  %.v29 = sdiv i32 %.v27, %.v28
  %.v30 = load i32*, i32** %arr.addr
  %.v31 = getelementptr i32, i32* %.v30, i32 0
  store i32 %.v29, i32* %.v31
  br label %if.end9
if.else8:
  %.v32 = load i32, i32* %sum
  %.v33 = load i32, i32* %i
  %.v34 = load i32*, i32** %arr.addr
  %.v35 = getelementptr i32, i32* %.v34, i32 %.v33
  %.v36 = load i32, i32* %.v35
  %.v37 = add i32 %.v32, %.v36
  %.v38 = load i32, i32* %lastnum
  %.v39 = sub i32 %.v37, %.v38
  store i32 %.v39, i32* %sum
  %.v40 = load i32, i32* %i
  %.v41 = load i32, i32* %stride.addr
  %.v42 = sub i32 %.v40, %.v41
  %.v43 = add i32 %.v42, 1
  %.v44 = load i32*, i32** %arr.addr
  %.v45 = getelementptr i32, i32* %.v44, i32 %.v43
  %.v46 = load i32, i32* %.v45
  store i32 %.v46, i32* %lastnum
  %.v47 = load i32, i32* %sum
  %.v48 = load i32, i32* %stride.addr
  %.v49 = sdiv i32 %.v47, %.v48
  %.v50 = load i32, i32* %i
  %.v51 = load i32, i32* %stride.addr
  %.v52 = sub i32 %.v50, %.v51
  %.v53 = add i32 %.v52, 1
  %.v54 = load i32*, i32** %arr.addr
  %.v55 = getelementptr i32, i32* %.v54, i32 %.v53
  store i32 %.v49, i32* %.v55
  br label %if.end9
if.end9:
  br label %if.end6
while.cond10:
  %.v62 = load i32, i32* %i
  %.v63 = load i32, i32* @n
  %.v64 = icmp slt i32 %.v62, %.v63
  %.v65 = zext i1 %.v64 to i32
  %.v66 = icmp ne i32 %.v65, 0
  br i1 %.v66, label %while.body11, label %while.end12
while.body11:
  %.v67 = load i32, i32* %i
  %.v68 = load i32*, i32** %arr.addr
  %.v69 = getelementptr i32, i32* %.v68, i32 %.v67
  store i32 0, i32* %.v69
  %.v70 = load i32, i32* %i
  %.v71 = add i32 %.v70, 1
  store i32 %.v71, i32* %i
  br label %while.cond10
while.end12:
  ret i32 0
}

define i32 @main() {
entry:
  %i = alloca i32
  %t = alloca i32
  %result = alloca [32 x i32]
  %arr = alloca [32 x i32]
  store i32 32, i32* @n
  %t386 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 0
  store i32 7, i32* %t386
  %t387 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 1
  store i32 23, i32* %t387
  %t388 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 2
  store i32 89, i32* %t388
  %t389 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 3
  store i32 26, i32* %t389
  %t390 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 4
  store i32 282, i32* %t390
  %t391 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 5
  store i32 254, i32* %t391
  %t392 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 6
  store i32 27, i32* %t392
  %t393 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 7
  store i32 5, i32* %t393
  %t394 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 8
  store i32 83, i32* %t394
  %t395 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 9
  store i32 273, i32* %t395
  %t396 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 10
  store i32 574, i32* %t396
  %t397 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 11
  store i32 905, i32* %t397
  %t398 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 12
  store i32 354, i32* %t398
  %t399 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 13
  store i32 657, i32* %t399
  %t400 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 14
  store i32 935, i32* %t400
  %t401 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 15
  store i32 264, i32* %t401
  %t402 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 16
  store i32 639, i32* %t402
  %t403 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 17
  store i32 459, i32* %t403
  %t404 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 18
  store i32 29, i32* %t404
  %t405 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 19
  store i32 68, i32* %t405
  %t406 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 20
  store i32 929, i32* %t406
  %t407 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 21
  store i32 756, i32* %t407
  %t408 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 22
  store i32 452, i32* %t408
  %t409 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 23
  store i32 279, i32* %t409
  %t410 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 24
  store i32 58, i32* %t410
  %t411 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 25
  store i32 87, i32* %t411
  %t412 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 26
  store i32 96, i32* %t412
  %t413 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 27
  store i32 36, i32* %t413
  %t414 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 28
  store i32 39, i32* %t414
  %t415 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 29
  store i32 28, i32* %t415
  %t416 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 30
  store i32 1, i32* %t416
  %t417 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i32 31
  store i32 290, i32* %t417
  %.v1 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %.v2 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v3 = call i32 @arrCopy(i32* %.v1, i32* %.v2)
  store i32 %.v3, i32* %t
  %.v4 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v5 = call i32 @revert(i32* %.v4)
  store i32 %.v5, i32* %t
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v6 = load i32, i32* %i
  %.v7 = icmp slt i32 %.v6, 32
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body2, label %while.end3
while.body2:
  %.v10 = load i32, i32* %i
  %t428 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v10
  %.v11 = load i32, i32* %t428
  store i32 %.v11, i32* %t
  %.v12 = load i32, i32* %t
  call void @putint(i32 %.v12)
  %.v13 = load i32, i32* %i
  %.v14 = add i32 %.v13, 1
  store i32 %.v14, i32* %i
  br label %while.cond1
while.end3:
  %.v15 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v16 = call i32 @bubblesort(i32* %.v15)
  store i32 %.v16, i32* %t
  store i32 0, i32* %i
  br label %while.cond4
while.cond4:
  %.v17 = load i32, i32* %i
  %.v18 = icmp slt i32 %.v17, 32
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %while.body5, label %while.end6
while.body5:
  %.v21 = load i32, i32* %i
  %t440 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v21
  %.v22 = load i32, i32* %t440
  store i32 %.v22, i32* %t
  %.v23 = load i32, i32* %t
  call void @putint(i32 %.v23)
  %.v24 = load i32, i32* %i
  %.v25 = add i32 %.v24, 1
  store i32 %.v25, i32* %i
  br label %while.cond4
while.end6:
  %.v26 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v27 = call i32 @getMid(i32* %.v26)
  store i32 %.v27, i32* %t
  %.v28 = load i32, i32* %t
  call void @putint(i32 %.v28)
  %.v29 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v30 = call i32 @getMost(i32* %.v29)
  store i32 %.v30, i32* %t
  %.v31 = load i32, i32* %t
  call void @putint(i32 %.v31)
  %.v32 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %.v33 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v34 = call i32 @arrCopy(i32* %.v32, i32* %.v33)
  store i32 %.v34, i32* %t
  %.v35 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v36 = call i32 @bubblesort(i32* %.v35)
  store i32 %.v36, i32* %t
  store i32 0, i32* %i
  br label %while.cond7
while.cond7:
  %.v37 = load i32, i32* %i
  %.v38 = icmp slt i32 %.v37, 32
  %.v39 = zext i1 %.v38 to i32
  %.v40 = icmp ne i32 %.v39, 0
  br i1 %.v40, label %while.body8, label %while.end9
while.body8:
  %.v41 = load i32, i32* %i
  %t461 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v41
  %.v42 = load i32, i32* %t461
  store i32 %.v42, i32* %t
  %.v43 = load i32, i32* %t
  call void @putint(i32 %.v43)
  %.v44 = load i32, i32* %i
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %i
  br label %while.cond7
while.end9:
  %.v46 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %.v47 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v48 = call i32 @arrCopy(i32* %.v46, i32* %.v47)
  store i32 %.v48, i32* %t
  %.v49 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v50 = call i32 @insertsort(i32* %.v49)
  store i32 %.v50, i32* %t
  store i32 0, i32* %i
  br label %while.cond10
while.cond10:
  %.v51 = load i32, i32* %i
  %.v52 = icmp slt i32 %.v51, 32
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %while.body11, label %while.end12
while.body11:
  %.v55 = load i32, i32* %i
  %t476 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v55
  %.v56 = load i32, i32* %t476
  store i32 %.v56, i32* %t
  %.v57 = load i32, i32* %t
  call void @putint(i32 %.v57)
  %.v58 = load i32, i32* %i
  %.v59 = add i32 %.v58, 1
  store i32 %.v59, i32* %i
  br label %while.cond10
while.end12:
  %.v60 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %.v61 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v62 = call i32 @arrCopy(i32* %.v60, i32* %.v61)
  store i32 %.v62, i32* %t
  store i32 0, i32* %i
  store i32 31, i32* %t
  %.v63 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v64 = load i32, i32* %i
  %.v65 = load i32, i32* %t
  %.v66 = call i32 @QuickSort(i32* %.v63, i32 %.v64, i32 %.v65)
  store i32 %.v66, i32* %t
  br label %while.cond13
while.cond13:
  %.v67 = load i32, i32* %i
  %.v68 = icmp slt i32 %.v67, 32
  %.v69 = zext i1 %.v68 to i32
  %.v70 = icmp ne i32 %.v69, 0
  br i1 %.v70, label %while.body14, label %while.end15
while.body14:
  %.v71 = load i32, i32* %i
  %t493 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v71
  %.v72 = load i32, i32* %t493
  store i32 %.v72, i32* %t
  %.v73 = load i32, i32* %t
  call void @putint(i32 %.v73)
  %.v74 = load i32, i32* %i
  %.v75 = add i32 %.v74, 1
  store i32 %.v75, i32* %i
  br label %while.cond13
while.end15:
  %.v76 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %.v77 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v78 = call i32 @arrCopy(i32* %.v76, i32* %.v77)
  store i32 %.v78, i32* %t
  %.v79 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v80 = call i32 @calSum(i32* %.v79, i32 4)
  store i32 %.v80, i32* %t
  store i32 0, i32* %i
  br label %while.cond16
while.cond16:
  %.v81 = load i32, i32* %i
  %.v82 = icmp slt i32 %.v81, 32
  %.v83 = zext i1 %.v82 to i32
  %.v84 = icmp ne i32 %.v83, 0
  br i1 %.v84, label %while.body17, label %while.end18
while.body17:
  %.v85 = load i32, i32* %i
  %t508 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v85
  %.v86 = load i32, i32* %t508
  store i32 %.v86, i32* %t
  %.v87 = load i32, i32* %t
  call void @putint(i32 %.v87)
  %.v88 = load i32, i32* %i
  %.v89 = add i32 %.v88, 1
  store i32 %.v89, i32* %i
  br label %while.cond16
while.end18:
  %.v90 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 0
  %.v91 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v92 = call i32 @arrCopy(i32* %.v90, i32* %.v91)
  store i32 %.v92, i32* %t
  %.v93 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 0
  %.v94 = call i32 @avgPooling(i32* %.v93, i32 3)
  store i32 %.v94, i32* %t
  store i32 0, i32* %i
  br label %while.cond19
while.cond19:
  %.v95 = load i32, i32* %i
  %.v96 = icmp slt i32 %.v95, 32
  %.v97 = zext i1 %.v96 to i32
  %.v98 = icmp ne i32 %.v97, 0
  br i1 %.v98, label %while.body20, label %while.end21
while.body20:
  %.v99 = load i32, i32* %i
  %t523 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i32 %.v99
  %.v100 = load i32, i32* %t523
  store i32 %.v100, i32* %t
  %.v101 = load i32, i32* %t
  call void @putint(i32 %.v101)
  %.v102 = load i32, i32* %i
  %.v103 = add i32 %.v102, 1
  store i32 %.v103, i32* %i
  br label %while.cond19
while.end21:
  ret i32 0
}

