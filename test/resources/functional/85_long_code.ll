@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @bubblesort(i32* %arr) {
entry:
  %tmp = alloca i32
  %j = alloca i32
  %i = alloca i32
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
  %t15 = sext i32 %.v15 to i64
  %t16 = getelementptr i32, i32* %arr, i64 %t15
  %.v16 = load i32, i32* %t16
  %.v17 = load i32, i32* %j
  %.v18 = add i32 %.v17, 1
  %t20 = sext i32 %.v18 to i64
  %t21 = getelementptr i32, i32* %arr, i64 %t20
  %.v19 = load i32, i32* %t21
  %.v20 = icmp sgt i32 %.v16, %.v19
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %if.then7, label %if.end8
while.end6:
  %.v34 = load i32, i32* %i
  %.v35 = add i32 %.v34, 1
  store i32 %.v35, i32* %i
  br label %while.cond1
if.then7:
  %.v23 = load i32, i32* %j
  %.v24 = add i32 %.v23, 1
  %t28 = sext i32 %.v24 to i64
  %t29 = getelementptr i32, i32* %arr, i64 %t28
  %.v25 = load i32, i32* %t29
  store i32 %.v25, i32* %tmp
  %.v26 = load i32, i32* %j
  %t32 = sext i32 %.v26 to i64
  %t33 = getelementptr i32, i32* %arr, i64 %t32
  %.v27 = load i32, i32* %t33
  %.v28 = load i32, i32* %j
  %.v29 = add i32 %.v28, 1
  %t37 = sext i32 %.v29 to i64
  %t38 = getelementptr i32, i32* %arr, i64 %t37
  store i32 %.v27, i32* %t38
  %.v30 = load i32, i32* %tmp
  %.v31 = load i32, i32* %j
  %t41 = sext i32 %.v31 to i64
  %t42 = getelementptr i32, i32* %arr, i64 %t41
  store i32 %.v30, i32* %t42
  br label %if.end8
if.end8:
  %.v32 = load i32, i32* %j
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %j
  br label %while.cond4
}

define i32 @insertsort(i32* %a) {
entry:
  %.v10 = alloca i32
  %j = alloca i32
  %temp = alloca i32
  %i = alloca i32
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
  %t53 = sext i32 %.v6 to i64
  %t54 = getelementptr i32, i32* %a, i64 %t53
  %.v7 = load i32, i32* %t54
  store i32 %.v7, i32* %temp
  %.v8 = load i32, i32* %i
  %.v9 = sub i32 %.v8, 1
  store i32 %.v9, i32* %j
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  store i32 0, i32* %.v10
  %.v11 = load i32, i32* %j
  %.v12 = sub i32 0, 1
  %.v13 = icmp sgt i32 %.v11, %.v12
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %land.rhs7, label %land.end8
while.body5:
  %.v25 = load i32, i32* %j
  %t75 = sext i32 %.v25 to i64
  %t76 = getelementptr i32, i32* %a, i64 %t75
  %.v26 = load i32, i32* %t76
  %.v27 = load i32, i32* %j
  %.v28 = add i32 %.v27, 1
  %t80 = sext i32 %.v28 to i64
  %t81 = getelementptr i32, i32* %a, i64 %t80
  store i32 %.v26, i32* %t81
  %.v29 = load i32, i32* %j
  %.v30 = sub i32 %.v29, 1
  store i32 %.v30, i32* %j
  br label %while.cond4
while.end6:
  %.v31 = load i32, i32* %temp
  %.v32 = load i32, i32* %j
  %.v33 = add i32 %.v32, 1
  %t87 = sext i32 %.v33 to i64
  %t88 = getelementptr i32, i32* %a, i64 %t87
  store i32 %.v31, i32* %t88
  %.v34 = load i32, i32* %i
  %.v35 = add i32 %.v34, 1
  store i32 %.v35, i32* %i
  br label %while.cond1
land.rhs7:
  %.v16 = load i32, i32* %temp
  %.v17 = load i32, i32* %j
  %t65 = sext i32 %.v17 to i64
  %t66 = getelementptr i32, i32* %a, i64 %t65
  %.v18 = load i32, i32* %t66
  %.v19 = icmp slt i32 %.v16, %.v18
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  %.v22 = zext i1 %.v21 to i32
  store i32 %.v22, i32* %.v10
  br label %land.end8
land.end8:
  %.v23 = load i32, i32* %.v10
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %while.body5, label %while.end6
}

