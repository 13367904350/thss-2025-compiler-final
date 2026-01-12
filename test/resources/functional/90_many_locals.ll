declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @foo() {
entry:
  %t0 = alloca [16 x i32]
  %t1 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 0
  store i32 0, i32* %t1
  %t2 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 1
  store i32 1, i32* %t2
  %t3 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 2
  store i32 2, i32* %t3
  %t4 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 3
  store i32 3, i32* %t4
  %t5 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 4
  store i32 0, i32* %t5
  %t6 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 5
  store i32 1, i32* %t6
  %t7 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 6
  store i32 2, i32* %t7
  %t8 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 7
  store i32 3, i32* %t8
  %t9 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 8
  store i32 0, i32* %t9
  %t10 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 9
  store i32 1, i32* %t10
  %t11 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 10
  store i32 2, i32* %t11
  %t12 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 11
  store i32 3, i32* %t12
  %t13 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 12
  store i32 0, i32* %t13
  %t14 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 13
  store i32 1, i32* %t14
  %t15 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 14
  store i32 2, i32* %t15
  %t16 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 15
  store i32 3, i32* %t16
  %t17 = alloca i32
  store i32 3, i32* %t17
  %t18 = alloca i32
  store i32 7, i32* %t18
  %t19 = alloca i32
  store i32 5, i32* %t19
  %t20 = alloca i32
  store i32 6, i32* %t20
  %t21 = alloca i32
  store i32 1, i32* %t21
  %t22 = alloca i32
  store i32 0, i32* %t22
  %t23 = alloca i32
  store i32 3, i32* %t23
  %t24 = alloca i32
  store i32 5, i32* %t24
  %t25 = alloca i32
  store i32 4, i32* %t25
  %t26 = alloca i32
  store i32 2, i32* %t26
  %t27 = alloca i32
  store i32 7, i32* %t27
  %t28 = alloca i32
  store i32 9, i32* %t28
  %t29 = alloca i32
  store i32 8, i32* %t29
  %t30 = alloca i32
  store i32 1, i32* %t30
  %t31 = alloca i32
  store i32 4, i32* %t31
  %t32 = alloca i32
  store i32 6, i32* %t32
  %t33 = alloca i32
  %v1 = load i32, i32* %t17
  %v2 = load i32, i32* %t18
  %v3 = add i32 %v1, %v2
  %v4 = load i32, i32* %t19
  %v5 = add i32 %v3, %v4
  %v6 = load i32, i32* %t20
  %v7 = add i32 %v5, %v6
  %v8 = load i32, i32* %t21
  %v9 = add i32 %v7, %v8
  %v10 = load i32, i32* %t22
  %v11 = add i32 %v9, %v10
  %v12 = load i32, i32* %t23
  %v13 = add i32 %v11, %v12
  %v14 = load i32, i32* %t24
  %v15 = add i32 %v13, %v14
  store i32 %v15, i32* %t33
  %t49 = alloca i32
  %v16 = load i32, i32* %t25
  %v17 = load i32, i32* %t26
  %v18 = add i32 %v16, %v17
  %v19 = load i32, i32* %t27
  %v20 = add i32 %v18, %v19
  %v21 = load i32, i32* %t28
  %v22 = add i32 %v20, %v21
  %v23 = load i32, i32* %t29
  %v24 = add i32 %v22, %v23
  %v25 = load i32, i32* %t30
  %v26 = add i32 %v24, %v25
  %v27 = load i32, i32* %t31
  %v28 = add i32 %v26, %v27
  %v29 = load i32, i32* %t32
  %v30 = add i32 %v28, %v29
  store i32 %v30, i32* %t49
  %v31 = load i32, i32* %t33
  %v32 = load i32, i32* %t49
  %v33 = add i32 %v31, %v32
  %v34 = load i32, i32* %t17
  %t69 = getelementptr [16 x i32], [16 x i32]* %t0, i32 0, i32 %v34
  %v35 = load i32, i32* %t69
  %v36 = add i32 %v33, %v35
  ret i32 %v36
}

