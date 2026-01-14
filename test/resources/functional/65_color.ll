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
  %t6 = sext i32 %.v1 to i64
  %.v2 = load i32, i32* %b.addr
  %t8 = sext i32 %.v2 to i64
  %.v3 = load i32, i32* %c.addr
  %t10 = sext i32 %.v3 to i64
  %.v4 = load i32, i32* %d.addr
  %t12 = sext i32 %.v4 to i64
  %.v5 = load i32, i32* %e.addr
  %t14 = sext i32 %.v5 to i64
  %.v6 = load i32, i32* %last.addr
  %t16 = sext i32 %.v6 to i64
  %t17 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %t6, i64 %t8, i64 %t10, i64 %t12, i64 %t14, i64 %t16
  %.v7 = load i32, i32* %t17
  %.v8 = sub i32 0, 1
  %.v9 = icmp ne i32 %.v7, %.v8
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then1, label %if.end2
if.then1:
  %.v12 = load i32, i32* %a.addr
  %t24 = sext i32 %.v12 to i64
  %.v13 = load i32, i32* %b.addr
  %t26 = sext i32 %.v13 to i64
  %.v14 = load i32, i32* %c.addr
  %t28 = sext i32 %.v14 to i64
  %.v15 = load i32, i32* %d.addr
  %t30 = sext i32 %.v15 to i64
  %.v16 = load i32, i32* %e.addr
  %t32 = sext i32 %.v16 to i64
  %.v17 = load i32, i32* %last.addr
  %t34 = sext i32 %.v17 to i64
  %t35 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %t24, i64 %t26, i64 %t28, i64 %t30, i64 %t32, i64 %t34
  %.v18 = load i32, i32* %t35
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
  %.v47 = srem i32 %.v46, 1000000007
  store i32 %.v47, i32* %ans
  br label %if.end6
if.end6:
  %.v48 = load i32, i32* %b.addr
  %.v49 = icmp ne i32 %.v48, 0
  br i1 %.v49, label %if.then7, label %if.end8
if.then7:
  %.v50 = load i32, i32* %ans
  %.v51 = load i32, i32* %b.addr
  %.v52 = load i32, i32* %last.addr
  %.v53 = call i32 @equal(i32 %.v52, i32 3)
  %.v54 = sub i32 %.v51, %.v53
  %.v55 = load i32, i32* %a.addr
  %.v56 = add i32 %.v55, 1
  %.v57 = load i32, i32* %b.addr
  %.v58 = sub i32 %.v57, 1
  %.v59 = load i32, i32* %c.addr
  %.v60 = load i32, i32* %d.addr
  %.v61 = load i32, i32* %e.addr
  %.v62 = call i32 @dfs(i32 %.v56, i32 %.v58, i32 %.v59, i32 %.v60, i32 %.v61, i32 2)
  %.v63 = mul i32 %.v54, %.v62
  %.v64 = add i32 %.v50, %.v63
  %.v65 = srem i32 %.v64, 1000000007
  store i32 %.v65, i32* %ans
  br label %if.end8
if.end8:
  %.v66 = load i32, i32* %c.addr
  %.v67 = icmp ne i32 %.v66, 0
  br i1 %.v67, label %if.then9, label %if.end10
if.then9:
  %.v68 = load i32, i32* %ans
  %.v69 = load i32, i32* %c.addr
  %.v70 = load i32, i32* %last.addr
  %.v71 = call i32 @equal(i32 %.v70, i32 4)
  %.v72 = sub i32 %.v69, %.v71
  %.v73 = load i32, i32* %a.addr
  %.v74 = load i32, i32* %b.addr
  %.v75 = add i32 %.v74, 1
  %.v76 = load i32, i32* %c.addr
  %.v77 = sub i32 %.v76, 1
  %.v78 = load i32, i32* %d.addr
  %.v79 = load i32, i32* %e.addr
  %.v80 = call i32 @dfs(i32 %.v73, i32 %.v75, i32 %.v77, i32 %.v78, i32 %.v79, i32 3)
  %.v81 = mul i32 %.v72, %.v80
  %.v82 = add i32 %.v68, %.v81
  %.v83 = srem i32 %.v82, 1000000007
  store i32 %.v83, i32* %ans
  br label %if.end10
if.end10:
  %.v84 = load i32, i32* %d.addr
  %.v85 = icmp ne i32 %.v84, 0
  br i1 %.v85, label %if.then11, label %if.end12
