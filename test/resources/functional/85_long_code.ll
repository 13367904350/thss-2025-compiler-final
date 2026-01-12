@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @bubblesort(i32* %arr) {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  store i32 0, i32* %t0
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* @n
  %v3 = sub i32 %v2, 1
  %v4 = icmp slt i32 %v1, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %t1
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %v7 = load i32, i32* %t1
  %v8 = load i32, i32* @n
  %v9 = load i32, i32* %t0
  %v10 = sub i32 %v8, %v9
  %v11 = sub i32 %v10, 1
  %v12 = icmp slt i32 %v7, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %while.body5, label %while.end6
while.body5:
  %v15 = load i32, i32* %t1
  %t17 = getelementptr i32, i32* %arr, i32 %v15
  %v16 = load i32, i32* %t17
  %v17 = load i32, i32* %t1
  %v18 = add i32 %v17, 1
  %t21 = getelementptr i32, i32* %arr, i32 %v18
  %v19 = load i32, i32* %t21
  %v20 = icmp sgt i32 %v16, %v19
  %v21 = zext i1 %v20 to i32
  %v22 = icmp ne i32 %v21, 0
  br i1 %v22, label %if.then7, label %if.end8
while.end6:
  %v34 = load i32, i32* %t0
  %v35 = add i32 %v34, 1
  store i32 %v35, i32* %t0
  br label %while.cond1
if.then7:
  %t26 = alloca i32
  %v23 = load i32, i32* %t1
  %v24 = add i32 %v23, 1
  %t29 = getelementptr i32, i32* %arr, i32 %v24
  %v25 = load i32, i32* %t29
  store i32 %v25, i32* %t26
  %v26 = load i32, i32* %t1
  %t32 = getelementptr i32, i32* %arr, i32 %v26
  %v27 = load i32, i32* %t32
  %v28 = load i32, i32* %t1
  %v29 = add i32 %v28, 1
  %t36 = getelementptr i32, i32* %arr, i32 %v29
  store i32 %v27, i32* %t36
  %v30 = load i32, i32* %t26
  %v31 = load i32, i32* %t1
  %t39 = getelementptr i32, i32* %arr, i32 %v31
  store i32 %v30, i32* %t39
  br label %if.end8
if.end8:
  %v32 = load i32, i32* %t1
  %v33 = add i32 %v32, 1
  store i32 %v33, i32* %t1
  br label %while.cond4
}

define i32 @insertsort(i32* %a) {
entry:
  %t44 = alloca i32
  store i32 1, i32* %t44
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t44
  %v2 = load i32, i32* @n
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %t50 = alloca i32
  %v6 = load i32, i32* %t44
  %t52 = getelementptr i32, i32* %a, i32 %v6
  %v7 = load i32, i32* %t52
  store i32 %v7, i32* %t50
  %t54 = alloca i32
  %v8 = load i32, i32* %t44
  %v9 = sub i32 %v8, 1
  store i32 %v9, i32* %t54
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %v10 = alloca i32
  store i32 0, i32* %v10
  %v11 = load i32, i32* %t54
  %v12 = sub i32 0, 1
  %v13 = icmp sgt i32 %v11, %v12
  %v14 = zext i1 %v13 to i32
  %v15 = icmp ne i32 %v14, 0
  br i1 %v15, label %land.rhs7, label %land.end8
while.body5:
  %v25 = load i32, i32* %t54
  %t74 = getelementptr i32, i32* %a, i32 %v25
  %v26 = load i32, i32* %t74
  %v27 = load i32, i32* %t54
  %v28 = add i32 %v27, 1
  %t78 = getelementptr i32, i32* %a, i32 %v28
  store i32 %v26, i32* %t78
  %v29 = load i32, i32* %t54
  %v30 = sub i32 %v29, 1
  store i32 %v30, i32* %t54
  br label %while.cond4
while.end6:
  %v31 = load i32, i32* %t50
  %v32 = load i32, i32* %t54
  %v33 = add i32 %v32, 1
  %t84 = getelementptr i32, i32* %a, i32 %v33
  store i32 %v31, i32* %t84
  %v34 = load i32, i32* %t44
  %v35 = add i32 %v34, 1
  store i32 %v35, i32* %t44
  br label %while.cond1
land.rhs7:
  %v16 = load i32, i32* %t50
  %v17 = load i32, i32* %t54
  %t65 = getelementptr i32, i32* %a, i32 %v17
  %v18 = load i32, i32* %t65
  %v19 = icmp slt i32 %v16, %v18
  %v20 = zext i1 %v19 to i32
  %v21 = icmp ne i32 %v20, 0
  %v22 = zext i1 %v21 to i32
  store i32 %v22, i32* %v10
  br label %land.end8
land.end8:
  %v23 = load i32, i32* %v10
  %v24 = icmp ne i32 %v23, 0
  br i1 %v24, label %while.body5, label %while.end6
}

