@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @QuickSort(i32* %arr, i32 %low, i32 %high) {
entry:
  %t0 = alloca i32
  store i32 %low, i32* %t0
  %t1 = alloca i32
  store i32 %high, i32* %t1
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* %t1
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %if.then1, label %if.end2
if.then1:
  %t7 = alloca i32
  %v6 = load i32, i32* %t0
  store i32 %v6, i32* %t7
  %t9 = alloca i32
  %v7 = load i32, i32* %t1
  store i32 %v7, i32* %t9
  %t11 = alloca i32
  %v8 = load i32, i32* %t0
  %t13 = getelementptr i32, i32* %arr, i32 %v8
  %v9 = load i32, i32* %t13
  store i32 %v9, i32* %t11
  br label %while.cond3
if.end2:
  ret i32 0
while.cond3:
  %v10 = load i32, i32* %t7
  %v11 = load i32, i32* %t9
  %v12 = icmp slt i32 %v10, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %while.body4, label %while.end5
while.body4:
  br label %while.cond6
while.end5:
  %v70 = load i32, i32* %t11
  %v71 = load i32, i32* %t7
  %t83 = getelementptr i32, i32* %arr, i32 %v71
  store i32 %v70, i32* %t83
  %t84 = alloca i32
  %v72 = load i32, i32* %t7
  %v73 = sub i32 %v72, 1
  store i32 %v73, i32* %t84
  %v74 = load i32, i32* %t0
  %v75 = load i32, i32* %t84
  %v76 = call i32 @QuickSort(i32* %arr, i32 %v74, i32 %v75)
  store i32 %v76, i32* %t84
  %v77 = load i32, i32* %t7
  %v78 = add i32 %v77, 1
  store i32 %v78, i32* %t84
  %v79 = load i32, i32* %t84
  %v80 = load i32, i32* %t1
  %v81 = call i32 @QuickSort(i32* %arr, i32 %v79, i32 %v80)
  store i32 %v81, i32* %t84
  br label %if.end2
while.cond6:
  %v15 = alloca i32
  store i32 0, i32* %v15
  %v16 = load i32, i32* %t7
  %v17 = load i32, i32* %t9
  %v18 = icmp slt i32 %v16, %v17
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %land.rhs9, label %land.end10
while.body7:
  %v31 = load i32, i32* %t9
  %v32 = sub i32 %v31, 1
  store i32 %v32, i32* %t9
  br label %while.cond6
while.end8:
  %v33 = load i32, i32* %t7
  %v34 = load i32, i32* %t9
  %v35 = icmp slt i32 %v33, %v34
  %v36 = zext i1 %v35 to i32
  %v37 = icmp ne i32 %v36, 0
  br i1 %v37, label %if.then11, label %if.end12
land.rhs9:
  %v21 = load i32, i32* %t9
  %t27 = getelementptr i32, i32* %arr, i32 %v21
  %v22 = load i32, i32* %t27
  %v23 = load i32, i32* %t11
  %v24 = sub i32 %v23, 1
  %v25 = icmp sgt i32 %v22, %v24
  %v26 = zext i1 %v25 to i32
  %v27 = icmp ne i32 %v26, 0
  %v28 = zext i1 %v27 to i32
  store i32 %v28, i32* %v15
  br label %land.end10
land.end10:
  %v29 = load i32, i32* %v15
  %v30 = icmp ne i32 %v29, 0
  br i1 %v30, label %while.body7, label %while.end8
if.then11:
  %v38 = load i32, i32* %t9
  %t45 = getelementptr i32, i32* %arr, i32 %v38
  %v39 = load i32, i32* %t45
  %v40 = load i32, i32* %t7
  %t48 = getelementptr i32, i32* %arr, i32 %v40
  store i32 %v39, i32* %t48
  %v41 = load i32, i32* %t7
  %v42 = add i32 %v41, 1
  store i32 %v42, i32* %t7
  br label %if.end12
if.end12:
  br label %while.cond13
while.cond13:
  %v43 = alloca i32
  store i32 0, i32* %v43
  %v44 = load i32, i32* %t7
  %v45 = load i32, i32* %t9
  %v46 = icmp slt i32 %v44, %v45
  %v47 = zext i1 %v46 to i32
  %v48 = icmp ne i32 %v47, 0
  br i1 %v48, label %land.rhs16, label %land.end17
while.body14:
  %v58 = load i32, i32* %t7
  %v59 = add i32 %v58, 1
  store i32 %v59, i32* %t7
  br label %while.cond13
while.end15:
  %v60 = load i32, i32* %t7
  %v61 = load i32, i32* %t9
  %v62 = icmp slt i32 %v60, %v61
  %v63 = zext i1 %v62 to i32
  %v64 = icmp ne i32 %v63, 0
  br i1 %v64, label %if.then18, label %if.end19
land.rhs16:
  %v49 = load i32, i32* %t7
  %t58 = getelementptr i32, i32* %arr, i32 %v49
  %v50 = load i32, i32* %t58
  %v51 = load i32, i32* %t11
  %v52 = icmp slt i32 %v50, %v51
  %v53 = zext i1 %v52 to i32
  %v54 = icmp ne i32 %v53, 0
  %v55 = zext i1 %v54 to i32
  store i32 %v55, i32* %v43
  br label %land.end17
land.end17:
  %v56 = load i32, i32* %v43
  %v57 = icmp ne i32 %v56, 0
  br i1 %v57, label %while.body14, label %while.end15
if.then18:
  %v65 = load i32, i32* %t7
  %t75 = getelementptr i32, i32* %arr, i32 %v65
  %v66 = load i32, i32* %t75
  %v67 = load i32, i32* %t9
  %t78 = getelementptr i32, i32* %arr, i32 %v67
  store i32 %v66, i32* %t78
  %v68 = load i32, i32* %t9
  %v69 = sub i32 %v68, 1
  store i32 %v69, i32* %t9
  br label %if.end19
if.end19:
  br label %while.cond3
}

