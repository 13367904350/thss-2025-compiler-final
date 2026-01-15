@INF = constant i32 1879048192
@size = global [10 x i32] zeroinitializer
@to = global [10 x [10 x i32]] zeroinitializer
@cap = global [10 x [10 x i32]] zeroinitializer
@rev = global [10 x [10 x i32]] zeroinitializer
@used = global [10 x i32] zeroinitializer
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

define void @my_memset(i32* %arr, i32 %val, i32 %n) {
entry:
  %i = alloca i32
  %n.addr = alloca i32
  %val.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 %val, i32* %val.addr
  store i32 %n, i32* %n.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = icmp slt i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %val.addr
  %.v7 = load i32, i32* %i
  %.v8 = load i32*, i32** %arr.addr
  %.v9 = getelementptr i32, i32* %.v8, i32 %.v7
  store i32 %.v6, i32* %.v9
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %i
  br label %while.cond1
while.end3:
  ret void
}

define void @add_node(i32 %u, i32 %v, i32 %c) {
entry:
  %c.addr = alloca i32
  %v.addr = alloca i32
  %u.addr = alloca i32
  store i32 %u, i32* %u.addr
  store i32 %v, i32* %v.addr
  store i32 %c, i32* %c.addr
  %.v1 = load i32, i32* %v.addr
  %.v2 = load i32, i32* %u.addr
  %t13 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i32 %.v2
  %.v3 = load i32, i32* %u.addr
  %t15 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v3
  %.v4 = load i32, i32* %t15
  %t17 = getelementptr [10 x i32], [10 x i32]* %t13, i64 0, i32 %.v4
  store i32 %.v1, i32* %t17
  %.v5 = load i32, i32* %c.addr
  %.v6 = load i32, i32* %u.addr
  %t20 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v6
  %.v7 = load i32, i32* %u.addr
  %t22 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v7
  %.v8 = load i32, i32* %t22
  %t24 = getelementptr [10 x i32], [10 x i32]* %t20, i64 0, i32 %.v8
  store i32 %.v5, i32* %t24
  %.v9 = load i32, i32* %v.addr
  %t26 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v9
  %.v10 = load i32, i32* %t26
  %.v11 = load i32, i32* %u.addr
  %t29 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i32 %.v11
  %.v12 = load i32, i32* %u.addr
  %t31 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v12
  %.v13 = load i32, i32* %t31
  %t33 = getelementptr [10 x i32], [10 x i32]* %t29, i64 0, i32 %.v13
  store i32 %.v10, i32* %t33
  %.v14 = load i32, i32* %u.addr
  %.v15 = load i32, i32* %v.addr
  %t36 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i32 %.v15
  %.v16 = load i32, i32* %v.addr
  %t38 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v16
  %.v17 = load i32, i32* %t38
  %t40 = getelementptr [10 x i32], [10 x i32]* %t36, i64 0, i32 %.v17
  store i32 %.v14, i32* %t40
  %.v18 = load i32, i32* %v.addr
  %t42 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v18
  %.v19 = load i32, i32* %v.addr
  %t44 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v19
  %.v20 = load i32, i32* %t44
  %t46 = getelementptr [10 x i32], [10 x i32]* %t42, i64 0, i32 %.v20
  store i32 0, i32* %t46
  %.v21 = load i32, i32* %u.addr
  %t48 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v21
  %.v22 = load i32, i32* %t48
  %.v23 = load i32, i32* %v.addr
  %t51 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i32 %.v23
  %.v24 = load i32, i32* %v.addr
  %t53 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v24
  %.v25 = load i32, i32* %t53
  %t55 = getelementptr [10 x i32], [10 x i32]* %t51, i64 0, i32 %.v25
  store i32 %.v22, i32* %t55
  %.v26 = load i32, i32* %u.addr
  %t57 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v26
  %.v27 = load i32, i32* %t57
  %.v28 = add i32 %.v27, 1
  %.v29 = load i32, i32* %u.addr
  %t61 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v29
  store i32 %.v28, i32* %t61
  %.v30 = load i32, i32* %v.addr
  %t63 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v30
  %.v31 = load i32, i32* %t63
  %.v32 = add i32 %.v31, 1
  %.v33 = load i32, i32* %v.addr
  %t67 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v33
  store i32 %.v32, i32* %t67
  ret void
}