define i32 @QuickSort(i32* %arr, i32 %low, i32 %high) {
entry:
  %t87 = alloca i32
  store i32 %low, i32* %t87
  %t88 = alloca i32
  store i32 %high, i32* %t88
  %v1 = load i32, i32* %t87
  %v2 = load i32, i32* %t88
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %if.then1, label %if.end2
if.then1:
  %t94 = alloca i32
  %v6 = load i32, i32* %t87
  store i32 %v6, i32* %t94
  %t96 = alloca i32
  %v7 = load i32, i32* %t88
  store i32 %v7, i32* %t96
  %t98 = alloca i32
  %v8 = load i32, i32* %t87
  %t100 = getelementptr i32, i32* %arr, i32 %v8
  %v9 = load i32, i32* %t100
  store i32 %v9, i32* %t98
  br label %while.cond3
if.end2:
  ret i32 0
while.cond3:
  %v10 = load i32, i32* %t94
  %v11 = load i32, i32* %t96
  %v12 = icmp slt i32 %v10, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %while.body4, label %while.end5
while.body4:
  br label %while.cond6
while.end5:
  %v70 = load i32, i32* %t98
  %v71 = load i32, i32* %t94
  %t170 = getelementptr i32, i32* %arr, i32 %v71
  store i32 %v70, i32* %t170
  %t171 = alloca i32
  %v72 = load i32, i32* %t94
  %v73 = sub i32 %v72, 1
  store i32 %v73, i32* %t171
  %v74 = load i32, i32* %t87
  %v75 = load i32, i32* %t171
  %v76 = call i32 @QuickSort(i32* %arr, i32 %v74, i32 %v75)
  store i32 %v76, i32* %t171
  %v77 = load i32, i32* %t94
  %v78 = add i32 %v77, 1
  store i32 %v78, i32* %t171
  %v79 = load i32, i32* %t171
  %v80 = load i32, i32* %t88
  %v81 = call i32 @QuickSort(i32* %arr, i32 %v79, i32 %v80)
  store i32 %v81, i32* %t171
  br label %if.end2
while.cond6:
  %v15 = alloca i32
  store i32 0, i32* %v15
  %v16 = load i32, i32* %t94
  %v17 = load i32, i32* %t96
  %v18 = icmp slt i32 %v16, %v17
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %land.rhs9, label %land.end10
while.body7:
  %v31 = load i32, i32* %t96
  %v32 = sub i32 %v31, 1
  store i32 %v32, i32* %t96
  br label %while.cond6
while.end8:
  %v33 = load i32, i32* %t94
  %v34 = load i32, i32* %t96
  %v35 = icmp slt i32 %v33, %v34
  %v36 = zext i1 %v35 to i32
  %v37 = icmp ne i32 %v36, 0
  br i1 %v37, label %if.then11, label %if.end12
land.rhs9:
  %v21 = load i32, i32* %t96
  %t114 = getelementptr i32, i32* %arr, i32 %v21
  %v22 = load i32, i32* %t114
  %v23 = load i32, i32* %t98
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
  %v38 = load i32, i32* %t96
  %t132 = getelementptr i32, i32* %arr, i32 %v38
  %v39 = load i32, i32* %t132
  %v40 = load i32, i32* %t94
  %t135 = getelementptr i32, i32* %arr, i32 %v40
  store i32 %v39, i32* %t135
  %v41 = load i32, i32* %t94
  %v42 = add i32 %v41, 1
  store i32 %v42, i32* %t94
  br label %if.end12
if.end12:
  br label %while.cond13
while.cond13:
  %v43 = alloca i32
  store i32 0, i32* %v43
  %v44 = load i32, i32* %t94
  %v45 = load i32, i32* %t96
  %v46 = icmp slt i32 %v44, %v45
  %v47 = zext i1 %v46 to i32
  %v48 = icmp ne i32 %v47, 0
  br i1 %v48, label %land.rhs16, label %land.end17
while.body14:
  %v58 = load i32, i32* %t94
  %v59 = add i32 %v58, 1
  store i32 %v59, i32* %t94
  br label %while.cond13
while.end15:
  %v60 = load i32, i32* %t94
  %v61 = load i32, i32* %t96
  %v62 = icmp slt i32 %v60, %v61
  %v63 = zext i1 %v62 to i32
  %v64 = icmp ne i32 %v63, 0
  br i1 %v64, label %if.then18, label %if.end19
land.rhs16:
  %v49 = load i32, i32* %t94
  %t145 = getelementptr i32, i32* %arr, i32 %v49
  %v50 = load i32, i32* %t145
  %v51 = load i32, i32* %t98
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
  %v65 = load i32, i32* %t94
  %t162 = getelementptr i32, i32* %arr, i32 %v65
  %v66 = load i32, i32* %t162
  %v67 = load i32, i32* %t96
  %t165 = getelementptr i32, i32* %arr, i32 %v67
  store i32 %v66, i32* %t165
  %v68 = load i32, i32* %t96
  %v69 = sub i32 %v68, 1
  store i32 %v69, i32* %t96
  br label %if.end19
if.end19:
  br label %while.cond3
}

