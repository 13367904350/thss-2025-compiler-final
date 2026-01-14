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

define void @my_memset(i32* %arr, i32 %val, i32 %n) {
entry:
  %i = alloca i32
  %n.addr = alloca i32
  %val.addr = alloca i32
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
  %t7 = sext i32 %.v7 to i64
  %t8 = getelementptr i32, i32* %arr, i64 %t7
  store i32 %.v6, i32* %t8
  %.v8 = load i32, i32* %i
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %i
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
  %t13 = sext i32 %.v2 to i64
  %.v3 = load i32, i32* %u.addr
  %t15 = sext i32 %.v3 to i64
  %t16 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t15
  %.v4 = load i32, i32* %t16
  %t18 = sext i32 %.v4 to i64
  %t19 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %t13, i64 %t18
  store i32 %.v1, i32* %t19
  %.v5 = load i32, i32* %c.addr
  %.v6 = load i32, i32* %u.addr
  %t22 = sext i32 %.v6 to i64
  %.v7 = load i32, i32* %u.addr
  %t24 = sext i32 %.v7 to i64
  %t25 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t24
  %.v8 = load i32, i32* %t25
  %t27 = sext i32 %.v8 to i64
  %t28 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t22, i64 %t27
  store i32 %.v5, i32* %t28
  %.v9 = load i32, i32* %v.addr
  %t30 = sext i32 %.v9 to i64
  %t31 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t30
  %.v10 = load i32, i32* %t31
  %.v11 = load i32, i32* %u.addr
  %t34 = sext i32 %.v11 to i64
  %.v12 = load i32, i32* %u.addr
  %t36 = sext i32 %.v12 to i64
  %t37 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t36
  %.v13 = load i32, i32* %t37
  %t39 = sext i32 %.v13 to i64
  %t40 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %t34, i64 %t39
  store i32 %.v10, i32* %t40
  %.v14 = load i32, i32* %u.addr
  %.v15 = load i32, i32* %v.addr
  %t43 = sext i32 %.v15 to i64
  %.v16 = load i32, i32* %v.addr
  %t45 = sext i32 %.v16 to i64
  %t46 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t45
  %.v17 = load i32, i32* %t46
  %t48 = sext i32 %.v17 to i64
  %t49 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %t43, i64 %t48
  store i32 %.v14, i32* %t49
  %.v18 = load i32, i32* %v.addr
  %t51 = sext i32 %.v18 to i64
  %.v19 = load i32, i32* %v.addr
  %t53 = sext i32 %.v19 to i64
  %t54 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t53
  %.v20 = load i32, i32* %t54
  %t56 = sext i32 %.v20 to i64
  %t57 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t51, i64 %t56
  store i32 0, i32* %t57
  %.v21 = load i32, i32* %u.addr
  %t59 = sext i32 %.v21 to i64
  %t60 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t59
  %.v22 = load i32, i32* %t60
  %.v23 = load i32, i32* %v.addr
  %t63 = sext i32 %.v23 to i64
  %.v24 = load i32, i32* %v.addr
  %t65 = sext i32 %.v24 to i64
  %t66 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t65
  %.v25 = load i32, i32* %t66
  %t68 = sext i32 %.v25 to i64
  %t69 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %t63, i64 %t68
  store i32 %.v22, i32* %t69
  %.v26 = load i32, i32* %u.addr
  %t71 = sext i32 %.v26 to i64
  %t72 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t71
  %.v27 = load i32, i32* %t72
  %.v28 = add i32 %.v27, 1
  %.v29 = load i32, i32* %u.addr
  %t76 = sext i32 %.v29 to i64
  %t77 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t76
  store i32 %.v28, i32* %t77
  %.v30 = load i32, i32* %v.addr
  %t79 = sext i32 %.v30 to i64
  %t80 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t79
  %.v31 = load i32, i32* %t80
  %.v32 = add i32 %.v31, 1
  %.v33 = load i32, i32* %v.addr
  %t84 = sext i32 %.v33 to i64
  %t85 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t84
  store i32 %.v32, i32* %t85
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
  %t93 = sext i32 %.v7 to i64
  %t94 = getelementptr [10 x i32], [10 x i32]* @used, i64 0, i64 %t93
  store i32 1, i32* %t94
  store i32 0, i32* %i
  br label %while.cond3
while.cond3:
  %.v8 = load i32, i32* %i
  %.v9 = load i32, i32* %s.addr
  %t97 = sext i32 %.v9 to i64
  %t98 = getelementptr [10 x i32], [10 x i32]* @size, i64 0, i64 %t97
  %.v10 = load i32, i32* %t98
  %.v11 = icmp slt i32 %.v8, %.v10
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %while.body4, label %while.end5
while.body4:
  %.v14 = load i32, i32* %s.addr
  %t104 = sext i32 %.v14 to i64
  %.v15 = load i32, i32* %i
  %t106 = sext i32 %.v15 to i64
  %t107 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %t104, i64 %t106
  %.v16 = load i32, i32* %t107
  %t109 = sext i32 %.v16 to i64
  %t110 = getelementptr [10 x i32], [10 x i32]* @used, i64 0, i64 %t109
  %.v17 = load i32, i32* %t110
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
  %t116 = sext i32 %.v21 to i64
  %.v22 = load i32, i32* %i
  %t118 = sext i32 %.v22 to i64
  %t119 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t116, i64 %t118
  %.v23 = load i32, i32* %t119
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
  %t128 = sext i32 %.v30 to i64
  %.v31 = load i32, i32* %i
  %t130 = sext i32 %.v31 to i64
  %t131 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t128, i64 %t130
  %.v32 = load i32, i32* %t131
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
  %t138 = sext i32 %.v37 to i64
  %.v38 = load i32, i32* %i
  %t140 = sext i32 %.v38 to i64
  %t141 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t138, i64 %t140
  %.v39 = load i32, i32* %t141
  store i32 %.v39, i32* %min_f
  br label %if.end12
if.end12:
  %.v40 = load i32, i32* %s.addr
  %t144 = sext i32 %.v40 to i64
  %.v41 = load i32, i32* %i
  %t146 = sext i32 %.v41 to i64
  %t147 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %t144, i64 %t146
  %.v42 = load i32, i32* %t147
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
  %t157 = sext i32 %.v50 to i64
  %.v51 = load i32, i32* %i
  %t159 = sext i32 %.v51 to i64
  %t160 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t157, i64 %t159
  %.v52 = load i32, i32* %t160
  %.v53 = load i32, i32* %d
  %.v54 = sub i32 %.v52, %.v53
  %.v55 = load i32, i32* %s.addr
  %t165 = sext i32 %.v55 to i64
  %.v56 = load i32, i32* %i
  %t167 = sext i32 %.v56 to i64
  %t168 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t165, i64 %t167
  store i32 %.v54, i32* %t168
  %.v57 = load i32, i32* %s.addr
  %t170 = sext i32 %.v57 to i64
  %.v58 = load i32, i32* %i
  %t172 = sext i32 %.v58 to i64
  %t173 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %t170, i64 %t172
  %.v59 = load i32, i32* %t173
  %t175 = sext i32 %.v59 to i64
  %.v60 = load i32, i32* %s.addr
  %t177 = sext i32 %.v60 to i64
  %.v61 = load i32, i32* %i
  %t179 = sext i32 %.v61 to i64
  %t180 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %t177, i64 %t179
  %.v62 = load i32, i32* %t180
  %t182 = sext i32 %.v62 to i64
  %t183 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t175, i64 %t182
  %.v63 = load i32, i32* %t183
  %.v64 = load i32, i32* %d
  %.v65 = add i32 %.v63, %.v64
  %.v66 = load i32, i32* %s.addr
  %t188 = sext i32 %.v66 to i64
  %.v67 = load i32, i32* %i
  %t190 = sext i32 %.v67 to i64
  %t191 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i64 0, i64 %t188, i64 %t190
  %.v68 = load i32, i32* %t191
  %t193 = sext i32 %.v68 to i64
  %.v69 = load i32, i32* %s.addr
  %t195 = sext i32 %.v69 to i64
  %.v70 = load i32, i32* %i
  %t197 = sext i32 %.v70 to i64
  %t198 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i64 0, i64 %t195, i64 %t197
  %.v71 = load i32, i32* %t198
  %t200 = sext i32 %.v71 to i64
  %t201 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i64 0, i64 %t193, i64 %t200
  store i32 %.v65, i32* %t201
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
  %.v5 = call i32 @dfs(i32 %.v3, i32 %.v4, i32 1879048192)
  store i32 %.v5, i32* %f
  %.v6 = load i32, i32* %f
  %.v7 = icmp eq i32 %.v6, 0
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then4, label %if.end5
while.end3:
  ret i32 0
if.then4:
  %.v10 = load i32, i32* %flow
  ret i32 %.v10
if.end5:
  %.v11 = load i32, i32* %flow
  %.v12 = load i32, i32* %f
  %.v13 = add i32 %.v11, %.v12
  store i32 %.v13, i32* %flow
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

