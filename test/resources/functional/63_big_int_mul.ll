@len = constant i32 20
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %result = alloca [40 x i32]
  %c2 = alloca [25 x i32]
  %c1 = alloca [25 x i32]
  %len2 = alloca i32
  %len1 = alloca i32
  %mult2 = alloca [20 x i32]
  %mult1 = alloca [20 x i32]
  %temp = alloca i32
  %n = alloca i32
  %t = alloca i32
  %j = alloca i32
  %i = alloca i32
  %t0 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 0
  store i32 1, i32* %t0
  %t1 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 1
  store i32 2, i32* %t1
  %t2 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 2
  store i32 3, i32* %t2
  %t3 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 3
  store i32 4, i32* %t3
  %t4 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 4
  store i32 5, i32* %t4
  %t5 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 5
  store i32 6, i32* %t5
  %t6 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 6
  store i32 7, i32* %t6
  %t7 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 7
  store i32 8, i32* %t7
  %t8 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 8
  store i32 9, i32* %t8
  %t9 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 9
  store i32 0, i32* %t9
  %t10 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 10
  store i32 1, i32* %t10
  %t11 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 11
  store i32 2, i32* %t11
  %t12 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 12
  store i32 3, i32* %t12
  %t13 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 13
  store i32 4, i32* %t13
  %t14 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 14
  store i32 5, i32* %t14
  %t15 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 15
  store i32 6, i32* %t15
  %t16 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 16
  store i32 7, i32* %t16
  %t17 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 17
  store i32 8, i32* %t17
  %t18 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 18
  store i32 9, i32* %t18
  %t19 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 19
  store i32 0, i32* %t19
  %t20 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 0
  store i32 2, i32* %t20
  %t21 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 1
  store i32 3, i32* %t21
  %t22 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 2
  store i32 4, i32* %t22
  %t23 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 3
  store i32 2, i32* %t23
  %t24 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 4
  store i32 5, i32* %t24
  %t25 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 5
  store i32 7, i32* %t25
  %t26 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 6
  store i32 9, i32* %t26
  %t27 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 7
  store i32 9, i32* %t27
  %t28 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 8
  store i32 0, i32* %t28
  %t29 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 9
  store i32 1, i32* %t29
  %t30 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 10
  store i32 9, i32* %t30
  %t31 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 11
  store i32 8, i32* %t31
  %t32 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 12
  store i32 7, i32* %t32
  %t33 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 13
  store i32 6, i32* %t33
  %t34 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 14
  store i32 4, i32* %t34
  %t35 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 15
  store i32 3, i32* %t35
  %t36 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 16
  store i32 2, i32* %t36
  %t37 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 17
  store i32 1, i32* %t37
  %t38 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 18
  store i32 2, i32* %t38
  %t39 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 19
  store i32 2, i32* %t39
  store i32 20, i32* %len1
  store i32 20, i32* %len2
  %t40 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 0
  store i32 0, i32* %t40
  %t41 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 1
  store i32 0, i32* %t41
  %t42 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 2
  store i32 0, i32* %t42
  %t43 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 3
  store i32 0, i32* %t43
  %t44 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 4
  store i32 0, i32* %t44
  %t45 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 5
  store i32 0, i32* %t45
  %t46 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 6
  store i32 0, i32* %t46
  %t47 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 7
  store i32 0, i32* %t47
  %t48 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 8
  store i32 0, i32* %t48
  %t49 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 9
  store i32 0, i32* %t49
  %t50 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 10
  store i32 0, i32* %t50
  %t51 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 11
  store i32 0, i32* %t51
  %t52 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 12
  store i32 0, i32* %t52
  %t53 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 13
  store i32 0, i32* %t53
  %t54 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 14
  store i32 0, i32* %t54
  %t55 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 15
  store i32 0, i32* %t55
  %t56 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 16
  store i32 0, i32* %t56
  %t57 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 17
  store i32 0, i32* %t57
  %t58 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 18
  store i32 0, i32* %t58
  %t59 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 19
  store i32 0, i32* %t59
  %t60 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 20
  store i32 0, i32* %t60
  %t61 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 21
  store i32 0, i32* %t61
  %t62 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 22
  store i32 0, i32* %t62
  %t63 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 23
  store i32 0, i32* %t63
  %t64 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 24
  store i32 0, i32* %t64
  %t65 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 25
  store i32 0, i32* %t65
  %t66 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 26
  store i32 0, i32* %t66
  %t67 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 27
  store i32 0, i32* %t67
  %t68 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 28
  store i32 0, i32* %t68
  %t69 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 29
  store i32 0, i32* %t69
  %t70 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 30
  store i32 0, i32* %t70
  %t71 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 31
  store i32 0, i32* %t71
  %t72 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 32
  store i32 0, i32* %t72
  %t73 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 33
  store i32 0, i32* %t73
  %t74 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 34
  store i32 0, i32* %t74
  %t75 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 35
  store i32 0, i32* %t75
  %t76 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 36
  store i32 0, i32* %t76
  %t77 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 37
  store i32 0, i32* %t77
  %t78 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 38
  store i32 0, i32* %t78
  %t79 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 39
  store i32 0, i32* %t79
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %len1
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %t86 = sext i32 %.v6 to i64
  %t87 = getelementptr [20 x i32], [20 x i32]* %mult1, i64 0, i64 %t86
  %.v7 = load i32, i32* %t87
  %.v8 = load i32, i32* %i
  %t90 = sext i32 %.v8 to i64
  %t91 = getelementptr [25 x i32], [25 x i32]* %c1, i64 0, i64 %t90
  store i32 %.v7, i32* %t91
  %.v9 = load i32, i32* %i
  %.v10 = add i32 %.v9, 1
  store i32 %.v10, i32* %i
  br label %while.cond1