define i32 @getMid(i32* %arr) {
entry:
  %t182 = alloca i32
  %v1 = load i32, i32* @n
  %v2 = srem i32 %v1, 2
  %v3 = icmp eq i32 %v2, 0
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %if.then1, label %if.else2
if.then1:
  %v6 = load i32, i32* @n
  %v7 = sdiv i32 %v6, 2
  store i32 %v7, i32* %t182
  %v8 = load i32, i32* %t182
  %t191 = getelementptr i32, i32* %arr, i32 %v8
  %v9 = load i32, i32* %t191
  %v10 = load i32, i32* %t182
  %v11 = sub i32 %v10, 1
  %t195 = getelementptr i32, i32* %arr, i32 %v11
  %v12 = load i32, i32* %t195
  %v13 = add i32 %v9, %v12
  %v14 = sdiv i32 %v13, 2
  ret i32 %v14
if.else2:
  %v15 = load i32, i32* @n
  %v16 = sdiv i32 %v15, 2
  store i32 %v16, i32* %t182
  %v17 = load i32, i32* %t182
  %t202 = getelementptr i32, i32* %arr, i32 %v17
  %v18 = load i32, i32* %t202
  ret i32 %v18
if.end3:
  ret i32 0
}

define i32 @getMost(i32* %arr) {
entry:
  %t204 = alloca [1000 x i32]
  %t205 = alloca i32
  store i32 0, i32* %t205
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t205
  %v2 = icmp slt i32 %v1, 1000
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = load i32, i32* %t205
  %t211 = getelementptr [1000 x i32], [1000 x i32]* %t204, i32 0, i32 %v5
  store i32 0, i32* %t211
  %v6 = load i32, i32* %t205
  %v7 = add i32 %v6, 1
  store i32 %v7, i32* %t205
  br label %while.cond1
while.end3:
  store i32 0, i32* %t205
  %t214 = alloca i32
  %t215 = alloca i32
  store i32 0, i32* %t214
  br label %while.cond4
while.cond4:
  %v8 = load i32, i32* %t205
  %v9 = load i32, i32* @n
  %v10 = icmp slt i32 %v8, %v9
  %v11 = zext i1 %v10 to i32
  %v12 = icmp ne i32 %v11, 0
  br i1 %v12, label %while.body5, label %while.end6
while.body5:
  %t221 = alloca i32
  %v13 = load i32, i32* %t205
  %t223 = getelementptr i32, i32* %arr, i32 %v13
  %v14 = load i32, i32* %t223
  store i32 %v14, i32* %t221
  %v15 = load i32, i32* %t221
  %t226 = getelementptr [1000 x i32], [1000 x i32]* %t204, i32 0, i32 %v15
  %v16 = load i32, i32* %t226
  %v17 = add i32 %v16, 1
  %v18 = load i32, i32* %t221
  %t230 = getelementptr [1000 x i32], [1000 x i32]* %t204, i32 0, i32 %v18
  store i32 %v17, i32* %t230
  %v19 = load i32, i32* %t221
  %t232 = getelementptr [1000 x i32], [1000 x i32]* %t204, i32 0, i32 %v19
  %v20 = load i32, i32* %t232
  %v21 = load i32, i32* %t214
  %v22 = icmp sgt i32 %v20, %v21
  %v23 = zext i1 %v22 to i32
  %v24 = icmp ne i32 %v23, 0
  br i1 %v24, label %if.then7, label %if.end8
while.end6:
  %v30 = load i32, i32* %t215
  ret i32 %v30
if.then7:
  %v25 = load i32, i32* %t221
  %t239 = getelementptr [1000 x i32], [1000 x i32]* %t204, i32 0, i32 %v25
  %v26 = load i32, i32* %t239
  store i32 %v26, i32* %t214
  %v27 = load i32, i32* %t221
  store i32 %v27, i32* %t215
  br label %if.end8
if.end8:
  %v28 = load i32, i32* %t205
  %v29 = add i32 %v28, 1
  store i32 %v29, i32* %t205
  br label %while.cond4
}