define i32 @QuickSort(i32* %arr, i32 %low, i32 %high) {
entry:
  %tmp = alloca i32
  %.v43 = alloca i32
  %.v15 = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %high.addr = alloca i32
  %low.addr = alloca i32
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
  %t99 = sext i32 %.v8 to i64
  %t100 = getelementptr i32, i32* %arr, i64 %t99
  %.v9 = load i32, i32* %t100
  store i32 %.v9, i32* %k
  br label %while.cond3
if.end2:
  ret i32 0
while.cond3:
  %.v10 = load i32, i32* %i
  %.v11 = load i32, i32* %j
  %.v12 = icmp slt i32 %.v10, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body4, label %while.end5
while.body4:
  br label %while.cond6
while.end5:
  %.v70 = load i32, i32* %k
  %.v71 = load i32, i32* %i
  %t174 = sext i32 %.v71 to i64
  %t175 = getelementptr i32, i32* %arr, i64 %t174
  store i32 %.v70, i32* %t175
  %.v72 = load i32, i32* %i
  %.v73 = sub i32 %.v72, 1
  store i32 %.v73, i32* %tmp
  %.v74 = load i32, i32* %low.addr
  %.v75 = load i32, i32* %tmp
  %.v76 = call i32 @QuickSort(i32* %arr, i32 %.v74, i32 %.v75)
  store i32 %.v76, i32* %tmp
  %.v77 = load i32, i32* %i
  %.v78 = add i32 %.v77, 1
  store i32 %.v78, i32* %tmp
  %.v79 = load i32, i32* %tmp
  %.v80 = load i32, i32* %high.addr
  %.v81 = call i32 @QuickSort(i32* %arr, i32 %.v79, i32 %.v80)
  store i32 %.v81, i32* %tmp
  br label %if.end2
while.cond6:
  store i32 0, i32* %.v15
  %.v16 = load i32, i32* %i
  %.v17 = load i32, i32* %j
  %.v18 = icmp slt i32 %.v16, %.v17
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %land.rhs9, label %land.end10
while.body7:
  %.v31 = load i32, i32* %j
  %.v32 = sub i32 %.v31, 1
  store i32 %.v32, i32* %j
  br label %while.cond6
while.end8:
  %.v33 = load i32, i32* %i
  %.v34 = load i32, i32* %j
  %.v35 = icmp slt i32 %.v33, %.v34
  %.v36 = zext i1 %.v35 to i32
  %.v37 = icmp ne i32 %.v36, 0
  br i1 %.v37, label %if.then11, label %if.end12
land.rhs9:
  %.v21 = load i32, i32* %j
  %t113 = sext i32 %.v21 to i64
  %t114 = getelementptr i32, i32* %arr, i64 %t113
  %.v22 = load i32, i32* %t114
  %.v23 = load i32, i32* %k
  %.v24 = sub i32 %.v23, 1
  %.v25 = icmp sgt i32 %.v22, %.v24
  %.v26 = zext i1 %.v25 to i32
  %.v27 = icmp ne i32 %.v26, 0
  %.v28 = zext i1 %.v27 to i32
  store i32 %.v28, i32* %.v15
  br label %land.end10
land.end10:
  %.v29 = load i32, i32* %.v15
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %while.body7, label %while.end8
if.then11:
  %.v38 = load i32, i32* %j
  %t132 = sext i32 %.v38 to i64
  %t133 = getelementptr i32, i32* %arr, i64 %t132
  %.v39 = load i32, i32* %t133
  %.v40 = load i32, i32* %i
  %t136 = sext i32 %.v40 to i64
  %t137 = getelementptr i32, i32* %arr, i64 %t136
  store i32 %.v39, i32* %t137
  %.v41 = load i32, i32* %i
  %.v42 = add i32 %.v41, 1
  store i32 %.v42, i32* %i
  br label %if.end12
if.end12:
  br label %while.cond13
while.cond13:
  store i32 0, i32* %.v43
  %.v44 = load i32, i32* %i
  %.v45 = load i32, i32* %j
  %.v46 = icmp slt i32 %.v44, %.v45
  %.v47 = zext i1 %.v46 to i32
  %.v48 = icmp ne i32 %.v47, 0
  br i1 %.v48, label %land.rhs16, label %land.end17
while.body14:
  %.v58 = load i32, i32* %i
  %.v59 = add i32 %.v58, 1
  store i32 %.v59, i32* %i
  br label %while.cond13
while.end15:
  %.v60 = load i32, i32* %i
  %.v61 = load i32, i32* %j
  %.v62 = icmp slt i32 %.v60, %.v61
  %.v63 = zext i1 %.v62 to i32
  %.v64 = icmp ne i32 %.v63, 0
  br i1 %.v64, label %if.then18, label %if.end19
land.rhs16:
  %.v49 = load i32, i32* %i
  %t146 = sext i32 %.v49 to i64
  %t147 = getelementptr i32, i32* %arr, i64 %t146
  %.v50 = load i32, i32* %t147
  %.v51 = load i32, i32* %k
  %.v52 = icmp slt i32 %.v50, %.v51
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  %.v55 = zext i1 %.v54 to i32
  store i32 %.v55, i32* %.v43
  br label %land.end17
land.end17:
  %.v56 = load i32, i32* %.v43
  %.v57 = icmp ne i32 %.v56, 0
  br i1 %.v57, label %while.body14, label %while.end15
if.then18:
  %.v65 = load i32, i32* %i
  %t164 = sext i32 %.v65 to i64
  %t165 = getelementptr i32, i32* %arr, i64 %t164
  %.v66 = load i32, i32* %t165
  %.v67 = load i32, i32* %j
  %t168 = sext i32 %.v67 to i64
  %t169 = getelementptr i32, i32* %arr, i64 %t168
  store i32 %.v66, i32* %t169
  %.v68 = load i32, i32* %j
  %.v69 = sub i32 %.v68, 1
  store i32 %.v69, i32* %j
  br label %if.end19
if.end19:
  br label %while.cond3
}