if.then11:
  %.v86 = load i32, i32* %ans
  %.v87 = load i32, i32* %d.addr
  %.v88 = load i32, i32* %last.addr
  %.v89 = call i32 @equal(i32 %.v88, i32 5)
  %.v90 = sub i32 %.v87, %.v89
  %.v91 = load i32, i32* %a.addr
  %.v92 = load i32, i32* %b.addr
  %.v93 = load i32, i32* %c.addr
  %.v94 = add i32 %.v93, 1
  %.v95 = load i32, i32* %d.addr
  %.v96 = sub i32 %.v95, 1
  %.v97 = load i32, i32* %e.addr
  %.v98 = call i32 @dfs(i32 %.v91, i32 %.v92, i32 %.v94, i32 %.v96, i32 %.v97, i32 4)
  %.v99 = mul i32 %.v90, %.v98
  %.v100 = add i32 %.v86, %.v99
  %.v101 = srem i32 %.v100, 1000000007
  store i32 %.v101, i32* %ans
  br label %if.end12
if.end12:
  %.v102 = load i32, i32* %e.addr
  %.v103 = icmp ne i32 %.v102, 0
  br i1 %.v103, label %if.then13, label %if.end14
if.then13:
  %.v104 = load i32, i32* %ans
  %.v105 = load i32, i32* %e.addr
  %.v106 = load i32, i32* %a.addr
  %.v107 = load i32, i32* %b.addr
  %.v108 = load i32, i32* %c.addr
  %.v109 = load i32, i32* %d.addr
  %.v110 = add i32 %.v109, 1
  %.v111 = load i32, i32* %e.addr
  %.v112 = sub i32 %.v111, 1
  %.v113 = call i32 @dfs(i32 %.v106, i32 %.v107, i32 %.v108, i32 %.v110, i32 %.v112, i32 5)
  %.v114 = mul i32 %.v105, %.v113
  %.v115 = add i32 %.v104, %.v114
  %.v116 = srem i32 %.v115, 1000000007
  store i32 %.v116, i32* %ans
  br label %if.end14
if.end14:
  %.v117 = load i32, i32* %ans
  %.v118 = srem i32 %.v117, 1000000007
  %.v119 = load i32, i32* %a.addr
  %t138 = sext i32 %.v119 to i64
  %.v120 = load i32, i32* %b.addr
  %t140 = sext i32 %.v120 to i64
  %.v121 = load i32, i32* %c.addr
  %t142 = sext i32 %.v121 to i64
  %.v122 = load i32, i32* %d.addr
  %t144 = sext i32 %.v122 to i64
  %.v123 = load i32, i32* %e.addr
  %t146 = sext i32 %.v123 to i64
  %.v124 = load i32, i32* %last.addr
  %t148 = sext i32 %.v124 to i64
  %t149 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %t138, i64 %t140, i64 %t142, i64 %t144, i64 %t146, i64 %t148
  store i32 %.v118, i32* %t149
  %.v125 = load i32, i32* %a.addr
  %t151 = sext i32 %.v125 to i64
  %.v126 = load i32, i32* %b.addr
  %t153 = sext i32 %.v126 to i64
  %.v127 = load i32, i32* %c.addr
  %t155 = sext i32 %.v127 to i64
  %.v128 = load i32, i32* %d.addr
  %t157 = sext i32 %.v128 to i64
  %.v129 = load i32, i32* %e.addr
  %t159 = sext i32 %.v129 to i64
  %.v130 = load i32, i32* %last.addr
  %t161 = sext i32 %.v130 to i64
  %t162 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %t151, i64 %t153, i64 %t155, i64 %t157, i64 %t159, i64 %t161
  %.v131 = load i32, i32* %t162
  ret i32 %.v131
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
  %.v3 = icmp slt i32 %.v2, 18
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %j
  br label %while.cond4
while.end3:
  store i32 0, i32* %i
  br label %while.cond19
while.cond4:
  %.v6 = load i32, i32* %j
  %.v7 = icmp slt i32 %.v6, 18
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %k
  br label %while.cond7
while.end6:
  %.v43 = load i32, i32* %i
  %.v44 = add i32 %.v43, 1
  store i32 %.v44, i32* %i
  br label %while.cond1
while.cond7:
  %.v10 = load i32, i32* %k
  %.v11 = icmp slt i32 %.v10, 18
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %while.body8, label %while.end9
while.body8:
  store i32 0, i32* %l
  br label %while.cond10
while.end9:
  %.v41 = load i32, i32* %j
  %.v42 = add i32 %.v41, 1
  store i32 %.v42, i32* %j
  br label %while.cond4
while.cond10:
  %.v14 = load i32, i32* %l
  %.v15 = icmp slt i32 %.v14, 18
  %.v16 = zext i1 %.v15 to i32
  %.v17 = icmp ne i32 %.v16, 0
  br i1 %.v17, label %while.body11, label %while.end12