define i32 @revert(i32* %arr) {
entry:
  %t245 = alloca i32
  %t246 = alloca i32
  %t247 = alloca i32
  store i32 0, i32* %t246
  store i32 0, i32* %t247
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t246
  %v2 = load i32, i32* %t247
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t246
  %t254 = getelementptr i32, i32* %arr, i32 %v6
  %v7 = load i32, i32* %t254
  store i32 %v7, i32* %t245
  %v8 = load i32, i32* %t247
  %t257 = getelementptr i32, i32* %arr, i32 %v8
  %v9 = load i32, i32* %t257
  %v10 = load i32, i32* %t246
  %t260 = getelementptr i32, i32* %arr, i32 %v10
  store i32 %v9, i32* %t260
  %v11 = load i32, i32* %t245
  %v12 = load i32, i32* %t247
  %t263 = getelementptr i32, i32* %arr, i32 %v12
  store i32 %v11, i32* %t263
  %v13 = load i32, i32* %t246
  %v14 = add i32 %v13, 1
  store i32 %v14, i32* %t246
  %v15 = load i32, i32* %t247
  %v16 = sub i32 %v15, 1
  store i32 %v16, i32* %t247
  br label %while.cond1
while.end3:
  ret i32 0
}

define i32 @arrCopy(i32* %src, i32* %target) {
entry:
  %t268 = alloca i32
  store i32 0, i32* %t268
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t268
  %v2 = load i32, i32* @n
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t268
  %t275 = getelementptr i32, i32* %src, i32 %v6
  %v7 = load i32, i32* %t275
  %v8 = load i32, i32* %t268
  %t278 = getelementptr i32, i32* %target, i32 %v8
  store i32 %v7, i32* %t278
  %v9 = load i32, i32* %t268
  %v10 = add i32 %v9, 1
  store i32 %v10, i32* %t268
  br label %while.cond1
while.end3:
  ret i32 0
}