define i32 @getMid(i32* %arr) {
entry:
  %mid = alloca i32
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
  %t194 = sext i32 %.v8 to i64
  %t195 = getelementptr i32, i32* %arr, i64 %t194
  %.v9 = load i32, i32* %t195
  %.v10 = load i32, i32* %mid
  %.v11 = sub i32 %.v10, 1
  %t199 = sext i32 %.v11 to i64
  %t200 = getelementptr i32, i32* %arr, i64 %t199
  %.v12 = load i32, i32* %t200
  %.v13 = add i32 %.v9, %.v12
  %.v14 = sdiv i32 %.v13, 2
  ret i32 %.v14
if.else2:
  %.v15 = load i32, i32* @n
  %.v16 = sdiv i32 %.v15, 2
  store i32 %.v16, i32* %mid
  %.v17 = load i32, i32* %mid
  %t207 = sext i32 %.v17 to i64
  %t208 = getelementptr i32, i32* %arr, i64 %t207
  %.v18 = load i32, i32* %t208
  ret i32 %.v18
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
  %t215 = sext i32 %.v5 to i64
  %t216 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i64 %t215
  store i32 0, i32* %t216
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
  %t225 = sext i32 %.v13 to i64
  %t226 = getelementptr i32, i32* %arr, i64 %t225
  %.v14 = load i32, i32* %t226
  store i32 %.v14, i32* %num
  %.v15 = load i32, i32* %num
  %t229 = sext i32 %.v15 to i64
  %t230 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i64 %t229
  %.v16 = load i32, i32* %t230
  %.v17 = add i32 %.v16, 1
  %.v18 = load i32, i32* %num
  %t234 = sext i32 %.v18 to i64
  %t235 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i64 %t234
  store i32 %.v17, i32* %t235
  %.v19 = load i32, i32* %num
  %t237 = sext i32 %.v19 to i64
  %t238 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i64 %t237
  %.v20 = load i32, i32* %t238
  %.v21 = load i32, i32* %max
  %.v22 = icmp sgt i32 %.v20, %.v21
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %if.then7, label %if.end8
while.end6:
  %.v30 = load i32, i32* %number
  ret i32 %.v30
if.then7:
  %.v25 = load i32, i32* %num
  %t245 = sext i32 %.v25 to i64
  %t246 = getelementptr [1000 x i32], [1000 x i32]* %count, i64 0, i64 %t245
  %.v26 = load i32, i32* %t246
  store i32 %.v26, i32* %max
  %.v27 = load i32, i32* %num
  store i32 %.v27, i32* %number
  br label %if.end8
if.end8:
  %.v28 = load i32, i32* %i
  %.v29 = add i32 %.v28, 1
  store i32 %.v29, i32* %i
  br label %while.cond4
}

