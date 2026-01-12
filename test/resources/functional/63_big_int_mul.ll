@len = constant i32 20
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  %t2 = alloca i32
  %t3 = alloca i32
  %t4 = alloca i32
  %t5 = alloca [20 x i32]
  %t6 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 0
  store i32 1, i32* %t6
  %t7 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 1
  store i32 2, i32* %t7
  %t8 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 2
  store i32 3, i32* %t8
  %t9 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 3
  store i32 4, i32* %t9
  %t10 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 4
  store i32 5, i32* %t10
  %t11 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 5
  store i32 6, i32* %t11
  %t12 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 6
  store i32 7, i32* %t12
  %t13 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 7
  store i32 8, i32* %t13
  %t14 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 8
  store i32 9, i32* %t14
  %t15 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 9
  store i32 0, i32* %t15
  %t16 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 10
  store i32 1, i32* %t16
  %t17 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 11
  store i32 2, i32* %t17
  %t18 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 12
  store i32 3, i32* %t18
  %t19 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 13
  store i32 4, i32* %t19
  %t20 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 14
  store i32 5, i32* %t20
  %t21 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 15
  store i32 6, i32* %t21
  %t22 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 16
  store i32 7, i32* %t22
  %t23 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 17
  store i32 8, i32* %t23
  %t24 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 18
  store i32 9, i32* %t24
  %t25 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 19
  store i32 0, i32* %t25
  %t26 = alloca [20 x i32]
  %t27 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 0
  store i32 2, i32* %t27
  %t28 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 1
  store i32 3, i32* %t28
  %t29 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 2
  store i32 4, i32* %t29
  %t30 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 3
  store i32 2, i32* %t30
  %t31 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 4
  store i32 5, i32* %t31
  %t32 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 5
  store i32 7, i32* %t32
  %t33 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 6
  store i32 9, i32* %t33
  %t34 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 7
  store i32 9, i32* %t34
  %t35 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 8
  store i32 0, i32* %t35
  %t36 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 9
  store i32 1, i32* %t36
  %t37 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 10
  store i32 9, i32* %t37
  %t38 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 11
  store i32 8, i32* %t38
  %t39 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 12
  store i32 7, i32* %t39
  %t40 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 13
  store i32 6, i32* %t40
  %t41 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 14
  store i32 4, i32* %t41
  %t42 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 15
  store i32 3, i32* %t42
  %t43 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 16
  store i32 2, i32* %t43
  %t44 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 17
  store i32 1, i32* %t44
  %t45 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 18
  store i32 2, i32* %t45
  %t46 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 19
  store i32 2, i32* %t46
  %t47 = alloca i32
  %v1 = load i32, i32* @len
  store i32 %v1, i32* %t47
  %t49 = alloca i32
  %v2 = load i32, i32* @len
  store i32 %v2, i32* %t49
  %t51 = alloca [25 x i32]
  %t52 = alloca [25 x i32]
  %t53 = alloca [40 x i32]
  %t54 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 0
  store i32 0, i32* %t54
  %t55 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 1
  store i32 0, i32* %t55
  %t56 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 2
  store i32 0, i32* %t56
  %t57 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 3
  store i32 0, i32* %t57
  %t58 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 4
  store i32 0, i32* %t58
  %t59 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 5
  store i32 0, i32* %t59
  %t60 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 6
  store i32 0, i32* %t60
  %t61 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 7
  store i32 0, i32* %t61
  %t62 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 8
  store i32 0, i32* %t62
  %t63 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 9
  store i32 0, i32* %t63
  %t64 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 10
  store i32 0, i32* %t64
  %t65 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 11
  store i32 0, i32* %t65
  %t66 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 12
  store i32 0, i32* %t66
  %t67 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 13
  store i32 0, i32* %t67
  %t68 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 14
  store i32 0, i32* %t68
  %t69 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 15
  store i32 0, i32* %t69
  %t70 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 16
  store i32 0, i32* %t70
  %t71 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 17
  store i32 0, i32* %t71
  %t72 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 18
  store i32 0, i32* %t72
  %t73 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 19
  store i32 0, i32* %t73
  %t74 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 20
  store i32 0, i32* %t74
  %t75 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 21
  store i32 0, i32* %t75
  %t76 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 22
  store i32 0, i32* %t76
  %t77 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 23
  store i32 0, i32* %t77
  %t78 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 24
  store i32 0, i32* %t78
  %t79 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 25
  store i32 0, i32* %t79
  %t80 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 26
  store i32 0, i32* %t80
  %t81 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 27
  store i32 0, i32* %t81
  %t82 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 28
  store i32 0, i32* %t82
  %t83 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 29
  store i32 0, i32* %t83
  %t84 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 30
  store i32 0, i32* %t84
  %t85 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 31
  store i32 0, i32* %t85
  %t86 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 32
  store i32 0, i32* %t86
  %t87 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 33
  store i32 0, i32* %t87
  %t88 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 34
  store i32 0, i32* %t88
  %t89 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 35
  store i32 0, i32* %t89
  %t90 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 36
  store i32 0, i32* %t90
  %t91 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 37
  store i32 0, i32* %t91
  %t92 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 38
  store i32 0, i32* %t92
  %t93 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 39
  store i32 0, i32* %t93
  store i32 0, i32* %t0
  br label %while.cond1