define i32 @calSum(i32* %arr, i32 %stride) {
entry:
  %t281 = alloca i32
  store i32 %stride, i32* %t281
  %t282 = alloca i32
  store i32 0, i32* %t282
  %t283 = alloca i32
  store i32 0, i32* %t283
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t283
  %v2 = load i32, i32* @n
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t282
  %v7 = load i32, i32* %t283
  %t291 = getelementptr i32, i32* %arr, i32 %v7
  %v8 = load i32, i32* %t291
  %v9 = add i32 %v6, %v8
  store i32 %v9, i32* %t282
  %v10 = load i32, i32* %t283
  %v11 = load i32, i32* %t281
  %v12 = srem i32 %v10, %v11
  %v13 = load i32, i32* %t281
  %v14 = sub i32 %v13, 1
  %v15 = icmp ne i32 %v12, %v14
  %v16 = zext i1 %v15 to i32
  %v17 = icmp ne i32 %v16, 0
  br i1 %v17, label %if.then4, label %if.else5
while.end3:
  ret i32 0
if.then4:
  %v18 = load i32, i32* %t283
  %t303 = getelementptr i32, i32* %arr, i32 %v18
  store i32 0, i32* %t303
  br label %if.end6
if.else5:
  %v19 = load i32, i32* %t282
  %v20 = load i32, i32* %t283
  %t306 = getelementptr i32, i32* %arr, i32 %v20
  store i32 %v19, i32* %t306
  store i32 0, i32* %t282
  br label %if.end6
if.end6:
  %v21 = load i32, i32* %t283
  %v22 = add i32 %v21, 1
  store i32 %v22, i32* %t283
  br label %while.cond1
}

