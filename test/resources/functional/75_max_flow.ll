@INF = constant i32 1879048192
@size = global [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@to = global [10 x [10 x i32]] [[10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]
@cap = global [10 x [10 x i32]] [[10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]
@rev = global [10 x [10 x i32]] [[10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]
@used = global [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @my_memset(i32* %arr, i32 %val, i32 %n) {
entry:
  %t0 = alloca i32
  store i32 %val, i32* %t0
  %t1 = alloca i32
  store i32 %n, i32* %t1
  %t2 = alloca i32
  store i32 0, i32* %t2
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t2
  %v2 = load i32, i32* %t1
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t0
  %v7 = load i32, i32* %t2
  %t10 = getelementptr i32, i32* %arr, i32 %v7
  store i32 %v6, i32* %t10
  %v8 = load i32, i32* %t2
  %v9 = add i32 %v8, 1
  store i32 %v9, i32* %t2
  br label %while.cond1
while.end3:
  ret void
}

define void @add_node(i32 %u, i32 %v, i32 %c) {
entry:
  %t13 = alloca i32
  store i32 %u, i32* %t13
  %t14 = alloca i32
  store i32 %v, i32* %t14
  %t15 = alloca i32
  store i32 %c, i32* %t15
  %v1 = load i32, i32* %t14
  %v2 = load i32, i32* %t13
  %v3 = load i32, i32* %t13
  %t19 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v3
  %v4 = load i32, i32* %t19
  %t21 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %v2, i32 %v4
  store i32 %v1, i32* %t21
  %v5 = load i32, i32* %t15
  %v6 = load i32, i32* %t13
  %v7 = load i32, i32* %t13
  %t25 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v7
  %v8 = load i32, i32* %t25
  %t27 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v6, i32 %v8
  store i32 %v5, i32* %t27
  %v9 = load i32, i32* %t14
  %t29 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v9
  %v10 = load i32, i32* %t29
  %v11 = load i32, i32* %t13
  %v12 = load i32, i32* %t13
  %t33 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v12
  %v13 = load i32, i32* %t33
  %t35 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %v11, i32 %v13
  store i32 %v10, i32* %t35
  %v14 = load i32, i32* %t13
  %v15 = load i32, i32* %t14
  %v16 = load i32, i32* %t14
  %t39 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v16
  %v17 = load i32, i32* %t39
  %t41 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %v15, i32 %v17
  store i32 %v14, i32* %t41
  %v18 = load i32, i32* %t14
  %v19 = load i32, i32* %t14
  %t44 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v19
  %v20 = load i32, i32* %t44
  %t46 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v18, i32 %v20
  store i32 0, i32* %t46
  %v21 = load i32, i32* %t13
  %t48 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v21
  %v22 = load i32, i32* %t48
  %v23 = load i32, i32* %t14
  %v24 = load i32, i32* %t14
  %t52 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v24
  %v25 = load i32, i32* %t52
  %t54 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %v23, i32 %v25
  store i32 %v22, i32* %t54
  %v26 = load i32, i32* %t13
  %t56 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v26
  %v27 = load i32, i32* %t56
  %v28 = add i32 %v27, 1
  %v29 = load i32, i32* %t13
  %t60 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v29
  store i32 %v28, i32* %t60
  %v30 = load i32, i32* %t14
  %t62 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v30
  %v31 = load i32, i32* %t62
  %v32 = add i32 %v31, 1
  %v33 = load i32, i32* %t14
  %t66 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v33
  store i32 %v32, i32* %t66
  ret void
}

define i32 @dfs(i32 %s, i32 %t, i32 %f) {
entry:
  %t67 = alloca i32
  store i32 %s, i32* %t67
  %t68 = alloca i32
  store i32 %t, i32* %t68
  %t69 = alloca i32
  store i32 %f, i32* %t69
  %v1 = load i32, i32* %t67
  %v2 = load i32, i32* %t68
  %v3 = icmp eq i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %if.then1, label %if.end2
if.then1:
  %v6 = load i32, i32* %t69
  ret i32 %v6
if.end2:
  %v7 = load i32, i32* %t67
  %t77 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 %v7
  store i32 1, i32* %t77
  %t78 = alloca i32
  store i32 0, i32* %t78
  br label %while.cond3
while.cond3:
  %v8 = load i32, i32* %t78
  %v9 = load i32, i32* %t67
  %t81 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %v9
  %v10 = load i32, i32* %t81
  %v11 = icmp slt i32 %v8, %v10
  %v12 = zext i1 %v11 to i32
  %v13 = icmp ne i32 %v12, 0
  br i1 %v13, label %while.body4, label %while.end5
while.body4:
  %v14 = load i32, i32* %t67
  %v15 = load i32, i32* %t78
  %t88 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %v14, i32 %v15
  %v16 = load i32, i32* %t88
  %t90 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 %v16
  %v17 = load i32, i32* %t90
  %v18 = icmp ne i32 %v17, 0
  br i1 %v18, label %if.then6, label %if.end7
while.end5:
  ret i32 0
if.then6:
  %v19 = load i32, i32* %t78
  %v20 = add i32 %v19, 1
  store i32 %v20, i32* %t78
  br label %while.cond3
if.end7:
  %v21 = load i32, i32* %t67
  %v22 = load i32, i32* %t78
  %t97 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v21, i32 %v22
  %v23 = load i32, i32* %t97
  %v24 = icmp sle i32 %v23, 0
  %v25 = zext i1 %v24 to i32
  %v26 = icmp ne i32 %v25, 0
  br i1 %v26, label %if.then8, label %if.end9
if.then8:
  %v27 = load i32, i32* %t78
  %v28 = add i32 %v27, 1
  store i32 %v28, i32* %t78
  br label %while.cond3
if.end9:
  %t104 = alloca i32
  %v29 = load i32, i32* %t69
  %v30 = load i32, i32* %t67
  %v31 = load i32, i32* %t78
  %t108 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v30, i32 %v31
  %v32 = load i32, i32* %t108
  %v33 = icmp slt i32 %v29, %v32
  %v34 = zext i1 %v33 to i32
  %v35 = icmp ne i32 %v34, 0
  br i1 %v35, label %if.then10, label %if.else11
if.then10:
  %v36 = load i32, i32* %t69
  store i32 %v36, i32* %t104
  br label %if.end12
if.else11:
  %v37 = load i32, i32* %t67
  %v38 = load i32, i32* %t78
  %t116 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v37, i32 %v38
  %v39 = load i32, i32* %t116
  store i32 %v39, i32* %t104
  br label %if.end12
if.end12:
  %t118 = alloca i32
  %v40 = load i32, i32* %t67
  %v41 = load i32, i32* %t78
  %t121 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %v40, i32 %v41
  %v42 = load i32, i32* %t121
  %v43 = load i32, i32* %t68
  %v44 = load i32, i32* %t104
  %v45 = call i32 @dfs(i32 %v42, i32 %v43, i32 %v44)
  store i32 %v45, i32* %t118
  %v46 = load i32, i32* %t118
  %v47 = icmp sgt i32 %v46, 0
  %v48 = zext i1 %v47 to i32
  %v49 = icmp ne i32 %v48, 0
  br i1 %v49, label %if.then13, label %if.end14
if.then13:
  %v50 = load i32, i32* %t67
  %v51 = load i32, i32* %t78
  %t132 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v50, i32 %v51
  %v52 = load i32, i32* %t132
  %v53 = load i32, i32* %t118
  %v54 = sub i32 %v52, %v53
  %v55 = load i32, i32* %t67
  %v56 = load i32, i32* %t78
  %t138 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v55, i32 %v56
  store i32 %v54, i32* %t138
  %v57 = load i32, i32* %t67
  %v58 = load i32, i32* %t78
  %t141 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %v57, i32 %v58
  %v59 = load i32, i32* %t141
  %v60 = load i32, i32* %t67
  %v61 = load i32, i32* %t78
  %t145 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %v60, i32 %v61
  %v62 = load i32, i32* %t145
  %t147 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v59, i32 %v62
  %v63 = load i32, i32* %t147
  %v64 = load i32, i32* %t118
  %v65 = add i32 %v63, %v64
  %v66 = load i32, i32* %t67
  %v67 = load i32, i32* %t78
  %t153 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %v66, i32 %v67
  %v68 = load i32, i32* %t153
  %v69 = load i32, i32* %t67
  %v70 = load i32, i32* %t78
  %t157 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %v69, i32 %v70
  %v71 = load i32, i32* %t157
  %t159 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %v68, i32 %v71
  store i32 %v65, i32* %t159
  %v72 = load i32, i32* %t118
  ret i32 %v72
if.end14:
  %v73 = load i32, i32* %t78
  %v74 = add i32 %v73, 1
  store i32 %v74, i32* %t78
  br label %while.cond3
}

define i32 @max_flow(i32 %s, i32 %t) {
entry:
  %t163 = alloca i32
  store i32 %s, i32* %t163
  %t164 = alloca i32
  store i32 %t, i32* %t164
  %t165 = alloca i32
  store i32 0, i32* %t165
  br label %while.cond1
while.cond1:
  %v1 = icmp ne i32 1, 0
  br i1 %v1, label %while.body2, label %while.end3
while.body2:
  %v2 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 0
  call void @my_memset(i32* %v2, i32 0, i32 10)
  %t168 = alloca i32
  %v3 = load i32, i32* %t163
  %v4 = load i32, i32* %t164
  %v5 = load i32, i32* @INF
  %v6 = call i32 @dfs(i32 %v3, i32 %v4, i32 %v5)
  store i32 %v6, i32* %t168
  %v7 = load i32, i32* %t168
  %v8 = icmp eq i32 %v7, 0
  %v9 = zext i1 %v8 to i32
  %v10 = icmp ne i32 %v9, 0
  br i1 %v10, label %if.then4, label %if.end5
while.end3:
  ret i32 0
if.then4:
  %v11 = load i32, i32* %t165
  ret i32 %v11
if.end5:
  %v12 = load i32, i32* %t165
  %v13 = load i32, i32* %t168
  %v14 = add i32 %v12, %v13
  store i32 %v14, i32* %t165
  br label %while.cond1
}

define i32 @main() {
entry:
  %t181 = alloca i32
  %t182 = alloca i32
  %v1 = call i32 @getint()
  store i32 %v1, i32* %t181
  %v2 = call i32 @getint()
  store i32 %v2, i32* %t182
  %v3 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 0
  call void @my_memset(i32* %v3, i32 0, i32 10)
  br label %while.cond1
while.cond1:
  %v4 = load i32, i32* %t182
  %v5 = icmp sgt i32 %v4, 0
  %v6 = zext i1 %v5 to i32
  %v7 = icmp ne i32 %v6, 0
  br i1 %v7, label %while.body2, label %while.end3
while.body2:
  %t190 = alloca i32
  %t191 = alloca i32
  %v8 = call i32 @getint()
  store i32 %v8, i32* %t190
  %v9 = call i32 @getint()
  store i32 %v9, i32* %t191
  %t194 = alloca i32
  %v10 = call i32 @getint()
  store i32 %v10, i32* %t194
  %v11 = load i32, i32* %t190
  %v12 = load i32, i32* %t191
  %v13 = load i32, i32* %t194
  call void @add_node(i32 %v11, i32 %v12, i32 %v13)
  %v14 = load i32, i32* %t182
  %v15 = sub i32 %v14, 1
  store i32 %v15, i32* %t182
  br label %while.cond1
while.end3:
  %v16 = load i32, i32* %t181
  %v17 = call i32 @max_flow(i32 1, i32 %v16)
  call void @putint(i32 %v17)
  call void @putch(i32 10)
  ret i32 0
}