while.end3:
  store i32 0, i32* %i
  br label %while.cond4
while.cond4:
  %.v11 = load i32, i32* %i
  %.v12 = load i32, i32* %len2
  %.v13 = icmp slt i32 %.v11, %.v12
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %while.body5, label %while.end6
while.body5:
  %.v16 = load i32, i32* %i
  %t100 = sext i32 %.v16 to i64
  %t101 = getelementptr [20 x i32], [20 x i32]* %mult2, i64 0, i64 %t100
  %.v17 = load i32, i32* %t101
  %.v18 = load i32, i32* %i
  %t104 = sext i32 %.v18 to i64
  %t105 = getelementptr [25 x i32], [25 x i32]* %c2, i64 0, i64 %t104
  store i32 %.v17, i32* %t105
  %.v19 = load i32, i32* %i
  %.v20 = add i32 %.v19, 1
  store i32 %.v20, i32* %i
  br label %while.cond4
while.end6:
  %.v21 = load i32, i32* %len1
  %.v22 = load i32, i32* %len2
  %.v23 = add i32 %.v21, %.v22
  %.v24 = sub i32 %.v23, 1
  store i32 %.v24, i32* %n
  store i32 0, i32* %i
  br label %while.cond7
while.cond7:
  %.v25 = load i32, i32* %i
  %.v26 = load i32, i32* %n
  %.v27 = icmp sle i32 %.v25, %.v26
  %.v28 = zext i1 %.v27 to i32
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %while.body8, label %while.end9
while.body8:
  %.v30 = load i32, i32* %i
  %t118 = sext i32 %.v30 to i64
  %t119 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t118
  store i32 0, i32* %t119
  %.v31 = load i32, i32* %i
  %.v32 = add i32 %.v31, 1
  store i32 %.v32, i32* %i
  br label %while.cond7
while.end9:
  store i32 0, i32* %temp
  %.v33 = load i32, i32* %len2
  %.v34 = sub i32 %.v33, 1
  store i32 %.v34, i32* %i
  br label %while.cond10
while.cond10:
  %.v35 = load i32, i32* %i
  %.v36 = sub i32 0, 1
  %.v37 = icmp sgt i32 %.v35, %.v36
  %.v38 = zext i1 %.v37 to i32
  %.v39 = icmp ne i32 %.v38, 0
  br i1 %.v39, label %while.body11, label %while.end12
while.body11:
  %.v40 = load i32, i32* %i
  %t130 = sext i32 %.v40 to i64
  %t131 = getelementptr [25 x i32], [25 x i32]* %c2, i64 0, i64 %t130
  %.v41 = load i32, i32* %t131
  store i32 %.v41, i32* %t
  %.v42 = load i32, i32* %len1
  %.v43 = sub i32 %.v42, 1
  store i32 %.v43, i32* %j
  br label %while.cond13
while.end12:
  %t185 = sext i32 0 to i64
  %t186 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t185
  %.v82 = load i32, i32* %t186
  %.v83 = icmp ne i32 %.v82, 0
  %.v84 = zext i1 %.v83 to i32
  %.v85 = icmp ne i32 %.v84, 0
  br i1 %.v85, label %if.then19, label %if.end20