define i32 @revert(i32* %arr) {
entry:
  %j = alloca i32
  %i = alloca i32
  %temp = alloca i32
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
  %t258 = sext i32 %.v6 to i64
  %t259 = getelementptr i32, i32* %arr, i64 %t258
  %.v7 = load i32, i32* %t259
  store i32 %.v7, i32* %temp
  %.v8 = load i32, i32* %j
  %t262 = sext i32 %.v8 to i64
  %t263 = getelementptr i32, i32* %arr, i64 %t262
  %.v9 = load i32, i32* %t263
  %.v10 = load i32, i32* %i
  %t266 = sext i32 %.v10 to i64
  %t267 = getelementptr i32, i32* %arr, i64 %t266
  store i32 %.v9, i32* %t267
  %.v11 = load i32, i32* %temp
  %.v12 = load i32, i32* %j
  %t270 = sext i32 %.v12 to i64
  %t271 = getelementptr i32, i32* %arr, i64 %t270
  store i32 %.v11, i32* %t271
  %.v13 = load i32, i32* %i
  %.v14 = add i32 %.v13, 1
  store i32 %.v14, i32* %i
  %.v15 = load i32, i32* %j
  %.v16 = sub i32 %.v15, 1
  store i32 %.v16, i32* %j
  br label %while.cond1
while.end3:
  ret i32 0
}

define i32 @arrCopy(i32* %src, i32* %target) {
entry:
  %i = alloca i32
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
  %t282 = sext i32 %.v6 to i64
  %t283 = getelementptr i32, i32* %src, i64 %t282
  %.v7 = load i32, i32* %t283
  %.v8 = load i32, i32* %i
  %t286 = sext i32 %.v8 to i64
  %t287 = getelementptr i32, i32* %target, i64 %t286
  store i32 %.v7, i32* %t287
  %.v9 = load i32, i32* %i
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %i
  br label %while.cond1
while.end3:
  ret i32 0
}

define i32 @calSum(i32* %arr, i32 %stride) {
entry:
  %i = alloca i32
  %sum = alloca i32
  %stride.addr = alloca i32
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
  %t297 = sext i32 %.v7 to i64
  %t298 = getelementptr i32, i32* %arr, i64 %t297
  %.v8 = load i32, i32* %t298
  %.v9 = add i32 %.v6, %.v8
  store i32 %.v9, i32* %sum
  %.v10 = load i32, i32* %i
  %.v11 = load i32, i32* %stride.addr
  %.v12 = srem i32 %.v10, %.v11
  %.v13 = load i32, i32* %stride.addr
  %.v14 = sub i32 %.v13, 1
  %.v15 = icmp ne i32 %.v12, %.v14
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %if.then4, label %if.else5
while.end3:
  ret i32 0
if.then4:
  %.v18 = load i32, i32* %i
  %t310 = sext i32 %.v18 to i64
  %t311 = getelementptr i32, i32* %arr, i64 %t310
  store i32 0, i32* %t311
  br label %if.end6
if.else5:
  %.v19 = load i32, i32* %sum
  %.v20 = load i32, i32* %i
  %t314 = sext i32 %.v20 to i64
  %t315 = getelementptr i32, i32* %arr, i64 %t314
  store i32 %.v19, i32* %t315
  store i32 0, i32* %sum
  br label %if.end6
if.end6:
  %.v21 = load i32, i32* %i
  %.v22 = add i32 %.v21, 1
  store i32 %.v22, i32* %i
  br label %while.cond1
}