define i32 @main() {
entry:
  store i32 10, i32* @n
  %t95 = alloca [10 x i32]
  %t96 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 0
  store i32 4, i32* %t96
  %t97 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 1
  store i32 3, i32* %t97
  %t98 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 2
  store i32 9, i32* %t98
  %t99 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 3
  store i32 2, i32* %t99
  %t100 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 4
  store i32 0, i32* %t100
  %t101 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 5
  store i32 1, i32* %t101
  %t102 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 6
  store i32 6, i32* %t102
  %t103 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 7
  store i32 5, i32* %t103
  %t104 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 8
  store i32 7, i32* %t104
  %t105 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 9
  store i32 8, i32* %t105
  %t106 = alloca i32
  store i32 0, i32* %t106
  %t107 = alloca i32
  store i32 9, i32* %t107
  %v1 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 0
  %v2 = load i32, i32* %t106
  %v3 = load i32, i32* %t107
  %v4 = call i32 @QuickSort(i32* %v1, i32 %v2, i32 %v3)
  store i32 %v4, i32* %t106
  br label %while.cond1
while.cond1:
  %v5 = load i32, i32* %t106
  %v6 = load i32, i32* @n
  %v7 = icmp slt i32 %v5, %v6
  %v8 = zext i1 %v7 to i32
  %v9 = icmp ne i32 %v8, 0
  br i1 %v9, label %while.body2, label %while.end3
while.body2:
  %t117 = alloca i32
  %v10 = load i32, i32* %t106
  %t119 = getelementptr [10 x i32], [10 x i32]* %t95, i32 0, i32 %v10
  %v11 = load i32, i32* %t119
  store i32 %v11, i32* %t117
  %v12 = load i32, i32* %t117
  call void @putint(i32 %v12)
  store i32 10, i32* %t117
  %v13 = load i32, i32* %t117
  call void @putch(i32 %v13)
  %v14 = load i32, i32* %t106
  %v15 = add i32 %v14, 1
  store i32 %v15, i32* %t106
  br label %while.cond1
while.end3:
  ret i32 0
}