while.cond13:
  %.v44 = load i32, i32* %j
  %.v45 = sub i32 0, 1
  %.v46 = icmp sgt i32 %.v44, %.v45
  %.v47 = zext i1 %.v46 to i32
  %.v48 = icmp ne i32 %.v47, 0
  br i1 %.v48, label %while.body14, label %while.end15
while.body14:
  %.v49 = load i32, i32* %n
  %t141 = sext i32 %.v49 to i64
  %t142 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t141
  %.v50 = load i32, i32* %t142
  %.v51 = load i32, i32* %t
  %.v52 = load i32, i32* %j
  %t146 = sext i32 %.v52 to i64
  %t147 = getelementptr [25 x i32], [25 x i32]* %c1, i64 0, i64 %t146
  %.v53 = load i32, i32* %t147
  %.v54 = mul i32 %.v51, %.v53
  %.v55 = add i32 %.v50, %.v54
  store i32 %.v55, i32* %temp
  %.v56 = load i32, i32* %temp
  %.v57 = icmp sge i32 %.v56, 10
  %.v58 = zext i1 %.v57 to i32
  %.v59 = icmp ne i32 %.v58, 0
  br i1 %.v59, label %if.then16, label %if.else17
while.end15:
  %.v76 = load i32, i32* %n
  %.v77 = load i32, i32* %len1
  %.v78 = add i32 %.v76, %.v77
  %.v79 = sub i32 %.v78, 1
  store i32 %.v79, i32* %n
  %.v80 = load i32, i32* %i
  %.v81 = sub i32 %.v80, 1
  store i32 %.v81, i32* %i
  br label %while.cond10
if.then16:
  %.v60 = load i32, i32* %temp
  %.v61 = load i32, i32* %n
  %t157 = sext i32 %.v61 to i64
  %t158 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t157
  store i32 %.v60, i32* %t158
  %.v62 = load i32, i32* %n
  %.v63 = sub i32 %.v62, 1
  %t161 = sext i32 %.v63 to i64
  %t162 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t161
  %.v64 = load i32, i32* %t162
  %.v65 = load i32, i32* %temp
  %.v66 = sdiv i32 %.v65, 10
  %.v67 = add i32 %.v64, %.v66
  %.v68 = load i32, i32* %n
  %.v69 = sub i32 %.v68, 1
  %t169 = sext i32 %.v69 to i64
  %t170 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t169
  store i32 %.v67, i32* %t170
  br label %if.end18
if.else17:
  %.v70 = load i32, i32* %temp
  %.v71 = load i32, i32* %n
  %t173 = sext i32 %.v71 to i64
  %t174 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t173
  store i32 %.v70, i32* %t174
  br label %if.end18
if.end18:
  %.v72 = load i32, i32* %j
  %.v73 = sub i32 %.v72, 1
  store i32 %.v73, i32* %j
  %.v74 = load i32, i32* %n
  %.v75 = sub i32 %.v74, 1
  store i32 %.v75, i32* %n
  br label %while.cond13
if.then19:
  %t191 = sext i32 0 to i64
  %t192 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t191
  %.v86 = load i32, i32* %t192
  call void @putint(i32 %.v86)
  br label %if.end20
if.end20:
  store i32 1, i32* %i
  br label %while.cond21
while.cond21:
  %.v87 = load i32, i32* %i
  %.v88 = load i32, i32* %len1
  %.v89 = load i32, i32* %len2
  %.v90 = add i32 %.v88, %.v89
  %.v91 = sub i32 %.v90, 1
  %.v92 = icmp sle i32 %.v87, %.v91
  %.v93 = zext i1 %.v92 to i32
  %.v94 = icmp ne i32 %.v93, 0
  br i1 %.v94, label %while.body22, label %while.end23
while.body22:
  %.v95 = load i32, i32* %i
  %t203 = sext i32 %.v95 to i64
  %t204 = getelementptr [40 x i32], [40 x i32]* %result, i64 0, i64 %t203
  %.v96 = load i32, i32* %t204
  call void @putint(i32 %.v96)
  %.v97 = load i32, i32* %i
  %.v98 = add i32 %.v97, 1
  store i32 %.v98, i32* %i
  br label %while.cond21
while.end23:
  ret i32 0
}