define i32 @avgPooling(i32* %arr, i32 %stride) {
entry:
  %lastnum = alloca i32
  %i = alloca i32
  %sum = alloca i32
  %stride.addr = alloca i32
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
  %.v46 = load i32, i32* @n
  %.v47 = load i32, i32* %stride.addr
  %.v48 = sub i32 %.v46, %.v47
  %.v49 = add i32 %.v48, 1
  store i32 %.v49, i32* %i
  br label %while.cond10
if.then4:
  %.v12 = load i32, i32* %sum
  %.v13 = load i32, i32* %i
  %t331 = sext i32 %.v13 to i64
  %t332 = getelementptr i32, i32* %arr, i64 %t331
  %.v14 = load i32, i32* %t332
  %.v15 = add i32 %.v12, %.v14
  store i32 %.v15, i32* %sum
  br label %if.end6
if.else5:
  %.v16 = load i32, i32* %i
  %.v17 = load i32, i32* %stride.addr
  %.v18 = sub i32 %.v17, 1
  %.v19 = icmp eq i32 %.v16, %.v18
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %if.then7, label %if.else8
if.end6:
  %.v44 = load i32, i32* %i
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %i
  br label %while.cond1
if.then7:
  %t341 = sext i32 0 to i64
  %t342 = getelementptr i32, i32* %arr, i64 %t341
  %.v22 = load i32, i32* %t342
  store i32 %.v22, i32* %lastnum
  %.v23 = load i32, i32* %sum
  %.v24 = load i32, i32* %stride.addr
  %.v25 = sdiv i32 %.v23, %.v24
  %t347 = sext i32 0 to i64
  %t348 = getelementptr i32, i32* %arr, i64 %t347
  store i32 %.v25, i32* %t348
  br label %if.end9
if.else8:
  %.v26 = load i32, i32* %sum
  %.v27 = load i32, i32* %i
  %t351 = sext i32 %.v27 to i64
  %t352 = getelementptr i32, i32* %arr, i64 %t351
  %.v28 = load i32, i32* %t352
  %.v29 = add i32 %.v26, %.v28
  %.v30 = load i32, i32* %lastnum
  %.v31 = sub i32 %.v29, %.v30
  store i32 %.v31, i32* %sum
  %.v32 = load i32, i32* %i
  %.v33 = load i32, i32* %stride.addr
  %.v34 = sub i32 %.v32, %.v33
  %.v35 = add i32 %.v34, 1
  %t361 = sext i32 %.v35 to i64
  %t362 = getelementptr i32, i32* %arr, i64 %t361
  %.v36 = load i32, i32* %t362
  store i32 %.v36, i32* %lastnum
  %.v37 = load i32, i32* %sum
  %.v38 = load i32, i32* %stride.addr
  %.v39 = sdiv i32 %.v37, %.v38
  %.v40 = load i32, i32* %i
  %.v41 = load i32, i32* %stride.addr
  %.v42 = sub i32 %.v40, %.v41
  %.v43 = add i32 %.v42, 1
  %t371 = sext i32 %.v43 to i64
  %t372 = getelementptr i32, i32* %arr, i64 %t371
  store i32 %.v39, i32* %t372
  br label %if.end9
if.end9:
  br label %if.end6
while.cond10:
  %.v50 = load i32, i32* %i
  %.v51 = load i32, i32* @n
  %.v52 = icmp slt i32 %.v50, %.v51
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %while.body11, label %while.end12
while.body11:
  %.v55 = load i32, i32* %i
  %t385 = sext i32 %.v55 to i64
  %t386 = getelementptr i32, i32* %arr, i64 %t385
  store i32 0, i32* %t386
  %.v56 = load i32, i32* %i
  %.v57 = add i32 %.v56, 1
  store i32 %.v57, i32* %i
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
  %t389 = sext i32 0 to i64
  %t390 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t389
  store i32 7, i32* %t390
  %t391 = sext i32 1 to i64
  %t392 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t391
  store i32 23, i32* %t392
  %t393 = sext i32 2 to i64
  %t394 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t393
  store i32 89, i32* %t394
  %t395 = sext i32 3 to i64
  %t396 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t395
  store i32 26, i32* %t396
  %t397 = sext i32 4 to i64
  %t398 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t397
  store i32 282, i32* %t398
  %t399 = sext i32 5 to i64
  %t400 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t399
  store i32 254, i32* %t400
  %t401 = sext i32 6 to i64
  %t402 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t401
  store i32 27, i32* %t402
  %t403 = sext i32 7 to i64
  %t404 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t403
  store i32 5, i32* %t404
  %t405 = sext i32 8 to i64
  %t406 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t405
  store i32 83, i32* %t406
  %t407 = sext i32 9 to i64
  %t408 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t407
  store i32 273, i32* %t408
  %t409 = sext i32 10 to i64
  %t410 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t409
  store i32 574, i32* %t410
  %t411 = sext i32 11 to i64
  %t412 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t411
  store i32 905, i32* %t412
  %t413 = sext i32 12 to i64
  %t414 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t413
  store i32 354, i32* %t414
  %t415 = sext i32 13 to i64
  %t416 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t415
  store i32 657, i32* %t416
  %t417 = sext i32 14 to i64
  %t418 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t417
  store i32 935, i32* %t418
  %t419 = sext i32 15 to i64
  %t420 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t419
  store i32 264, i32* %t420
  %t421 = sext i32 16 to i64
  %t422 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t421
  store i32 639, i32* %t422
  %t423 = sext i32 17 to i64
  %t424 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t423
  store i32 459, i32* %t424
  %t425 = sext i32 18 to i64
  %t426 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t425
  store i32 29, i32* %t426
  %t427 = sext i32 19 to i64
  %t428 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t427
  store i32 68, i32* %t428
  %t429 = sext i32 20 to i64
  %t430 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t429
  store i32 929, i32* %t430
  %t431 = sext i32 21 to i64
  %t432 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t431
  store i32 756, i32* %t432
  %t433 = sext i32 22 to i64
  %t434 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t433
  store i32 452, i32* %t434
  %t435 = sext i32 23 to i64
  %t436 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t435
  store i32 279, i32* %t436
  %t437 = sext i32 24 to i64
  %t438 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t437
  store i32 58, i32* %t438
  %t439 = sext i32 25 to i64
  %t440 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t439
  store i32 87, i32* %t440
  %t441 = sext i32 26 to i64
  %t442 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t441
  store i32 96, i32* %t442
  %t443 = sext i32 27 to i64
  %t444 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t443
  store i32 36, i32* %t444
  %t445 = sext i32 28 to i64
  %t446 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t445
  store i32 39, i32* %t446
  %t447 = sext i32 29 to i64
  %t448 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t447
  store i32 28, i32* %t448
  %t449 = sext i32 30 to i64
  %t450 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t449
  store i32 1, i32* %t450
  %t451 = sext i32 31 to i64
  %t452 = getelementptr [32 x i32], [32 x i32]* %arr, i64 0, i64 %t451
  store i32 290, i32* %t452
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
  %t463 = sext i32 %.v10 to i64
  %t464 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t463
  %.v11 = load i32, i32* %t464
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
  %t476 = sext i32 %.v21 to i64
  %t477 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t476
  %.v22 = load i32, i32* %t477
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
  %t498 = sext i32 %.v41 to i64
  %t499 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t498
  %.v42 = load i32, i32* %t499
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
  %t514 = sext i32 %.v55 to i64
  %t515 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t514
  %.v56 = load i32, i32* %t515
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
  %t532 = sext i32 %.v71 to i64
  %t533 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t532
  %.v72 = load i32, i32* %t533
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
  %t548 = sext i32 %.v85 to i64
  %t549 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t548
  %.v86 = load i32, i32* %t549
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
  %t564 = sext i32 %.v99 to i64
  %t565 = getelementptr [32 x i32], [32 x i32]* %result, i64 0, i64 %t564
  %.v100 = load i32, i32* %t565
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