define i32 @avgPooling(i32* %arr, i32 %stride) {
entry:
  %t309 = alloca i32
  store i32 %stride, i32* %t309
  %t310 = alloca i32
  %t311 = alloca i32
  store i32 0, i32* %t311
  store i32 0, i32* %t310
  %t312 = alloca i32
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t311
  %v2 = load i32, i32* @n
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t311
  %v7 = load i32, i32* %t309
  %v8 = sub i32 %v7, 1
  %v9 = icmp slt i32 %v6, %v8
  %v10 = zext i1 %v9 to i32
  %v11 = icmp ne i32 %v10, 0
  br i1 %v11, label %if.then4, label %if.else5
while.end3:
  %v46 = load i32, i32* @n
  %v47 = load i32, i32* %t309
  %v48 = sub i32 %v46, %v47
  %v49 = add i32 %v48, 1
  store i32 %v49, i32* %t311
  br label %while.cond10
if.then4:
  %v12 = load i32, i32* %t310
  %v13 = load i32, i32* %t311
  %t326 = getelementptr i32, i32* %arr, i32 %v13
  %v14 = load i32, i32* %t326
  %v15 = add i32 %v12, %v14
  store i32 %v15, i32* %t310
  br label %if.end6
if.else5:
  %v16 = load i32, i32* %t311
  %v17 = load i32, i32* %t309
  %v18 = sub i32 %v17, 1
  %v19 = icmp eq i32 %v16, %v18
  %v20 = zext i1 %v19 to i32
  %v21 = icmp ne i32 %v20, 0
  br i1 %v21, label %if.then7, label %if.else8
if.end6:
  %v44 = load i32, i32* %t311
  %v45 = add i32 %v44, 1
  store i32 %v45, i32* %t311
  br label %while.cond1
if.then7:
  %t335 = getelementptr i32, i32* %arr, i32 0
  %v22 = load i32, i32* %t335
  store i32 %v22, i32* %t312
  %v23 = load i32, i32* %t310
  %v24 = load i32, i32* %t309
  %v25 = sdiv i32 %v23, %v24
  %t340 = getelementptr i32, i32* %arr, i32 0
  store i32 %v25, i32* %t340
  br label %if.end9
if.else8:
  %v26 = load i32, i32* %t310
  %v27 = load i32, i32* %t311
  %t343 = getelementptr i32, i32* %arr, i32 %v27
  %v28 = load i32, i32* %t343
  %v29 = add i32 %v26, %v28
  %v30 = load i32, i32* %t312
  %v31 = sub i32 %v29, %v30
  store i32 %v31, i32* %t310
  %v32 = load i32, i32* %t311
  %v33 = load i32, i32* %t309
  %v34 = sub i32 %v32, %v33
  %v35 = add i32 %v34, 1
  %t352 = getelementptr i32, i32* %arr, i32 %v35
  %v36 = load i32, i32* %t352
  store i32 %v36, i32* %t312
  %v37 = load i32, i32* %t310
  %v38 = load i32, i32* %t309
  %v39 = sdiv i32 %v37, %v38
  %v40 = load i32, i32* %t311
  %v41 = load i32, i32* %t309
  %v42 = sub i32 %v40, %v41
  %v43 = add i32 %v42, 1
  %t361 = getelementptr i32, i32* %arr, i32 %v43
  store i32 %v39, i32* %t361
  br label %if.end9
if.end9:
  br label %if.end6
while.cond10:
  %v50 = load i32, i32* %t311
  %v51 = load i32, i32* @n
  %v52 = icmp slt i32 %v50, %v51
  %v53 = zext i1 %v52 to i32
  %v54 = icmp ne i32 %v53, 0
  br i1 %v54, label %while.body11, label %while.end12
while.body11:
  %v55 = load i32, i32* %t311
  %t374 = getelementptr i32, i32* %arr, i32 %v55
  store i32 0, i32* %t374
  %v56 = load i32, i32* %t311
  %v57 = add i32 %v56, 1
  store i32 %v57, i32* %t311
  br label %while.cond10
while.end12:
  ret i32 0
}