define i32 @dfs(i32 %s, i32 %t, i32 %f) {
entry:
  %d = alloca i32
  %min_f = alloca i32
  %i = alloca i32
  %f.addr = alloca i32
  %t.addr = alloca i32
  %s.addr = alloca i32
  store i32 %s, i32* %s.addr
  store i32 %t, i32* %t.addr
  store i32 %f, i32* %f.addr
  %.v1 = load i32, i32* %s.addr
  %.v2 = load i32, i32* %t.addr
  %.v3 = icmp eq i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.end2
if.then1:
  %.v6 = load i32, i32* %f.addr
  ret i32 %.v6
if.end2:
  %.v7 = load i32, i32* %s.addr
  %t75 = getelementptr [10 x i32], [10 x i32]* @used, i64 0, i32 %.v7
  store i32 1, i32* %t75
  store i32 0, i32* %i
  br label %while.cond3
while.cond3:
  %.v8 = load i32, i32* %i
  %.v9 = load i32, i32* %s.addr
  %t78 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i32 %.v9
  %.v10 = load i32, i32* %t78
  %.v11 = icmp slt i32 %.v8, %.v10
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %while.body4, label %while.end5
while.body4:
  %.v14 = load i32, i32* %s.addr
  %t84 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i32 %.v14
  %.v15 = load i32, i32* %i
  %t86 = getelementptr [10 x i32], [10 x i32]* %t84, i64 0, i32 %.v15
  %.v16 = load i32, i32* %t86
  %t88 = getelementptr [10 x i32], [10 x i32]* @used, i64 0, i32 %.v16
  %.v17 = load i32, i32* %t88
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then6, label %if.end7
while.end5:
  ret i32 0
if.then6:
  %.v19 = load i32, i32* %i
  %.v20 = add i32 %.v19, 1
  store i32 %.v20, i32* %i
  br label %while.cond3
if.end7:
  %.v21 = load i32, i32* %s.addr
  %t94 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v21
  %.v22 = load i32, i32* %i
  %t96 = getelementptr [10 x i32], [10 x i32]* %t94, i64 0, i32 %.v22
  %.v23 = load i32, i32* %t96
  %.v24 = icmp sle i32 %.v23, 0
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %if.then8, label %if.end9
if.then8:
  %.v27 = load i32, i32* %i
  %.v28 = add i32 %.v27, 1
  store i32 %.v28, i32* %i
  br label %while.cond3
if.end9:
  %.v29 = load i32, i32* %f.addr
  %.v30 = load i32, i32* %s.addr
  %t105 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v30
  %.v31 = load i32, i32* %i
  %t107 = getelementptr [10 x i32], [10 x i32]* %t105, i64 0, i32 %.v31
  %.v32 = load i32, i32* %t107
  %.v33 = icmp slt i32 %.v29, %.v32
  %.v34 = zext i1 %.v33 to i32
  %.v35 = icmp ne i32 %.v34, 0
  br i1 %.v35, label %if.then10, label %if.else11
if.then10:
  %.v36 = load i32, i32* %f.addr
  store i32 %.v36, i32* %min_f
  br label %if.end12
if.else11:
  %.v37 = load i32, i32* %s.addr
  %t114 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v37
  %.v38 = load i32, i32* %i
  %t116 = getelementptr [10 x i32], [10 x i32]* %t114, i64 0, i32 %.v38
  %.v39 = load i32, i32* %t116
  store i32 %.v39, i32* %min_f
  br label %if.end12
if.end12:
  %.v40 = load i32, i32* %s.addr
  %t119 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i32 %.v40
  %.v41 = load i32, i32* %i
  %t121 = getelementptr [10 x i32], [10 x i32]* %t119, i64 0, i32 %.v41
  %.v42 = load i32, i32* %t121
  %.v43 = load i32, i32* %t.addr
  %.v44 = load i32, i32* %min_f
  %.v45 = call i32 @dfs(i32 %.v42, i32 %.v43, i32 %.v44)
  store i32 %.v45, i32* %d
  %.v46 = load i32, i32* %d
  %.v47 = icmp sgt i32 %.v46, 0
  %.v48 = zext i1 %.v47 to i32
  %.v49 = icmp ne i32 %.v48, 0
  br i1 %.v49, label %if.then13, label %if.end14
if.then13:
  %.v50 = load i32, i32* %s.addr
  %t131 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v50
  %.v51 = load i32, i32* %i
  %t133 = getelementptr [10 x i32], [10 x i32]* %t131, i64 0, i32 %.v51
  %.v52 = load i32, i32* %t133
  %.v53 = load i32, i32* %d
  %.v54 = sub i32 %.v52, %.v53
  %.v55 = load i32, i32* %s.addr
  %t138 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v55
  %.v56 = load i32, i32* %i
  %t140 = getelementptr [10 x i32], [10 x i32]* %t138, i64 0, i32 %.v56
  store i32 %.v54, i32* %t140
  %.v57 = load i32, i32* %s.addr
  %t142 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i32 %.v57
  %.v58 = load i32, i32* %i
  %t144 = getelementptr [10 x i32], [10 x i32]* %t142, i64 0, i32 %.v58
  %.v59 = load i32, i32* %t144
  %t146 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v59
  %.v60 = load i32, i32* %s.addr
  %t148 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i32 %.v60
  %.v61 = load i32, i32* %i
  %t150 = getelementptr [10 x i32], [10 x i32]* %t148, i64 0, i32 %.v61
  %.v62 = load i32, i32* %t150
  %t152 = getelementptr [10 x i32], [10 x i32]* %t146, i64 0, i32 %.v62
  %.v63 = load i32, i32* %t152
  %.v64 = load i32, i32* %d
  %.v65 = add i32 %.v63, %.v64
  %.v66 = load i32, i32* %s.addr
  %t157 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i32 %.v66
  %.v67 = load i32, i32* %i
  %t159 = getelementptr [10 x i32], [10 x i32]* %t157, i64 0, i32 %.v67
  %.v68 = load i32, i32* %t159
  %t161 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i32 %.v68
  %.v69 = load i32, i32* %s.addr
  %t163 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i32 %.v69
  %.v70 = load i32, i32* %i
  %t165 = getelementptr [10 x i32], [10 x i32]* %t163, i64 0, i32 %.v70
  %.v71 = load i32, i32* %t165
  %t167 = getelementptr [10 x i32], [10 x i32]* %t161, i64 0, i32 %.v71
  store i32 %.v65, i32* %t167
  %.v72 = load i32, i32* %d
  ret i32 %.v72
if.end14:
  %.v73 = load i32, i32* %i
  %.v74 = add i32 %.v73, 1
  store i32 %.v74, i32* %i
  br label %while.cond3
}