while.cond1:
  %v3 = load i32, i32* %t0
  %v4 = load i32, i32* %t47
  %v5 = icmp slt i32 %v3, %v4
  %v6 = zext i1 %v5 to i32
  %v7 = icmp ne i32 %v6, 0
  br i1 %v7, label %while.body2, label %while.end3
while.body2:
  %v8 = load i32, i32* %t0
  %t100 = getelementptr [20 x i32], [20 x i32]* %t5, i32 0, i32 %v8
  %v9 = load i32, i32* %t100
  %v10 = load i32, i32* %t0
  %t103 = getelementptr [25 x i32], [25 x i32]* %t51, i32 0, i32 %v10
  store i32 %v9, i32* %t103
  %v11 = load i32, i32* %t0
  %v12 = add i32 %v11, 1
  store i32 %v12, i32* %t0
  br label %while.cond1
while.end3:
  store i32 0, i32* %t0
  br label %while.cond4
while.cond4:
  %v13 = load i32, i32* %t0
  %v14 = load i32, i32* %t49
  %v15 = icmp slt i32 %v13, %v14
  %v16 = zext i1 %v15 to i32
  %v17 = icmp ne i32 %v16, 0
  br i1 %v17, label %while.body5, label %while.end6
while.body5:
  %v18 = load i32, i32* %t0
  %t112 = getelementptr [20 x i32], [20 x i32]* %t26, i32 0, i32 %v18
  %v19 = load i32, i32* %t112
  %v20 = load i32, i32* %t0
  %t115 = getelementptr [25 x i32], [25 x i32]* %t52, i32 0, i32 %v20
  store i32 %v19, i32* %t115
  %v21 = load i32, i32* %t0
  %v22 = add i32 %v21, 1
  store i32 %v22, i32* %t0
  br label %while.cond4
while.end6:
  %v23 = load i32, i32* %t47
  %v24 = load i32, i32* %t49
  %v25 = add i32 %v23, %v24
  %v26 = sub i32 %v25, 1
  store i32 %v26, i32* %t3
  store i32 0, i32* %t0
  br label %while.cond7
while.cond7:
  %v27 = load i32, i32* %t0
  %v28 = load i32, i32* %t3
  %v29 = icmp sle i32 %v27, %v28
  %v30 = zext i1 %v29 to i32
  %v31 = icmp ne i32 %v30, 0
  br i1 %v31, label %while.body8, label %while.end9
while.body8:
  %v32 = load i32, i32* %t0
  %t128 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v32
  store i32 0, i32* %t128
  %v33 = load i32, i32* %t0
  %v34 = add i32 %v33, 1
  store i32 %v34, i32* %t0
  br label %while.cond7
while.end9:
  store i32 0, i32* %t4
  %v35 = load i32, i32* %t49
  %v36 = sub i32 %v35, 1
  store i32 %v36, i32* %t0
  br label %while.cond10
while.cond10:
  %v37 = load i32, i32* %t0
  %v38 = sub i32 0, 1
  %v39 = icmp sgt i32 %v37, %v38
  %v40 = zext i1 %v39 to i32
  %v41 = icmp ne i32 %v40, 0
  br i1 %v41, label %while.body11, label %while.end12