define i32 @main() {
entry:
  store i32 32, i32* @n
  %t377 = alloca [32 x i32]
  %t378 = alloca [32 x i32]
  %t379 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  store i32 7, i32* %t379
  %t380 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 1
  store i32 23, i32* %t380
  %t381 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 2
  store i32 89, i32* %t381
  %t382 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 3
  store i32 26, i32* %t382
  %t383 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 4
  store i32 282, i32* %t383
  %t384 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 5
  store i32 254, i32* %t384
  %t385 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 6
  store i32 27, i32* %t385
  %t386 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 7
  store i32 5, i32* %t386
  %t387 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 8
  store i32 83, i32* %t387
  %t388 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 9
  store i32 273, i32* %t388
  %t389 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 10
  store i32 574, i32* %t389
  %t390 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 11
  store i32 905, i32* %t390
  %t391 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 12
  store i32 354, i32* %t391
  %t392 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 13
  store i32 657, i32* %t392
  %t393 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 14
  store i32 935, i32* %t393
  %t394 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 15
  store i32 264, i32* %t394
  %t395 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 16
  store i32 639, i32* %t395
  %t396 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 17
  store i32 459, i32* %t396
  %t397 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 18
  store i32 29, i32* %t397
  %t398 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 19
  store i32 68, i32* %t398
  %t399 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 20
  store i32 929, i32* %t399
  %t400 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 21
  store i32 756, i32* %t400
  %t401 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 22
  store i32 452, i32* %t401
  %t402 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 23
  store i32 279, i32* %t402
  %t403 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 24
  store i32 58, i32* %t403
  %t404 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 25
  store i32 87, i32* %t404
  %t405 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 26
  store i32 96, i32* %t405
  %t406 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 27
  store i32 36, i32* %t406
  %t407 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 28
  store i32 39, i32* %t407
  %t408 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 29
  store i32 28, i32* %t408
  %t409 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 30
  store i32 1, i32* %t409
  %t410 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 31
  store i32 290, i32* %t410
  %t411 = alloca i32
  %v1 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  %v2 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v3 = call i32 @arrCopy(i32* %v1, i32* %v2)
  store i32 %v3, i32* %t411
  %v4 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v5 = call i32 @revert(i32* %v4)
  store i32 %v5, i32* %t411
  %t417 = alloca i32
  store i32 0, i32* %t417
  br label %while.cond1
while.cond1:
  %v6 = load i32, i32* %t417
  %v7 = icmp slt i32 %v6, 32
  %v8 = zext i1 %v7 to i32
  %v9 = icmp ne i32 %v8, 0
  br i1 %v9, label %while.body2, label %while.end3
while.body2:
  %v10 = load i32, i32* %t417
  %t423 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v10
  %v11 = load i32, i32* %t423
  store i32 %v11, i32* %t411
  %v12 = load i32, i32* %t411
  call void @putint(i32 %v12)
  %v13 = load i32, i32* %t417
  %v14 = add i32 %v13, 1
  store i32 %v14, i32* %t417
  br label %while.cond1
while.end3:
  %v15 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v16 = call i32 @bubblesort(i32* %v15)
  store i32 %v16, i32* %t411
  store i32 0, i32* %t417
  br label %while.cond4
while.cond4:
  %v17 = load i32, i32* %t417
  %v18 = icmp slt i32 %v17, 32
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %while.body5, label %while.end6
while.body5:
  %v21 = load i32, i32* %t417
  %t435 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v21
  %v22 = load i32, i32* %t435
  store i32 %v22, i32* %t411
  %v23 = load i32, i32* %t411
  call void @putint(i32 %v23)
  %v24 = load i32, i32* %t417
  %v25 = add i32 %v24, 1
  store i32 %v25, i32* %t417
  br label %while.cond4
while.end6:
  %v26 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v27 = call i32 @getMid(i32* %v26)
  store i32 %v27, i32* %t411
  %v28 = load i32, i32* %t411
  call void @putint(i32 %v28)
  %v29 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v30 = call i32 @getMost(i32* %v29)
  store i32 %v30, i32* %t411
  %v31 = load i32, i32* %t411
  call void @putint(i32 %v31)
  %v32 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  %v33 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v34 = call i32 @arrCopy(i32* %v32, i32* %v33)
  store i32 %v34, i32* %t411
  %v35 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v36 = call i32 @bubblesort(i32* %v35)
  store i32 %v36, i32* %t411
  store i32 0, i32* %t417
  br label %while.cond7
while.cond7:
  %v37 = load i32, i32* %t417
  %v38 = icmp slt i32 %v37, 32
  %v39 = zext i1 %v38 to i32
  %v40 = icmp ne i32 %v39, 0
  br i1 %v40, label %while.body8, label %while.end9
while.body8:
  %v41 = load i32, i32* %t417
  %t456 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v41
  %v42 = load i32, i32* %t456
  store i32 %v42, i32* %t411
  %v43 = load i32, i32* %t411
  call void @putint(i32 %v43)
  %v44 = load i32, i32* %t417
  %v45 = add i32 %v44, 1
  store i32 %v45, i32* %t417
  br label %while.cond7
while.end9:
  %v46 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  %v47 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v48 = call i32 @arrCopy(i32* %v46, i32* %v47)
  store i32 %v48, i32* %t411
  %v49 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v50 = call i32 @insertsort(i32* %v49)
  store i32 %v50, i32* %t411
  store i32 0, i32* %t417
  br label %while.cond10
while.cond10:
  %v51 = load i32, i32* %t417
  %v52 = icmp slt i32 %v51, 32
  %v53 = zext i1 %v52 to i32
  %v54 = icmp ne i32 %v53, 0
  br i1 %v54, label %while.body11, label %while.end12
while.body11:
  %v55 = load i32, i32* %t417
  %t471 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v55
  %v56 = load i32, i32* %t471
  store i32 %v56, i32* %t411
  %v57 = load i32, i32* %t411
  call void @putint(i32 %v57)
  %v58 = load i32, i32* %t417
  %v59 = add i32 %v58, 1
  store i32 %v59, i32* %t417
  br label %while.cond10
while.end12:
  %v60 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  %v61 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v62 = call i32 @arrCopy(i32* %v60, i32* %v61)
  store i32 %v62, i32* %t411
  store i32 0, i32* %t417
  store i32 31, i32* %t411
  %v63 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v64 = load i32, i32* %t417
  %v65 = load i32, i32* %t411
  %v66 = call i32 @QuickSort(i32* %v63, i32 %v64, i32 %v65)
  store i32 %v66, i32* %t411
  br label %while.cond13
while.cond13:
  %v67 = load i32, i32* %t417
  %v68 = icmp slt i32 %v67, 32
  %v69 = zext i1 %v68 to i32
  %v70 = icmp ne i32 %v69, 0
  br i1 %v70, label %while.body14, label %while.end15
while.body14:
  %v71 = load i32, i32* %t417
  %t488 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v71
  %v72 = load i32, i32* %t488
  store i32 %v72, i32* %t411
  %v73 = load i32, i32* %t411
  call void @putint(i32 %v73)
  %v74 = load i32, i32* %t417
  %v75 = add i32 %v74, 1
  store i32 %v75, i32* %t417
  br label %while.cond13
while.end15:
  %v76 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  %v77 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v78 = call i32 @arrCopy(i32* %v76, i32* %v77)
  store i32 %v78, i32* %t411
  %v79 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v80 = call i32 @calSum(i32* %v79, i32 4)
  store i32 %v80, i32* %t411
  store i32 0, i32* %t417
  br label %while.cond16
while.cond16:
  %v81 = load i32, i32* %t417
  %v82 = icmp slt i32 %v81, 32
  %v83 = zext i1 %v82 to i32
  %v84 = icmp ne i32 %v83, 0
  br i1 %v84, label %while.body17, label %while.end18
while.body17:
  %v85 = load i32, i32* %t417
  %t503 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v85
  %v86 = load i32, i32* %t503
  store i32 %v86, i32* %t411
  %v87 = load i32, i32* %t411
  call void @putint(i32 %v87)
  %v88 = load i32, i32* %t417
  %v89 = add i32 %v88, 1
  store i32 %v89, i32* %t417
  br label %while.cond16
while.end18:
  %v90 = getelementptr [32 x i32], [32 x i32]* %t377, i32 0, i32 0
  %v91 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v92 = call i32 @arrCopy(i32* %v90, i32* %v91)
  store i32 %v92, i32* %t411
  %v93 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 0
  %v94 = call i32 @avgPooling(i32* %v93, i32 3)
  store i32 %v94, i32* %t411
  store i32 0, i32* %t417
  br label %while.cond19
while.cond19:
  %v95 = load i32, i32* %t417
  %v96 = icmp slt i32 %v95, 32
  %v97 = zext i1 %v96 to i32
  %v98 = icmp ne i32 %v97, 0
  br i1 %v98, label %while.body20, label %while.end21
while.body20:
  %v99 = load i32, i32* %t417
  %t518 = getelementptr [32 x i32], [32 x i32]* %t378, i32 0, i32 %v99
  %v100 = load i32, i32* %t518
  store i32 %v100, i32* %t411
  %v101 = load i32, i32* %t411
  call void @putint(i32 %v101)
  %v102 = load i32, i32* %t417
  %v103 = add i32 %v102, 1
  store i32 %v103, i32* %t417
  br label %while.cond19
while.end21:
  ret i32 0
}