define i32 @max_flow(i32 %s, i32 %t) {
entry:
  %f = alloca i32
  %flow = alloca i32
  %t.addr = alloca i32
  %s.addr = alloca i32
  store i32 %s, i32* %s.addr
  store i32 %t, i32* %t.addr
  store i32 0, i32* %flow
  br label %while.cond1
while.cond1:
  %.v1 = icmp ne i32 1, 0
  br i1 %.v1, label %while.body2, label %while.end3
while.body2:
  %.v2 = getelementptr [10 x i32], [10 x i32]* @used, i64 0, i64 0
  call void @my_memset(i32* %.v2, i32 0, i32 10)
  %.v3 = load i32, i32* %s.addr
  %.v4 = load i32, i32* %t.addr
  %.v5 = load i32, i32* @INF
  %.v6 = call i32 @dfs(i32 %.v3, i32 %.v4, i32 %.v5)
  store i32 %.v6, i32* %f
  %.v7 = load i32, i32* %f
  %.v8 = icmp eq i32 %.v7, 0
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  br i1 %.v10, label %if.then4, label %if.end5
while.end3:
  ret i32 0
if.then4:
  %.v11 = load i32, i32* %flow
  ret i32 %.v11
if.end5:
  %.v12 = load i32, i32* %flow
  %.v13 = load i32, i32* %f
  %.v14 = add i32 %.v12, %.v13
  store i32 %.v14, i32* %flow
  br label %while.cond1
}

define i32 @main() {
entry:
  %c = alloca i32
  %v = alloca i32
  %u = alloca i32
  %E = alloca i32
  %V = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %V
  %.v2 = call i32 @getint()
  store i32 %.v2, i32* %E
  %.v3 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 0
  call void @my_memset(i32* %.v3, i32 0, i32 10)
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %E
  %.v5 = icmp sgt i32 %.v4, 0
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  %.v8 = call i32 @getint()
  store i32 %.v8, i32* %u
  %.v9 = call i32 @getint()
  store i32 %.v9, i32* %v
  %.v10 = call i32 @getint()
  store i32 %.v10, i32* %c
  %.v11 = load i32, i32* %u
  %.v12 = load i32, i32* %v
  %.v13 = load i32, i32* %c
  call void @add_node(i32 %.v11, i32 %.v12, i32 %.v13)
  %.v14 = load i32, i32* %E
  %.v15 = sub i32 %.v14, 1
  store i32 %.v15, i32* %E
  br label %while.cond1
while.end3:
  %.v16 = load i32, i32* %V
  %.v17 = call i32 @max_flow(i32 1, i32 %.v16)
  call void @putint(i32 %.v17)
  call void @putch(i32 10)
  ret i32 0
}