while.body11:
  %v42 = load i32, i32* %t0
  %t139 = getelementptr [25 x i32], [25 x i32]* %t52, i32 0, i32 %v42
  %v43 = load i32, i32* %t139
  store i32 %v43, i32* %t2
  %v44 = load i32, i32* %t47
  %v45 = sub i32 %v44, 1
  store i32 %v45, i32* %t1
  br label %while.cond13
while.end12:
  %t187 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 0
  %v84 = load i32, i32* %t187
  %v85 = icmp ne i32 %v84, 0
  %v86 = zext i1 %v85 to i32
  %v87 = icmp ne i32 %v86, 0
  br i1 %v87, label %if.then19, label %if.end20
while.cond13:
  %v46 = load i32, i32* %t1
  %v47 = sub i32 0, 1
  %v48 = icmp sgt i32 %v46, %v47
  %v49 = zext i1 %v48 to i32
  %v50 = icmp ne i32 %v49, 0
  br i1 %v50, label %while.body14, label %while.end15
while.body14:
  %v51 = load i32, i32* %t3
  %t149 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v51
  %v52 = load i32, i32* %t149
  %v53 = load i32, i32* %t2
  %v54 = load i32, i32* %t1
  %t153 = getelementptr [25 x i32], [25 x i32]* %t51, i32 0, i32 %v54
  %v55 = load i32, i32* %t153
  %v56 = mul i32 %v53, %v55
  %v57 = add i32 %v52, %v56
  store i32 %v57, i32* %t4
  %v58 = load i32, i32* %t4
  %v59 = icmp sge i32 %v58, 10
  %v60 = zext i1 %v59 to i32
  %v61 = icmp ne i32 %v60, 0
  br i1 %v61, label %if.then16, label %if.else17
while.end15:
  %v78 = load i32, i32* %t3
  %v79 = load i32, i32* %t47
  %v80 = add i32 %v78, %v79
  %v81 = sub i32 %v80, 1
  store i32 %v81, i32* %t3
  %v82 = load i32, i32* %t0
  %v83 = sub i32 %v82, 1
  store i32 %v83, i32* %t0
  br label %while.cond10
if.then16:
  %v62 = load i32, i32* %t4
  %v63 = load i32, i32* %t3
  %t163 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v63
  store i32 %v62, i32* %t163
  %v64 = load i32, i32* %t3
  %v65 = sub i32 %v64, 1
  %t166 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v65
  %v66 = load i32, i32* %t166
  %v67 = load i32, i32* %t4
  %v68 = sdiv i32 %v67, 10
  %v69 = add i32 %v66, %v68
  %v70 = load i32, i32* %t3
  %v71 = sub i32 %v70, 1
  %t173 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v71
  store i32 %v69, i32* %t173
  br label %if.end18
if.else17:
  %v72 = load i32, i32* %t4
  %v73 = load i32, i32* %t3
  %t176 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v73
  store i32 %v72, i32* %t176
  br label %if.end18
if.end18:
  %v74 = load i32, i32* %t1
  %v75 = sub i32 %v74, 1
  store i32 %v75, i32* %t1
  %v76 = load i32, i32* %t3
  %v77 = sub i32 %v76, 1
  store i32 %v77, i32* %t3
  br label %while.cond13
if.then19:
  %t192 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 0
  %v88 = load i32, i32* %t192
  call void @putint(i32 %v88)
  br label %if.end20
if.end20:
  store i32 1, i32* %t0
  br label %while.cond21
while.cond21:
  %v89 = load i32, i32* %t0
  %v90 = load i32, i32* %t47
  %v91 = load i32, i32* %t49
  %v92 = add i32 %v90, %v91
  %v93 = sub i32 %v92, 1
  %v94 = icmp sle i32 %v89, %v93
  %v95 = zext i1 %v94 to i32
  %v96 = icmp ne i32 %v95, 0
  br i1 %v96, label %while.body22, label %while.end23
while.body22:
  %v97 = load i32, i32* %t0
  %t203 = getelementptr [40 x i32], [40 x i32]* %t53, i32 0, i32 %v97
  %v98 = load i32, i32* %t203
  call void @putint(i32 %v98)
  %v99 = load i32, i32* %t0
  %v100 = add i32 %v99, 1
  store i32 %v100, i32* %t0
  br label %while.cond21
while.end23:
  ret i32 0
}

