@maxn = constant i32 18
@mod = constant i32 1000000007
@dp = global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer
@list = global [200 x i32] zeroinitializer
@cns = global [20 x i32] zeroinitializer
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

define i32 @equal(i32 %a, i32 %b) {
entry:
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %a.addr
  %.v2 = load i32, i32* %b.addr
  %.v3 = icmp eq i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %if.then1, label %if.end2
if.then1:
  ret i32 1
if.end2:
  ret i32 0
}

define i32 @dfs(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %last) {
entry:
  %ans = alloca i32
  %last.addr = alloca i32
  %e.addr = alloca i32
  %d.addr = alloca i32
  %c.addr = alloca i32
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  store i32 %c, i32* %c.addr
  store i32 %d, i32* %d.addr
  store i32 %e, i32* %e.addr
  store i32 %last, i32* %last.addr
  %.v1 = load i32, i32* %a.addr
  %t6 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i32 %.v1
  %.v2 = load i32, i32* %b.addr
  %t8 = getelementptr [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t6, i64 0, i32 %.v2
  %.v3 = load i32, i32* %c.addr
  %t10 = getelementptr [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t8, i64 0, i32 %.v3
  %.v4 = load i32, i32* %d.addr
  %t12 = getelementptr [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t10, i64 0, i32 %.v4
  %.v5 = load i32, i32* %e.addr
  %t14 = getelementptr [18 x [7 x i32]], [18 x [7 x i32]]* %t12, i64 0, i32 %.v5
  %.v6 = load i32, i32* %last.addr
  %t16 = getelementptr [7 x i32], [7 x i32]* %t14, i64 0, i32 %.v6
  %.v7 = load i32, i32* %t16
  %.v8 = sub i32 0, 1
  %.v9 = icmp ne i32 %.v7, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then1, label %if.end2
if.then1:
  %.v12 = load i32, i32* %a.addr
  %t23 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i32 %.v12
  %.v13 = load i32, i32* %b.addr
  %t25 = getelementptr [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t23, i64 0, i32 %.v13
  %.v14 = load i32, i32* %c.addr
  %t27 = getelementptr [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t25, i64 0, i32 %.v14
  %.v15 = load i32, i32* %d.addr
  %t29 = getelementptr [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t27, i64 0, i32 %.v15
  %.v16 = load i32, i32* %e.addr
  %t31 = getelementptr [18 x [7 x i32]], [18 x [7 x i32]]* %t29, i64 0, i32 %.v16
  %.v17 = load i32, i32* %last.addr
  %t33 = getelementptr [7 x i32], [7 x i32]* %t31, i64 0, i32 %.v17
  %.v18 = load i32, i32* %t33
  ret i32 %.v18
if.end2:
  %.v19 = load i32, i32* %a.addr
  %.v20 = load i32, i32* %b.addr
  %.v21 = add i32 %.v19, %.v20
  %.v22 = load i32, i32* %c.addr
  %.v23 = add i32 %.v21, %.v22
  %.v24 = load i32, i32* %d.addr
  %.v25 = add i32 %.v23, %.v24
  %.v26 = load i32, i32* %e.addr
  %.v27 = add i32 %.v25, %.v26
  %.v28 = icmp eq i32 %.v27, 0
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %if.then3, label %if.end4
if.then3:
  ret i32 1
if.end4:
  store i32 0, i32* %ans
  %.v31 = load i32, i32* %a.addr
  %.v32 = icmp ne i32 %.v31, 0
  br i1 %.v32, label %if.then5, label %if.end6
if.then5:
  %.v33 = load i32, i32* %ans
  %.v34 = load i32, i32* %a.addr
  %.v35 = load i32, i32* %last.addr
  %.v36 = call i32 @equal(i32 %.v35, i32 2)
  %.v37 = sub i32 %.v34, %.v36
  %.v38 = load i32, i32* %a.addr
  %.v39 = sub i32 %.v38, 1
  %.v40 = load i32, i32* %b.addr
  %.v41 = load i32, i32* %c.addr
  %.v42 = load i32, i32* %d.addr
  %.v43 = load i32, i32* %e.addr
  %.v44 = call i32 @dfs(i32 %.v39, i32 %.v40, i32 %.v41, i32 %.v42, i32 %.v43, i32 1)
  %.v45 = mul i32 %.v37, %.v44
  %.v46 = add i32 %.v33, %.v45
  %.v47 = load i32, i32* @mod
  %.v48 = srem i32 %.v46, %.v47
  store i32 %.v48, i32* %ans
  br label %if.end6
if.end6:
  %.v49 = load i32, i32* %b.addr
  %.v50 = icmp ne i32 %.v49, 0
  br i1 %.v50, label %if.then7, label %if.end8
if.then7:
  %.v51 = load i32, i32* %ans
  %.v52 = load i32, i32* %b.addr
  %.v53 = load i32, i32* %last.addr
  %.v54 = call i32 @equal(i32 %.v53, i32 3)
  %.v55 = sub i32 %.v52, %.v54
  %.v56 = load i32, i32* %a.addr
  %.v57 = add i32 %.v56, 1
  %.v58 = load i32, i32* %b.addr
  %.v59 = sub i32 %.v58, 1
  %.v60 = load i32, i32* %c.addr
  %.v61 = load i32, i32* %d.addr
  %.v62 = load i32, i32* %e.addr
  %.v63 = call i32 @dfs(i32 %.v57, i32 %.v59, i32 %.v60, i32 %.v61, i32 %.v62, i32 2)
  %.v64 = mul i32 %.v55, %.v63
  %.v65 = add i32 %.v51, %.v64
  %.v66 = load i32, i32* @mod
  %.v67 = srem i32 %.v65, %.v66
  store i32 %.v67, i32* %ans
  br label %if.end8
if.end8:
  %.v68 = load i32, i32* %c.addr
  %.v69 = icmp ne i32 %.v68, 0
  br i1 %.v69, label %if.then9, label %if.end10
if.then9:
  %.v70 = load i32, i32* %ans
  %.v71 = load i32, i32* %c.addr
  %.v72 = load i32, i32* %last.addr
  %.v73 = call i32 @equal(i32 %.v72, i32 4)
  %.v74 = sub i32 %.v71, %.v73
  %.v75 = load i32, i32* %a.addr
  %.v76 = load i32, i32* %b.addr
  %.v77 = add i32 %.v76, 1
  %.v78 = load i32, i32* %c.addr
  %.v79 = sub i32 %.v78, 1
  %.v80 = load i32, i32* %d.addr
  %.v81 = load i32, i32* %e.addr
  %.v82 = call i32 @dfs(i32 %.v75, i32 %.v77, i32 %.v79, i32 %.v80, i32 %.v81, i32 3)
  %.v83 = mul i32 %.v74, %.v82
  %.v84 = add i32 %.v70, %.v83
  %.v85 = load i32, i32* @mod
  %.v86 = srem i32 %.v84, %.v85
  store i32 %.v86, i32* %ans
  br label %if.end10
if.end10:
  %.v87 = load i32, i32* %d.addr
  %.v88 = icmp ne i32 %.v87, 0
  br i1 %.v88, label %if.then11, label %if.end12
if.then11:
  %.v89 = load i32, i32* %ans
  %.v90 = load i32, i32* %d.addr
  %.v91 = load i32, i32* %last.addr
  %.v92 = call i32 @equal(i32 %.v91, i32 5)
  %.v93 = sub i32 %.v90, %.v92
  %.v94 = load i32, i32* %a.addr
  %.v95 = load i32, i32* %b.addr
  %.v96 = load i32, i32* %c.addr
  %.v97 = add i32 %.v96, 1
  %.v98 = load i32, i32* %d.addr
  %.v99 = sub i32 %.v98, 1
  %.v100 = load i32, i32* %e.addr
  %.v101 = call i32 @dfs(i32 %.v94, i32 %.v95, i32 %.v97, i32 %.v99, i32 %.v100, i32 4)
  %.v102 = mul i32 %.v93, %.v101
  %.v103 = add i32 %.v89, %.v102
  %.v104 = load i32, i32* @mod
  %.v105 = srem i32 %.v103, %.v104
  store i32 %.v105, i32* %ans
  br label %if.end12
if.end12:
  %.v106 = load i32, i32* %e.addr
  %.v107 = icmp ne i32 %.v106, 0
  br i1 %.v107, label %if.then13, label %if.end14
if.then13:
  %.v108 = load i32, i32* %ans
  %.v109 = load i32, i32* %e.addr
  %.v110 = load i32, i32* %a.addr
  %.v111 = load i32, i32* %b.addr
  %.v112 = load i32, i32* %c.addr
  %.v113 = load i32, i32* %d.addr
  %.v114 = add i32 %.v113, 1
  %.v115 = load i32, i32* %e.addr
  %.v116 = sub i32 %.v115, 1
  %.v117 = call i32 @dfs(i32 %.v110, i32 %.v111, i32 %.v112, i32 %.v114, i32 %.v116, i32 5)
  %.v118 = mul i32 %.v109, %.v117
  %.v119 = add i32 %.v108, %.v118
  %.v120 = load i32, i32* @mod
  %.v121 = srem i32 %.v119, %.v120
  store i32 %.v121, i32* %ans
  br label %if.end14
if.end14:
  %.v122 = load i32, i32* %ans
  %.v123 = load i32, i32* @mod
  %.v124 = srem i32 %.v122, %.v123
  %.v125 = load i32, i32* %a.addr
  %t142 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i32 %.v125
  %.v126 = load i32, i32* %b.addr
  %t144 = getelementptr [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t142, i64 0, i32 %.v126
  %.v127 = load i32, i32* %c.addr
  %t146 = getelementptr [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t144, i64 0, i32 %.v127
  %.v128 = load i32, i32* %d.addr
  %t148 = getelementptr [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t146, i64 0, i32 %.v128
  %.v129 = load i32, i32* %e.addr
  %t150 = getelementptr [18 x [7 x i32]], [18 x [7 x i32]]* %t148, i64 0, i32 %.v129
  %.v130 = load i32, i32* %last.addr
  %t152 = getelementptr [7 x i32], [7 x i32]* %t150, i64 0, i32 %.v130
  store i32 %.v124, i32* %t152
  %.v131 = load i32, i32* %a.addr
  %t154 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i32 %.v131
  %.v132 = load i32, i32* %b.addr
  %t156 = getelementptr [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t154, i64 0, i32 %.v132
  %.v133 = load i32, i32* %c.addr
  %t158 = getelementptr [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t156, i64 0, i32 %.v133
  %.v134 = load i32, i32* %d.addr
  %t160 = getelementptr [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t158, i64 0, i32 %.v134
  %.v135 = load i32, i32* %e.addr
  %t162 = getelementptr [18 x [7 x i32]], [18 x [7 x i32]]* %t160, i64 0, i32 %.v135
  %.v136 = load i32, i32* %last.addr
  %t164 = getelementptr [7 x i32], [7 x i32]* %t162, i64 0, i32 %.v136
  %.v137 = load i32, i32* %t164
  ret i32 %.v137
}

define i32 @main() {
entry:
  %ans = alloca i32
  %h = alloca i32
  %m = alloca i32
  %l = alloca i32
  %k = alloca i32
  %j = alloca i32
  %i = alloca i32
  %n = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %n
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %i
  %.v3 = load i32, i32* @maxn
  %.v4 = icmp slt i32 %.v2, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %j
  br label %while.cond4
while.end3:
  store i32 0, i32* %i
  br label %while.cond19
while.cond4:
  %.v7 = load i32, i32* %j
  %.v8 = load i32, i32* @maxn
  %.v9 = icmp slt i32 %.v7, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %k
  br label %while.cond7
while.end6:
  %.v48 = load i32, i32* %i
  %.v49 = add i32 %.v48, 1
  store i32 %.v49, i32* %i
  br label %while.cond1
while.cond7:
  %.v12 = load i32, i32* %k
  %.v13 = load i32, i32* @maxn
  %.v14 = icmp slt i32 %.v12, %.v13
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %while.body8, label %while.end9
while.body8:
  store i32 0, i32* %l
  br label %while.cond10
while.end9:
  %.v46 = load i32, i32* %j
  %.v47 = add i32 %.v46, 1
  store i32 %.v47, i32* %j
  br label %while.cond4
while.cond10:
  %.v17 = load i32, i32* %l
  %.v18 = load i32, i32* @maxn
  %.v19 = icmp slt i32 %.v17, %.v18
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %while.body11, label %while.end12
while.body11:
  store i32 0, i32* %m
  br label %while.cond13
while.end12:
  %.v44 = load i32, i32* %k
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %k
  br label %while.cond7
while.cond13:
  %.v22 = load i32, i32* %m
  %.v23 = load i32, i32* @maxn
  %.v24 = icmp slt i32 %.v22, %.v23
  %.v25 = zext i1 %.v24 to i32
  %.v26 = icmp ne i32 %.v25, 0
  br i1 %.v26, label %while.body14, label %while.end15
while.body14:
  store i32 0, i32* %h
  br label %while.cond16
while.end15:
  %.v42 = load i32, i32* %l
  %.v43 = add i32 %.v42, 1
  store i32 %.v43, i32* %l
  br label %while.cond10
while.cond16:
  %.v27 = load i32, i32* %h
  %.v28 = icmp slt i32 %.v27, 7
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %while.body17, label %while.end18
while.body17:
  %.v31 = sub i32 0, 1
  %.v32 = load i32, i32* %i
  %t198 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i32 %.v32
  %.v33 = load i32, i32* %j
  %t200 = getelementptr [18 x [18 x [18 x [18 x [7 x i32]]]]], [18 x [18 x [18 x [18 x [7 x i32]]]]]* %t198, i64 0, i32 %.v33
  %.v34 = load i32, i32* %k
  %t202 = getelementptr [18 x [18 x [18 x [7 x i32]]]], [18 x [18 x [18 x [7 x i32]]]]* %t200, i64 0, i32 %.v34
  %.v35 = load i32, i32* %l
  %t204 = getelementptr [18 x [18 x [7 x i32]]], [18 x [18 x [7 x i32]]]* %t202, i64 0, i32 %.v35
  %.v36 = load i32, i32* %m
  %t206 = getelementptr [18 x [7 x i32]], [18 x [7 x i32]]* %t204, i64 0, i32 %.v36
  %.v37 = load i32, i32* %h
  %t208 = getelementptr [7 x i32], [7 x i32]* %t206, i64 0, i32 %.v37
  store i32 %.v31, i32* %t208
  %.v38 = load i32, i32* %h
  %.v39 = add i32 %.v38, 1
  store i32 %.v39, i32* %h
  br label %while.cond16
while.end18:
  %.v40 = load i32, i32* %m
  %.v41 = add i32 %.v40, 1
  store i32 %.v41, i32* %m
  br label %while.cond13
while.cond19:
  %.v50 = load i32, i32* %i
  %.v51 = load i32, i32* %n
  %.v52 = icmp slt i32 %.v50, %.v51
  %.v53 = zext i1 %.v52 to i32
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %while.body20, label %while.end21
while.body20:
  %.v55 = call i32 @getint()
  %.v56 = load i32, i32* %i
  %t228 = getelementptr [200 x i32], [200 x i32]* @list, i64 0, i32 %.v56
  store i32 %.v55, i32* %t228
  %.v57 = load i32, i32* %i
  %t230 = getelementptr [200 x i32], [200 x i32]* @list, i64 0, i32 %.v57
  %.v58 = load i32, i32* %t230
  %t232 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 %.v58
  %.v59 = load i32, i32* %t232
  %.v60 = add i32 %.v59, 1
  %.v61 = load i32, i32* %i
  %t236 = getelementptr [200 x i32], [200 x i32]* @list, i64 0, i32 %.v61
  %.v62 = load i32, i32* %t236
  %t238 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 %.v62
  store i32 %.v60, i32* %t238
  %.v63 = load i32, i32* %i
  %.v64 = add i32 %.v63, 1
  store i32 %.v64, i32* %i
  br label %while.cond19
while.end21:
  %t241 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 1
  %.v65 = load i32, i32* %t241
  %t243 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 2
  %.v66 = load i32, i32* %t243
  %t245 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 3
  %.v67 = load i32, i32* %t245
  %t247 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 4
  %.v68 = load i32, i32* %t247
  %t249 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i32 5
  %.v69 = load i32, i32* %t249
  %.v70 = call i32 @dfs(i32 %.v65, i32 %.v66, i32 %.v67, i32 %.v68, i32 %.v69, i32 0)
  store i32 %.v70, i32* %ans
  %.v71 = load i32, i32* %ans
  call void @putint(i32 %.v71)
  %.v72 = load i32, i32* %ans
  ret i32 %.v72
}