define i32 @main() {
entry:
  %t72 = alloca i32
  store i32 3, i32* %t72
  %t73 = alloca i32
  store i32 7, i32* %t73
  %t74 = alloca i32
  store i32 5, i32* %t74
  %t75 = alloca i32
  store i32 6, i32* %t75
  %t76 = alloca i32
  store i32 1, i32* %t76
  %t77 = alloca i32
  store i32 0, i32* %t77
  %t78 = alloca i32
  store i32 3, i32* %t78
  %t79 = alloca i32
  store i32 5, i32* %t79
  %t80 = alloca i32
  store i32 4, i32* %t80
  %t81 = alloca i32
  store i32 2, i32* %t81
  %t82 = alloca i32
  store i32 7, i32* %t82
  %t83 = alloca i32
  store i32 9, i32* %t83
  %t84 = alloca i32
  store i32 8, i32* %t84
  %t85 = alloca i32
  store i32 1, i32* %t85
  %t86 = alloca i32
  store i32 4, i32* %t86
  %t87 = alloca i32
  store i32 6, i32* %t87
  %t88 = alloca i32
  %v1 = load i32, i32* %t72
  %v2 = load i32, i32* %t73
  %v3 = add i32 %v1, %v2
  %v4 = load i32, i32* %t74
  %v5 = add i32 %v3, %v4
  %v6 = load i32, i32* %t75
  %v7 = add i32 %v5, %v6
  %v8 = load i32, i32* %t76
  %v9 = add i32 %v7, %v8
  %v10 = load i32, i32* %t77
  %v11 = add i32 %v9, %v10
  %v12 = load i32, i32* %t78
  %v13 = add i32 %v11, %v12
  %v14 = load i32, i32* %t79
  %v15 = add i32 %v13, %v14
  store i32 %v15, i32* %t88
  %t104 = alloca i32
  %v16 = load i32, i32* %t80
  %v17 = load i32, i32* %t81
  %v18 = add i32 %v16, %v17
  %v19 = load i32, i32* %t82
  %v20 = add i32 %v18, %v19
  %v21 = load i32, i32* %t83
  %v22 = add i32 %v20, %v21
  %v23 = load i32, i32* %t84
  %v24 = add i32 %v22, %v23
  %v25 = load i32, i32* %t85
  %v26 = add i32 %v24, %v25
  %v27 = load i32, i32* %t86
  %v28 = add i32 %v26, %v27
  %v29 = load i32, i32* %t87
  %v30 = add i32 %v28, %v29
  store i32 %v30, i32* %t104
  %v31 = load i32, i32* %t88
  %v32 = call i32 @foo()
  %v33 = add i32 %v31, %v32
  store i32 %v33, i32* %t88
  %t123 = alloca i32
  store i32 4, i32* %t123
  %t124 = alloca i32
  store i32 7, i32* %t124
  %t125 = alloca i32
  store i32 2, i32* %t125
  %t126 = alloca i32
  store i32 5, i32* %t126
  %t127 = alloca i32
  store i32 8, i32* %t127
  %t128 = alloca i32
  store i32 0, i32* %t128
  %t129 = alloca i32
  store i32 6, i32* %t129
  %t130 = alloca i32
  store i32 3, i32* %t130
  %v34 = load i32, i32* %t104
  %v35 = call i32 @foo()
  %v36 = add i32 %v34, %v35
  store i32 %v36, i32* %t104
  %v37 = load i32, i32* %t80
  store i32 %v37, i32* %t72
  %v38 = load i32, i32* %t81
  store i32 %v38, i32* %t73
  %v39 = load i32, i32* %t82
  store i32 %v39, i32* %t74
  %v40 = load i32, i32* %t83
  store i32 %v40, i32* %t75
  %v41 = load i32, i32* %t84
  store i32 %v41, i32* %t76
  %v42 = load i32, i32* %t85
  store i32 %v42, i32* %t77
  %v43 = load i32, i32* %t86
  store i32 %v43, i32* %t78
  %v44 = load i32, i32* %t87
  store i32 %v44, i32* %t79
  %t142 = alloca i32
  %v45 = load i32, i32* %t123
  %v46 = load i32, i32* %t124
  %v47 = add i32 %v45, %v46
  %v48 = load i32, i32* %t125
  %v49 = add i32 %v47, %v48
  %v50 = load i32, i32* %t126
  %v51 = add i32 %v49, %v50
  %v52 = load i32, i32* %t127
  %v53 = add i32 %v51, %v52
  %v54 = load i32, i32* %t128
  %v55 = add i32 %v53, %v54
  %v56 = load i32, i32* %t129
  %v57 = add i32 %v55, %v56
  %v58 = load i32, i32* %t130
  %v59 = add i32 %v57, %v58
  store i32 %v59, i32* %t142
  %t158 = alloca i32
  %v60 = load i32, i32* %t88
  %v61 = load i32, i32* %t104
  %v62 = add i32 %v60, %v61
  %v63 = load i32, i32* %t142
  %v64 = add i32 %v62, %v63
  store i32 %v64, i32* %t158
  %v65 = load i32, i32* %t158
  call void @putint(i32 %v65)
  call void @putch(i32 10)
  ret i32 0
}