while.body11:
  store i32 0, i32* %m
  br label %while.cond13
while.end12:
  %.v39 = load i32, i32* %k
  %.v40 = add i32 %.v39, 1
  store i32 %.v40, i32* %k
  br label %while.cond7
while.cond13:
  %.v18 = load i32, i32* %m
  %.v19 = icmp slt i32 %.v18, 18
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %while.body14, label %while.end15
while.body14:
  store i32 0, i32* %h
  br label %while.cond16
while.end15:
  %.v37 = load i32, i32* %l
  %.v38 = add i32 %.v37, 1
  store i32 %.v38, i32* %l
  br label %while.cond10
while.cond16:
  %.v22 = load i32, i32* %h
  %.v23 = icmp slt i32 %.v22, 7
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %while.body17, label %while.end18
while.body17:
  %.v26 = sub i32 0, 1
  %.v27 = load i32, i32* %i
  %t191 = sext i32 %.v27 to i64
  %.v28 = load i32, i32* %j
  %t193 = sext i32 %.v28 to i64
  %.v29 = load i32, i32* %k
  %t195 = sext i32 %.v29 to i64
  %.v30 = load i32, i32* %l
  %t197 = sext i32 %.v30 to i64
  %.v31 = load i32, i32* %m
  %t199 = sext i32 %.v31 to i64
  %.v32 = load i32, i32* %h
  %t201 = sext i32 %.v32 to i64
  %t202 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i64 0, i64 %t191, i64 %t193, i64 %t195, i64 %t197, i64 %t199, i64 %t201
  store i32 %.v26, i32* %t202
  %.v33 = load i32, i32* %h
  %.v34 = add i32 %.v33, 1
  store i32 %.v34, i32* %h
  br label %while.cond16
while.end18:
  %.v35 = load i32, i32* %m
  %.v36 = add i32 %.v35, 1
  store i32 %.v36, i32* %m
  br label %while.cond13
while.cond19:
  %.v45 = load i32, i32* %i
  %.v46 = load i32, i32* %n
  %.v47 = icmp slt i32 %.v45, %.v46
  %.v48 = zext i1 %.v47 to i32
  %.v49 = icmp ne i32 %.v48, 0
  br i1 %.v49, label %while.body20, label %while.end21
while.body20:
  %.v50 = call i32 @getint()
  %.v51 = load i32, i32* %i
  %t222 = sext i32 %.v51 to i64
  %t223 = getelementptr [200 x i32], [200 x i32]* @list, i64 0, i64 %t222
  store i32 %.v50, i32* %t223
  %.v52 = load i32, i32* %i
  %t225 = sext i32 %.v52 to i64
  %t226 = getelementptr [200 x i32], [200 x i32]* @list, i64 0, i64 %t225
  %.v53 = load i32, i32* %t226
  %t228 = sext i32 %.v53 to i64
  %t229 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t228
  %.v54 = load i32, i32* %t229
  %.v55 = add i32 %.v54, 1
  %.v56 = load i32, i32* %i
  %t233 = sext i32 %.v56 to i64
  %t234 = getelementptr [200 x i32], [200 x i32]* @list, i64 0, i64 %t233
  %.v57 = load i32, i32* %t234
  %t236 = sext i32 %.v57 to i64
  %t237 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t236
  store i32 %.v55, i32* %t237
  %.v58 = load i32, i32* %i
  %.v59 = add i32 %.v58, 1
  store i32 %.v59, i32* %i
  br label %while.cond19
while.end21:
  %t240 = sext i32 1 to i64
  %t241 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t240
  %.v60 = load i32, i32* %t241
  %t243 = sext i32 2 to i64
  %t244 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t243
  %.v61 = load i32, i32* %t244
  %t246 = sext i32 3 to i64
  %t247 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t246
  %.v62 = load i32, i32* %t247
  %t249 = sext i32 4 to i64
  %t250 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t249
  %.v63 = load i32, i32* %t250
  %t252 = sext i32 5 to i64
  %t253 = getelementptr [20 x i32], [20 x i32]* @cns, i64 0, i64 %t252
  %.v64 = load i32, i32* %t253
  %.v65 = call i32 @dfs(i32 %.v60, i32 %.v61, i32 %.v62, i32 %.v63, i32 %.v64, i32 0)
  store i32 %.v65, i32* %ans
  %.v66 = load i32, i32* %ans
  call void @putint(i32 %.v66)
  %.v67 = load i32, i32* %ans
  ret i32 %.v67
}

