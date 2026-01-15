@SHIFT_TABLE = constant [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768]
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

define i32 @long_func() {
entry:
  %.v2348 = alloca i32
  %.v2316 = alloca i32
  %sum.15 = alloca i32
  %c.15 = alloca i32
  %al.15 = alloca i32
  %.v2247 = alloca i32
  %.v2215 = alloca i32
  %sum.14 = alloca i32
  %c.14 = alloca i32
  %al.14 = alloca i32
  %.v2148 = alloca i32
  %mres.7 = alloca i32
  %mr.7 = alloca i32
  %ml.7 = alloca i32
  %.v2078 = alloca i32
  %.v2046 = alloca i32
  %sum.13 = alloca i32
  %c.13 = alloca i32
  %al.13 = alloca i32
  %.v1977 = alloca i32
  %.v1945 = alloca i32
  %sum.12 = alloca i32
  %c.12 = alloca i32
  %al.12 = alloca i32
  %.v1878 = alloca i32
  %mres.6 = alloca i32
  %mr.6 = alloca i32
  %ml.6 = alloca i32
  %.v1846 = alloca i32
  %pres.3 = alloca i32
  %pr.3 = alloca i32
  %pl.3 = alloca i32
  %.v1733 = alloca i32
  %.v1701 = alloca i32
  %sum.11 = alloca i32
  %c.11 = alloca i32
  %al.11 = alloca i32
  %.v1632 = alloca i32
  %.v1600 = alloca i32
  %sum.10 = alloca i32
  %c.10 = alloca i32
  %al.10 = alloca i32
  %.v1533 = alloca i32
  %mres.5 = alloca i32
  %mr.5 = alloca i32
  %ml.5 = alloca i32
  %.v1463 = alloca i32
  %.v1431 = alloca i32
  %sum.9 = alloca i32
  %c.9 = alloca i32
  %al.9 = alloca i32
  %.v1362 = alloca i32
  %.v1330 = alloca i32
  %sum.8 = alloca i32
  %c.8 = alloca i32
  %al.8 = alloca i32
  %.v1263 = alloca i32
  %mres.4 = alloca i32
  %mr.4 = alloca i32
  %ml.4 = alloca i32
  %.v1231 = alloca i32
  %pres.2 = alloca i32
  %pr.2 = alloca i32
  %pl.2 = alloca i32
  %.v1120 = alloca i32
  %.v1088 = alloca i32
  %sum.7 = alloca i32
  %c.7 = alloca i32
  %al.7 = alloca i32
  %.v1019 = alloca i32
  %.v987 = alloca i32
  %sum.6 = alloca i32
  %c.6 = alloca i32
  %al.6 = alloca i32
  %.v920 = alloca i32
  %mres.3 = alloca i32
  %mr.3 = alloca i32
  %ml.3 = alloca i32
  %.v850 = alloca i32
  %.v818 = alloca i32
  %sum.5 = alloca i32
  %c.5 = alloca i32
  %al.5 = alloca i32
  %.v749 = alloca i32
  %.v717 = alloca i32
  %sum.4 = alloca i32
  %c.4 = alloca i32
  %al.4 = alloca i32
  %.v650 = alloca i32
  %mres.2 = alloca i32
  %mr.2 = alloca i32
  %ml.2 = alloca i32
  %.v618 = alloca i32
  %pres.1 = alloca i32
  %pr.1 = alloca i32
  %pl.1 = alloca i32
  %.v512 = alloca i32
  %.v480 = alloca i32
  %sum.3 = alloca i32
  %c.3 = alloca i32
  %al.3 = alloca i32
  %.v411 = alloca i32
  %.v379 = alloca i32
  %sum.2 = alloca i32
  %c.2 = alloca i32
  %al.2 = alloca i32
  %.v312 = alloca i32
  %mres.1 = alloca i32
  %mr.1 = alloca i32
  %ml.1 = alloca i32
  %.v242 = alloca i32
  %.v210 = alloca i32
  %sum.1 = alloca i32
  %c.1 = alloca i32
  %al.1 = alloca i32
  %.v141 = alloca i32
  %.v109 = alloca i32
  %sum = alloca i32
  %c = alloca i32
  %al = alloca i32
  %.v42 = alloca i32
  %mres = alloca i32
  %mr = alloca i32
  %ml = alloca i32
  %.v10 = alloca i32
  %pres = alloca i32
  %pr = alloca i32
  %pl = alloca i32
  %cur = alloca i32
  %y = alloca i32
  %x = alloca i32
  %i = alloca i32
  %ans = alloca i32
  store i32 2, i32* %pl
  store i32 0, i32* %pr
  store i32 1, i32* %pres
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %pr
  %.v2 = icmp sgt i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v5 = load i32, i32* %pr
  store i32 %.v5, i32* %x
  store i32 1, i32* %y
  br label %while.cond4
while.end3:
  %.v607 = load i32, i32* %pres
  store i32 %.v607, i32* %ans
  %.v608 = load i32, i32* %ans
  call void @putint(i32 %.v608)
  call void @putch(i32 10)
  store i32 2, i32* %pl.1
  store i32 1, i32* %pr.1
  store i32 1, i32* %pres.1
  br label %while.cond193
while.cond4:
  %.v6 = load i32, i32* %i
  %.v7 = icmp slt i32 %.v6, 16
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %while.body5, label %while.end6
while.body5:
  store i32 0, i32* %.v10
  %.v11 = load i32, i32* %x
  %.v12 = srem i32 %.v11, 2
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %land.rhs9, label %land.end10
while.end6:
  %.v31 = load i32, i32* %ans
  %.v32 = icmp ne i32 %.v31, 0
  br i1 %.v32, label %if.then11, label %if.end12
if.then7:
  %.v20 = load i32, i32* %ans
  %.v21 = load i32, i32* %i
  %t20 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v21
  %.v22 = load i32, i32* %t20
  %.v23 = mul i32 1, %.v22
  %.v24 = add i32 %.v20, %.v23
  store i32 %.v24, i32* %ans
  br label %if.end8
if.end8:
  %.v25 = load i32, i32* %x
  %.v26 = sdiv i32 %.v25, 2
  store i32 %.v26, i32* %x
  %.v27 = load i32, i32* %y
  %.v28 = sdiv i32 %.v27, 2
  store i32 %.v28, i32* %y
  %.v29 = load i32, i32* %i
  %.v30 = add i32 %.v29, 1
  store i32 %.v30, i32* %i
  br label %while.cond4
land.rhs9:
  %.v14 = load i32, i32* %y
  %.v15 = srem i32 %.v14, 2
  %.v16 = icmp ne i32 %.v15, 0
  %.v17 = zext i1 %.v16 to i32
  store i32 %.v17, i32* %.v10
  br label %land.end10
land.end10:
  %.v18 = load i32, i32* %.v10
  %.v19 = icmp ne i32 %.v18, 0
  br i1 %.v19, label %if.then7, label %if.end8
if.then11:
  %.v33 = load i32, i32* %pres
  store i32 %.v33, i32* %ml
  %.v34 = load i32, i32* %pl
  store i32 %.v34, i32* %mr
  store i32 0, i32* %mres
  br label %while.cond13
if.end12:
  %.v303 = load i32, i32* %pl
  store i32 %.v303, i32* %ml.1
  %.v304 = load i32, i32* %pl
  store i32 %.v304, i32* %mr.1
  store i32 0, i32* %mres.1
  br label %while.cond97
while.cond13:
  %.v35 = load i32, i32* %mr
  %.v36 = icmp ne i32 %.v35, 0
  br i1 %.v36, label %while.body14, label %while.end15
while.body14:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v37 = load i32, i32* %mr
  store i32 %.v37, i32* %x
  store i32 1, i32* %y
  br label %while.cond16
while.end15:
  %.v301 = load i32, i32* %mres
  store i32 %.v301, i32* %ans
  %.v302 = load i32, i32* %ans
  store i32 %.v302, i32* %pres
  br label %if.end12
while.cond16:
  %.v38 = load i32, i32* %i
  %.v39 = icmp slt i32 %.v38, 16
  %.v40 = zext i1 %.v39 to i32
  %.v41 = icmp ne i32 %.v40, 0
  br i1 %.v41, label %while.body17, label %while.end18
while.body17:
  store i32 0, i32* %.v42
  %.v43 = load i32, i32* %x
  %.v44 = srem i32 %.v43, 2
  %.v45 = icmp ne i32 %.v44, 0
  br i1 %.v45, label %land.rhs21, label %land.end22
while.end18:
  %.v63 = load i32, i32* %ans
  %.v64 = icmp ne i32 %.v63, 0
  br i1 %.v64, label %if.then23, label %if.end24
if.then19:
  %.v52 = load i32, i32* %ans
  %.v53 = load i32, i32* %i
  %t52 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v53
  %.v54 = load i32, i32* %t52
  %.v55 = mul i32 1, %.v54
  %.v56 = add i32 %.v52, %.v55
  store i32 %.v56, i32* %ans
  br label %if.end20
if.end20:
  %.v57 = load i32, i32* %x
  %.v58 = sdiv i32 %.v57, 2
  store i32 %.v58, i32* %x
  %.v59 = load i32, i32* %y
  %.v60 = sdiv i32 %.v59, 2
  store i32 %.v60, i32* %y
  %.v61 = load i32, i32* %i
  %.v62 = add i32 %.v61, 1
  store i32 %.v62, i32* %i
  br label %while.cond16
land.rhs21:
  %.v46 = load i32, i32* %y
  %.v47 = srem i32 %.v46, 2
  %.v48 = icmp ne i32 %.v47, 0
  %.v49 = zext i1 %.v48 to i32
  store i32 %.v49, i32* %.v42
  br label %land.end22
land.end22:
  %.v50 = load i32, i32* %.v42
  %.v51 = icmp ne i32 %.v50, 0
  br i1 %.v51, label %if.then19, label %if.end20
if.then23:
  %.v65 = load i32, i32* %mres
  store i32 %.v65, i32* %al
  %.v66 = load i32, i32* %ml
  store i32 %.v66, i32* %c
  br label %while.cond25
if.end24:
  %.v166 = load i32, i32* %ml
  store i32 %.v166, i32* %al.1
  %.v167 = load i32, i32* %ml
  store i32 %.v167, i32* %c.1
  br label %while.cond55
while.cond25:
  %.v67 = load i32, i32* %c
  %.v68 = icmp ne i32 %.v67, 0
  br i1 %.v68, label %while.body26, label %while.end27
while.body26:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v69 = load i32, i32* %al
  store i32 %.v69, i32* %x
  %.v70 = load i32, i32* %c
  store i32 %.v70, i32* %y
  br label %while.cond28
while.end27:
  %.v164 = load i32, i32* %al
  store i32 %.v164, i32* %ans
  %.v165 = load i32, i32* %ans
  store i32 %.v165, i32* %mres
  br label %if.end24
while.cond28:
  %.v71 = load i32, i32* %i
  %.v72 = icmp slt i32 %.v71, 16
  %.v73 = zext i1 %.v72 to i32
  %.v74 = icmp ne i32 %.v73, 0
  br i1 %.v74, label %while.body29, label %while.end30
while.body29:
  %.v75 = load i32, i32* %x
  %.v76 = srem i32 %.v75, 2
  %.v77 = icmp ne i32 %.v76, 0
  br i1 %.v77, label %if.then31, label %if.else32
while.end30:
  %.v102 = load i32, i32* %ans
  store i32 %.v102, i32* %sum
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v103 = load i32, i32* %al
  store i32 %.v103, i32* %x
  %.v104 = load i32, i32* %c
  store i32 %.v104, i32* %y
  br label %while.cond38
if.then31:
  %.v78 = load i32, i32* %y
  %.v79 = srem i32 %.v78, 2
  %.v80 = icmp eq i32 %.v79, 0
  %.v81 = zext i1 %.v80 to i32
  %.v82 = icmp ne i32 %.v81, 0
  br i1 %.v82, label %if.then34, label %if.end35
if.else32:
  %.v88 = load i32, i32* %y
  %.v89 = srem i32 %.v88, 2
  %.v90 = icmp ne i32 %.v89, 0
  br i1 %.v90, label %if.then36, label %if.end37
if.end33:
  %.v96 = load i32, i32* %x
  %.v97 = sdiv i32 %.v96, 2
  store i32 %.v97, i32* %x
  %.v98 = load i32, i32* %y
  %.v99 = sdiv i32 %.v98, 2
  store i32 %.v99, i32* %y
  %.v100 = load i32, i32* %i
  %.v101 = add i32 %.v100, 1
  store i32 %.v101, i32* %i
  br label %while.cond28
if.then34:
  %.v83 = load i32, i32* %ans
  %.v84 = load i32, i32* %i
  %t84 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v84
  %.v85 = load i32, i32* %t84
  %.v86 = mul i32 1, %.v85
  %.v87 = add i32 %.v83, %.v86
  store i32 %.v87, i32* %ans
  br label %if.end35
if.end35:
  br label %if.end33
if.then36:
  %.v91 = load i32, i32* %ans
  %.v92 = load i32, i32* %i
  %t93 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v92
  %.v93 = load i32, i32* %t93
  %.v94 = mul i32 1, %.v93
  %.v95 = add i32 %.v91, %.v94
  store i32 %.v95, i32* %ans
  br label %if.end37
if.end37:
  br label %if.end33
while.cond38:
  %.v105 = load i32, i32* %i
  %.v106 = icmp slt i32 %.v105, 16
  %.v107 = zext i1 %.v106 to i32
  %.v108 = icmp ne i32 %.v107, 0
  br i1 %.v108, label %while.body39, label %while.end40
while.body39:
  store i32 0, i32* %.v109
  %.v110 = load i32, i32* %x
  %.v111 = srem i32 %.v110, 2
  %.v112 = icmp ne i32 %.v111, 0
  br i1 %.v112, label %land.rhs43, label %land.end44
while.end40:
  %.v130 = load i32, i32* %ans
  store i32 %.v130, i32* %c
  %.v131 = icmp sgt i32 1, 15
  %.v132 = zext i1 %.v131 to i32
  %.v133 = icmp ne i32 %.v132, 0
  br i1 %.v133, label %if.then45, label %if.else46
if.then41:
  %.v119 = load i32, i32* %ans
  %.v120 = load i32, i32* %i
  %t121 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v120
  %.v121 = load i32, i32* %t121
  %.v122 = mul i32 1, %.v121
  %.v123 = add i32 %.v119, %.v122
  store i32 %.v123, i32* %ans
  br label %if.end42
if.end42:
  %.v124 = load i32, i32* %x
  %.v125 = sdiv i32 %.v124, 2
  store i32 %.v125, i32* %x
  %.v126 = load i32, i32* %y
  %.v127 = sdiv i32 %.v126, 2
  store i32 %.v127, i32* %y
  %.v128 = load i32, i32* %i
  %.v129 = add i32 %.v128, 1
  store i32 %.v129, i32* %i
  br label %while.cond38
land.rhs43:
  %.v113 = load i32, i32* %y
  %.v114 = srem i32 %.v113, 2
  %.v115 = icmp ne i32 %.v114, 0
  %.v116 = zext i1 %.v115 to i32
  store i32 %.v116, i32* %.v109
  br label %land.end44
land.end44:
  %.v117 = load i32, i32* %.v109
  %.v118 = icmp ne i32 %.v117, 0
  br i1 %.v118, label %if.then41, label %if.end42
if.then45:
  store i32 0, i32* %ans
  br label %if.end47
if.else46:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v134 = load i32, i32* %c
  %t136 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v135 = load i32, i32* %t136
  %.v136 = mul i32 %.v134, %.v135
  store i32 %.v136, i32* %x
  store i32 65535, i32* %y
  br label %while.cond48
if.end47:
  %.v162 = load i32, i32* %ans
  store i32 %.v162, i32* %c
  %.v163 = load i32, i32* %sum
  store i32 %.v163, i32* %al
  br label %while.cond25
while.cond48:
  %.v137 = load i32, i32* %i
  %.v138 = icmp slt i32 %.v137, 16
  %.v139 = zext i1 %.v138 to i32
  %.v140 = icmp ne i32 %.v139, 0
  br i1 %.v140, label %while.body49, label %while.end50
while.body49:
  store i32 0, i32* %.v141
  %.v142 = load i32, i32* %x
  %.v143 = srem i32 %.v142, 2
  %.v144 = icmp ne i32 %.v143, 0
  br i1 %.v144, label %land.rhs53, label %land.end54
while.end50:
  br label %if.end47
if.then51:
  %.v151 = load i32, i32* %ans
  %.v152 = load i32, i32* %i
  %t154 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v152
  %.v153 = load i32, i32* %t154
  %.v154 = mul i32 1, %.v153
  %.v155 = add i32 %.v151, %.v154
  store i32 %.v155, i32* %ans
  br label %if.end52
if.end52:
  %.v156 = load i32, i32* %x
  %.v157 = sdiv i32 %.v156, 2
  store i32 %.v157, i32* %x
  %.v158 = load i32, i32* %y
  %.v159 = sdiv i32 %.v158, 2
  store i32 %.v159, i32* %y
  %.v160 = load i32, i32* %i
  %.v161 = add i32 %.v160, 1
  store i32 %.v161, i32* %i
  br label %while.cond48
land.rhs53:
  %.v145 = load i32, i32* %y
  %.v146 = srem i32 %.v145, 2
  %.v147 = icmp ne i32 %.v146, 0
  %.v148 = zext i1 %.v147 to i32
  store i32 %.v148, i32* %.v141
  br label %land.end54
land.end54:
  %.v149 = load i32, i32* %.v141
  %.v150 = icmp ne i32 %.v149, 0
  br i1 %.v150, label %if.then51, label %if.end52
while.cond55:
  %.v168 = load i32, i32* %c.1
  %.v169 = icmp ne i32 %.v168, 0
  br i1 %.v169, label %while.body56, label %while.end57
while.body56:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v170 = load i32, i32* %al.1
  store i32 %.v170, i32* %x
  %.v171 = load i32, i32* %c.1
  store i32 %.v171, i32* %y
  br label %while.cond58
while.end57:
  %.v265 = load i32, i32* %al.1
  store i32 %.v265, i32* %ans
  %.v266 = load i32, i32* %ans
  store i32 %.v266, i32* %ml
  %.v267 = load i32, i32* %mr
  store i32 %.v267, i32* %x
  store i32 1, i32* %y
  %.v268 = load i32, i32* %y
  %.v269 = icmp sge i32 %.v268, 15
  %.v270 = zext i1 %.v269 to i32
  %.v271 = icmp ne i32 %.v270, 0
  br i1 %.v271, label %if.then85, label %if.else86
while.cond58:
  %.v172 = load i32, i32* %i
  %.v173 = icmp slt i32 %.v172, 16
  %.v174 = zext i1 %.v173 to i32
  %.v175 = icmp ne i32 %.v174, 0
  br i1 %.v175, label %while.body59, label %while.end60
while.body59:
  %.v176 = load i32, i32* %x
  %.v177 = srem i32 %.v176, 2
  %.v178 = icmp ne i32 %.v177, 0
  br i1 %.v178, label %if.then61, label %if.else62
while.end60:
  %.v203 = load i32, i32* %ans
  store i32 %.v203, i32* %sum.1
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v204 = load i32, i32* %al.1
  store i32 %.v204, i32* %x
  %.v205 = load i32, i32* %c.1
  store i32 %.v205, i32* %y
  br label %while.cond68
if.then61:
  %.v179 = load i32, i32* %y
  %.v180 = srem i32 %.v179, 2
  %.v181 = icmp eq i32 %.v180, 0
  %.v182 = zext i1 %.v181 to i32
  %.v183 = icmp ne i32 %.v182, 0
  br i1 %.v183, label %if.then64, label %if.end65
if.else62:
  %.v189 = load i32, i32* %y
  %.v190 = srem i32 %.v189, 2
  %.v191 = icmp ne i32 %.v190, 0
  br i1 %.v191, label %if.then66, label %if.end67
if.end63:
  %.v197 = load i32, i32* %x
  %.v198 = sdiv i32 %.v197, 2
  store i32 %.v198, i32* %x
  %.v199 = load i32, i32* %y
  %.v200 = sdiv i32 %.v199, 2
  store i32 %.v200, i32* %y
  %.v201 = load i32, i32* %i
  %.v202 = add i32 %.v201, 1
  store i32 %.v202, i32* %i
  br label %while.cond58
if.then64:
  %.v184 = load i32, i32* %ans
  %.v185 = load i32, i32* %i
  %t188 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v185
  %.v186 = load i32, i32* %t188
  %.v187 = mul i32 1, %.v186
  %.v188 = add i32 %.v184, %.v187
  store i32 %.v188, i32* %ans
  br label %if.end65
if.end65:
  br label %if.end63
if.then66:
  %.v192 = load i32, i32* %ans
  %.v193 = load i32, i32* %i
  %t197 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v193
  %.v194 = load i32, i32* %t197
  %.v195 = mul i32 1, %.v194
  %.v196 = add i32 %.v192, %.v195
  store i32 %.v196, i32* %ans
  br label %if.end67
if.end67:
  br label %if.end63
while.cond68:
  %.v206 = load i32, i32* %i
  %.v207 = icmp slt i32 %.v206, 16
  %.v208 = zext i1 %.v207 to i32
  %.v209 = icmp ne i32 %.v208, 0
  br i1 %.v209, label %while.body69, label %while.end70
while.body69:
  store i32 0, i32* %.v210
  %.v211 = load i32, i32* %x
  %.v212 = srem i32 %.v211, 2
  %.v213 = icmp ne i32 %.v212, 0
  br i1 %.v213, label %land.rhs73, label %land.end74
while.end70:
  %.v231 = load i32, i32* %ans
  store i32 %.v231, i32* %c.1
  %.v232 = icmp sgt i32 1, 15
  %.v233 = zext i1 %.v232 to i32
  %.v234 = icmp ne i32 %.v233, 0
  br i1 %.v234, label %if.then75, label %if.else76
if.then71:
  %.v220 = load i32, i32* %ans
  %.v221 = load i32, i32* %i
  %t225 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v221
  %.v222 = load i32, i32* %t225
  %.v223 = mul i32 1, %.v222
  %.v224 = add i32 %.v220, %.v223
  store i32 %.v224, i32* %ans
  br label %if.end72
if.end72:
  %.v225 = load i32, i32* %x
  %.v226 = sdiv i32 %.v225, 2
  store i32 %.v226, i32* %x
  %.v227 = load i32, i32* %y
  %.v228 = sdiv i32 %.v227, 2
  store i32 %.v228, i32* %y
  %.v229 = load i32, i32* %i
  %.v230 = add i32 %.v229, 1
  store i32 %.v230, i32* %i
  br label %while.cond68
land.rhs73:
  %.v214 = load i32, i32* %y
  %.v215 = srem i32 %.v214, 2
  %.v216 = icmp ne i32 %.v215, 0
  %.v217 = zext i1 %.v216 to i32
  store i32 %.v217, i32* %.v210
  br label %land.end74
land.end74:
  %.v218 = load i32, i32* %.v210
  %.v219 = icmp ne i32 %.v218, 0
  br i1 %.v219, label %if.then71, label %if.end72
if.then75:
  store i32 0, i32* %ans
  br label %if.end77
if.else76:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v235 = load i32, i32* %c.1
  %t240 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v236 = load i32, i32* %t240
  %.v237 = mul i32 %.v235, %.v236
  store i32 %.v237, i32* %x
  store i32 65535, i32* %y
  br label %while.cond78
if.end77:
  %.v263 = load i32, i32* %ans
  store i32 %.v263, i32* %c.1
  %.v264 = load i32, i32* %sum.1
  store i32 %.v264, i32* %al.1
  br label %while.cond55
while.cond78:
  %.v238 = load i32, i32* %i
  %.v239 = icmp slt i32 %.v238, 16
  %.v240 = zext i1 %.v239 to i32
  %.v241 = icmp ne i32 %.v240, 0
  br i1 %.v241, label %while.body79, label %while.end80
while.body79:
  store i32 0, i32* %.v242
  %.v243 = load i32, i32* %x
  %.v244 = srem i32 %.v243, 2
  %.v245 = icmp ne i32 %.v244, 0
  br i1 %.v245, label %land.rhs83, label %land.end84
while.end80:
  br label %if.end77
if.then81:
  %.v252 = load i32, i32* %ans
  %.v253 = load i32, i32* %i
  %t258 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v253
  %.v254 = load i32, i32* %t258
  %.v255 = mul i32 1, %.v254
  %.v256 = add i32 %.v252, %.v255
  store i32 %.v256, i32* %ans
  br label %if.end82
if.end82:
  %.v257 = load i32, i32* %x
  %.v258 = sdiv i32 %.v257, 2
  store i32 %.v258, i32* %x
  %.v259 = load i32, i32* %y
  %.v260 = sdiv i32 %.v259, 2
  store i32 %.v260, i32* %y
  %.v261 = load i32, i32* %i
  %.v262 = add i32 %.v261, 1
  store i32 %.v262, i32* %i
  br label %while.cond78
land.rhs83:
  %.v246 = load i32, i32* %y
  %.v247 = srem i32 %.v246, 2
  %.v248 = icmp ne i32 %.v247, 0
  %.v249 = zext i1 %.v248 to i32
  store i32 %.v249, i32* %.v242
  br label %land.end84
land.end84:
  %.v250 = load i32, i32* %.v242
  %.v251 = icmp ne i32 %.v250, 0
  br i1 %.v251, label %if.then81, label %if.end82
if.then85:
  %.v272 = load i32, i32* %x
  %.v273 = icmp slt i32 %.v272, 0
  %.v274 = zext i1 %.v273 to i32
  %.v275 = icmp ne i32 %.v274, 0
  br i1 %.v275, label %if.then88, label %if.else89
if.else86:
  %.v276 = load i32, i32* %y
  %.v277 = icmp sgt i32 %.v276, 0
  %.v278 = zext i1 %.v277 to i32
  %.v279 = icmp ne i32 %.v278, 0
  br i1 %.v279, label %if.then91, label %if.else92
if.end87:
  %.v300 = load i32, i32* %ans
  store i32 %.v300, i32* %mr
  br label %while.cond13
if.then88:
  store i32 65535, i32* %ans
  br label %if.end90
if.else89:
  store i32 0, i32* %ans
  br label %if.end90
if.end90:
  br label %if.end87
if.then91:
  %.v280 = load i32, i32* %x
  %.v281 = icmp sgt i32 %.v280, 32767
  %.v282 = zext i1 %.v281 to i32
  %.v283 = icmp ne i32 %.v282, 0
  br i1 %.v283, label %if.then94, label %if.else95
if.else92:
  %.v299 = load i32, i32* %x
  store i32 %.v299, i32* %ans
  br label %if.end93
if.end93:
  br label %if.end87
if.then94:
  %.v284 = load i32, i32* %x
  %.v285 = load i32, i32* %y
  %t291 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v285
  %.v286 = load i32, i32* %t291
  %.v287 = sdiv i32 %.v284, %.v286
  store i32 %.v287, i32* %x
  %.v288 = load i32, i32* %x
  %.v289 = add i32 %.v288, 65536
  %.v290 = load i32, i32* %y
  %.v291 = sub i32 15, %.v290
  %.v292 = add i32 %.v291, 1
  %t299 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v292
  %.v293 = load i32, i32* %t299
  %.v294 = sub i32 %.v289, %.v293
  store i32 %.v294, i32* %ans
  br label %if.end96
if.else95:
  %.v295 = load i32, i32* %x
  %.v296 = load i32, i32* %y
  %t304 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v296
  %.v297 = load i32, i32* %t304
  %.v298 = sdiv i32 %.v295, %.v297
  store i32 %.v298, i32* %ans
  br label %if.end96
if.end96:
  br label %if.end93
while.cond97:
  %.v305 = load i32, i32* %mr.1
  %.v306 = icmp ne i32 %.v305, 0
  br i1 %.v306, label %while.body98, label %while.end99
while.body98:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v307 = load i32, i32* %mr.1
  store i32 %.v307, i32* %x
  store i32 1, i32* %y
  br label %while.cond100
while.end99:
  %.v571 = load i32, i32* %mres.1
  store i32 %.v571, i32* %ans
  %.v572 = load i32, i32* %ans
  store i32 %.v572, i32* %pl
  %.v573 = load i32, i32* %pr
  store i32 %.v573, i32* %x
  store i32 1, i32* %y
  %.v574 = load i32, i32* %y
  %.v575 = icmp sge i32 %.v574, 15
  %.v576 = zext i1 %.v575 to i32
  %.v577 = icmp ne i32 %.v576, 0
  br i1 %.v577, label %if.then181, label %if.else182
while.cond100:
  %.v308 = load i32, i32* %i
  %.v309 = icmp slt i32 %.v308, 16
  %.v310 = zext i1 %.v309 to i32
  %.v311 = icmp ne i32 %.v310, 0
  br i1 %.v311, label %while.body101, label %while.end102
while.body101:
  store i32 0, i32* %.v312
  %.v313 = load i32, i32* %x
  %.v314 = srem i32 %.v313, 2
  %.v315 = icmp ne i32 %.v314, 0
  br i1 %.v315, label %land.rhs105, label %land.end106
while.end102:
  %.v333 = load i32, i32* %ans
  %.v334 = icmp ne i32 %.v333, 0
  br i1 %.v334, label %if.then107, label %if.end108
if.then103:
  %.v322 = load i32, i32* %ans
  %.v323 = load i32, i32* %i
  %t331 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v323
  %.v324 = load i32, i32* %t331
  %.v325 = mul i32 1, %.v324
  %.v326 = add i32 %.v322, %.v325
  store i32 %.v326, i32* %ans
  br label %if.end104
if.end104:
  %.v327 = load i32, i32* %x
  %.v328 = sdiv i32 %.v327, 2
  store i32 %.v328, i32* %x
  %.v329 = load i32, i32* %y
  %.v330 = sdiv i32 %.v329, 2
  store i32 %.v330, i32* %y
  %.v331 = load i32, i32* %i
  %.v332 = add i32 %.v331, 1
  store i32 %.v332, i32* %i
  br label %while.cond100
land.rhs105:
  %.v316 = load i32, i32* %y
  %.v317 = srem i32 %.v316, 2
  %.v318 = icmp ne i32 %.v317, 0
  %.v319 = zext i1 %.v318 to i32
  store i32 %.v319, i32* %.v312
  br label %land.end106
land.end106:
  %.v320 = load i32, i32* %.v312
  %.v321 = icmp ne i32 %.v320, 0
  br i1 %.v321, label %if.then103, label %if.end104
if.then107:
  %.v335 = load i32, i32* %mres.1
  store i32 %.v335, i32* %al.2
  %.v336 = load i32, i32* %ml.1
  store i32 %.v336, i32* %c.2
  br label %while.cond109
if.end108:
  %.v436 = load i32, i32* %ml.1
  store i32 %.v436, i32* %al.3
  %.v437 = load i32, i32* %ml.1
  store i32 %.v437, i32* %c.3
  br label %while.cond139
while.cond109:
  %.v337 = load i32, i32* %c.2
  %.v338 = icmp ne i32 %.v337, 0
  br i1 %.v338, label %while.body110, label %while.end111
while.body110:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v339 = load i32, i32* %al.2
  store i32 %.v339, i32* %x
  %.v340 = load i32, i32* %c.2
  store i32 %.v340, i32* %y
  br label %while.cond112
while.end111:
  %.v434 = load i32, i32* %al.2
  store i32 %.v434, i32* %ans
  %.v435 = load i32, i32* %ans
  store i32 %.v435, i32* %mres.1
  br label %if.end108
while.cond112:
  %.v341 = load i32, i32* %i
  %.v342 = icmp slt i32 %.v341, 16
  %.v343 = zext i1 %.v342 to i32
  %.v344 = icmp ne i32 %.v343, 0
  br i1 %.v344, label %while.body113, label %while.end114
while.body113:
  %.v345 = load i32, i32* %x
  %.v346 = srem i32 %.v345, 2
  %.v347 = icmp ne i32 %.v346, 0
  br i1 %.v347, label %if.then115, label %if.else116
while.end114:
  %.v372 = load i32, i32* %ans
  store i32 %.v372, i32* %sum.2
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v373 = load i32, i32* %al.2
  store i32 %.v373, i32* %x
  %.v374 = load i32, i32* %c.2
  store i32 %.v374, i32* %y
  br label %while.cond122
if.then115:
  %.v348 = load i32, i32* %y
  %.v349 = srem i32 %.v348, 2
  %.v350 = icmp eq i32 %.v349, 0
  %.v351 = zext i1 %.v350 to i32
  %.v352 = icmp ne i32 %.v351, 0
  br i1 %.v352, label %if.then118, label %if.end119
if.else116:
  %.v358 = load i32, i32* %y
  %.v359 = srem i32 %.v358, 2
  %.v360 = icmp ne i32 %.v359, 0
  br i1 %.v360, label %if.then120, label %if.end121
if.end117:
  %.v366 = load i32, i32* %x
  %.v367 = sdiv i32 %.v366, 2
  store i32 %.v367, i32* %x
  %.v368 = load i32, i32* %y
  %.v369 = sdiv i32 %.v368, 2
  store i32 %.v369, i32* %y
  %.v370 = load i32, i32* %i
  %.v371 = add i32 %.v370, 1
  store i32 %.v371, i32* %i
  br label %while.cond112
if.then118:
  %.v353 = load i32, i32* %ans
  %.v354 = load i32, i32* %i
  %t363 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v354
  %.v355 = load i32, i32* %t363
  %.v356 = mul i32 1, %.v355
  %.v357 = add i32 %.v353, %.v356
  store i32 %.v357, i32* %ans
  br label %if.end119
if.end119:
  br label %if.end117
if.then120:
  %.v361 = load i32, i32* %ans
  %.v362 = load i32, i32* %i
  %t372 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v362
  %.v363 = load i32, i32* %t372
  %.v364 = mul i32 1, %.v363
  %.v365 = add i32 %.v361, %.v364
  store i32 %.v365, i32* %ans
  br label %if.end121
if.end121:
  br label %if.end117
while.cond122:
  %.v375 = load i32, i32* %i
  %.v376 = icmp slt i32 %.v375, 16
  %.v377 = zext i1 %.v376 to i32
  %.v378 = icmp ne i32 %.v377, 0
  br i1 %.v378, label %while.body123, label %while.end124
while.body123:
  store i32 0, i32* %.v379
  %.v380 = load i32, i32* %x
  %.v381 = srem i32 %.v380, 2
  %.v382 = icmp ne i32 %.v381, 0
  br i1 %.v382, label %land.rhs127, label %land.end128
while.end124:
  %.v400 = load i32, i32* %ans
  store i32 %.v400, i32* %c.2
  %.v401 = icmp sgt i32 1, 15
  %.v402 = zext i1 %.v401 to i32
  %.v403 = icmp ne i32 %.v402, 0
  br i1 %.v403, label %if.then129, label %if.else130
if.then125:
  %.v389 = load i32, i32* %ans
  %.v390 = load i32, i32* %i
  %t400 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v390
  %.v391 = load i32, i32* %t400
  %.v392 = mul i32 1, %.v391
  %.v393 = add i32 %.v389, %.v392
  store i32 %.v393, i32* %ans
  br label %if.end126
if.end126:
  %.v394 = load i32, i32* %x
  %.v395 = sdiv i32 %.v394, 2
  store i32 %.v395, i32* %x
  %.v396 = load i32, i32* %y
  %.v397 = sdiv i32 %.v396, 2
  store i32 %.v397, i32* %y
  %.v398 = load i32, i32* %i
  %.v399 = add i32 %.v398, 1
  store i32 %.v399, i32* %i
  br label %while.cond122
land.rhs127:
  %.v383 = load i32, i32* %y
  %.v384 = srem i32 %.v383, 2
  %.v385 = icmp ne i32 %.v384, 0
  %.v386 = zext i1 %.v385 to i32
  store i32 %.v386, i32* %.v379
  br label %land.end128
land.end128:
  %.v387 = load i32, i32* %.v379
  %.v388 = icmp ne i32 %.v387, 0
  br i1 %.v388, label %if.then125, label %if.end126
if.then129:
  store i32 0, i32* %ans
  br label %if.end131
if.else130:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v404 = load i32, i32* %c.2
  %t415 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v405 = load i32, i32* %t415
  %.v406 = mul i32 %.v404, %.v405
  store i32 %.v406, i32* %x
  store i32 65535, i32* %y
  br label %while.cond132
if.end131:
  %.v432 = load i32, i32* %ans
  store i32 %.v432, i32* %c.2
  %.v433 = load i32, i32* %sum.2
  store i32 %.v433, i32* %al.2
  br label %while.cond109
while.cond132:
  %.v407 = load i32, i32* %i
  %.v408 = icmp slt i32 %.v407, 16
  %.v409 = zext i1 %.v408 to i32
  %.v410 = icmp ne i32 %.v409, 0
  br i1 %.v410, label %while.body133, label %while.end134
while.body133:
  store i32 0, i32* %.v411
  %.v412 = load i32, i32* %x
  %.v413 = srem i32 %.v412, 2
  %.v414 = icmp ne i32 %.v413, 0
  br i1 %.v414, label %land.rhs137, label %land.end138
while.end134:
  br label %if.end131
if.then135:
  %.v421 = load i32, i32* %ans
  %.v422 = load i32, i32* %i
  %t433 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v422
  %.v423 = load i32, i32* %t433
  %.v424 = mul i32 1, %.v423
  %.v425 = add i32 %.v421, %.v424
  store i32 %.v425, i32* %ans
  br label %if.end136
if.end136:
  %.v426 = load i32, i32* %x
  %.v427 = sdiv i32 %.v426, 2
  store i32 %.v427, i32* %x
  %.v428 = load i32, i32* %y
  %.v429 = sdiv i32 %.v428, 2
  store i32 %.v429, i32* %y
  %.v430 = load i32, i32* %i
  %.v431 = add i32 %.v430, 1
  store i32 %.v431, i32* %i
  br label %while.cond132
land.rhs137:
  %.v415 = load i32, i32* %y
  %.v416 = srem i32 %.v415, 2
  %.v417 = icmp ne i32 %.v416, 0
  %.v418 = zext i1 %.v417 to i32
  store i32 %.v418, i32* %.v411
  br label %land.end138
land.end138:
  %.v419 = load i32, i32* %.v411
  %.v420 = icmp ne i32 %.v419, 0
  br i1 %.v420, label %if.then135, label %if.end136
while.cond139:
  %.v438 = load i32, i32* %c.3
  %.v439 = icmp ne i32 %.v438, 0
  br i1 %.v439, label %while.body140, label %while.end141
while.body140:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v440 = load i32, i32* %al.3
  store i32 %.v440, i32* %x
  %.v441 = load i32, i32* %c.3
  store i32 %.v441, i32* %y
  br label %while.cond142
while.end141:
  %.v535 = load i32, i32* %al.3
  store i32 %.v535, i32* %ans
  %.v536 = load i32, i32* %ans
  store i32 %.v536, i32* %ml.1
  %.v537 = load i32, i32* %mr.1
  store i32 %.v537, i32* %x
  store i32 1, i32* %y
  %.v538 = load i32, i32* %y
  %.v539 = icmp sge i32 %.v538, 15
  %.v540 = zext i1 %.v539 to i32
  %.v541 = icmp ne i32 %.v540, 0
  br i1 %.v541, label %if.then169, label %if.else170
while.cond142:
  %.v442 = load i32, i32* %i
  %.v443 = icmp slt i32 %.v442, 16
  %.v444 = zext i1 %.v443 to i32
  %.v445 = icmp ne i32 %.v444, 0
  br i1 %.v445, label %while.body143, label %while.end144
while.body143:
  %.v446 = load i32, i32* %x
  %.v447 = srem i32 %.v446, 2
  %.v448 = icmp ne i32 %.v447, 0
  br i1 %.v448, label %if.then145, label %if.else146
while.end144:
  %.v473 = load i32, i32* %ans
  store i32 %.v473, i32* %sum.3
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v474 = load i32, i32* %al.3
  store i32 %.v474, i32* %x
  %.v475 = load i32, i32* %c.3
  store i32 %.v475, i32* %y
  br label %while.cond152
if.then145:
  %.v449 = load i32, i32* %y
  %.v450 = srem i32 %.v449, 2
  %.v451 = icmp eq i32 %.v450, 0
  %.v452 = zext i1 %.v451 to i32
  %.v453 = icmp ne i32 %.v452, 0
  br i1 %.v453, label %if.then148, label %if.end149
if.else146:
  %.v459 = load i32, i32* %y
  %.v460 = srem i32 %.v459, 2
  %.v461 = icmp ne i32 %.v460, 0
  br i1 %.v461, label %if.then150, label %if.end151
if.end147:
  %.v467 = load i32, i32* %x
  %.v468 = sdiv i32 %.v467, 2
  store i32 %.v468, i32* %x
  %.v469 = load i32, i32* %y
  %.v470 = sdiv i32 %.v469, 2
  store i32 %.v470, i32* %y
  %.v471 = load i32, i32* %i
  %.v472 = add i32 %.v471, 1
  store i32 %.v472, i32* %i
  br label %while.cond142
if.then148:
  %.v454 = load i32, i32* %ans
  %.v455 = load i32, i32* %i
  %t467 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v455
  %.v456 = load i32, i32* %t467
  %.v457 = mul i32 1, %.v456
  %.v458 = add i32 %.v454, %.v457
  store i32 %.v458, i32* %ans
  br label %if.end149
if.end149:
  br label %if.end147
if.then150:
  %.v462 = load i32, i32* %ans
  %.v463 = load i32, i32* %i
  %t476 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v463
  %.v464 = load i32, i32* %t476
  %.v465 = mul i32 1, %.v464
  %.v466 = add i32 %.v462, %.v465
  store i32 %.v466, i32* %ans
  br label %if.end151
if.end151:
  br label %if.end147
while.cond152:
  %.v476 = load i32, i32* %i
  %.v477 = icmp slt i32 %.v476, 16
  %.v478 = zext i1 %.v477 to i32
  %.v479 = icmp ne i32 %.v478, 0
  br i1 %.v479, label %while.body153, label %while.end154
while.body153:
  store i32 0, i32* %.v480
  %.v481 = load i32, i32* %x
  %.v482 = srem i32 %.v481, 2
  %.v483 = icmp ne i32 %.v482, 0
  br i1 %.v483, label %land.rhs157, label %land.end158
while.end154:
  %.v501 = load i32, i32* %ans
  store i32 %.v501, i32* %c.3
  %.v502 = icmp sgt i32 1, 15
  %.v503 = zext i1 %.v502 to i32
  %.v504 = icmp ne i32 %.v503, 0
  br i1 %.v504, label %if.then159, label %if.else160
if.then155:
  %.v490 = load i32, i32* %ans
  %.v491 = load i32, i32* %i
  %t504 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v491
  %.v492 = load i32, i32* %t504
  %.v493 = mul i32 1, %.v492
  %.v494 = add i32 %.v490, %.v493
  store i32 %.v494, i32* %ans
  br label %if.end156
if.end156:
  %.v495 = load i32, i32* %x
  %.v496 = sdiv i32 %.v495, 2
  store i32 %.v496, i32* %x
  %.v497 = load i32, i32* %y
  %.v498 = sdiv i32 %.v497, 2
  store i32 %.v498, i32* %y
  %.v499 = load i32, i32* %i
  %.v500 = add i32 %.v499, 1
  store i32 %.v500, i32* %i
  br label %while.cond152
land.rhs157:
  %.v484 = load i32, i32* %y
  %.v485 = srem i32 %.v484, 2
  %.v486 = icmp ne i32 %.v485, 0
  %.v487 = zext i1 %.v486 to i32
  store i32 %.v487, i32* %.v480
  br label %land.end158
land.end158:
  %.v488 = load i32, i32* %.v480
  %.v489 = icmp ne i32 %.v488, 0
  br i1 %.v489, label %if.then155, label %if.end156
if.then159:
  store i32 0, i32* %ans
  br label %if.end161
if.else160:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v505 = load i32, i32* %c.3
  %t519 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v506 = load i32, i32* %t519
  %.v507 = mul i32 %.v505, %.v506
  store i32 %.v507, i32* %x
  store i32 65535, i32* %y
  br label %while.cond162
if.end161:
  %.v533 = load i32, i32* %ans
  store i32 %.v533, i32* %c.3
  %.v534 = load i32, i32* %sum.3
  store i32 %.v534, i32* %al.3
  br label %while.cond139
while.cond162:
  %.v508 = load i32, i32* %i
  %.v509 = icmp slt i32 %.v508, 16
  %.v510 = zext i1 %.v509 to i32
  %.v511 = icmp ne i32 %.v510, 0
  br i1 %.v511, label %while.body163, label %while.end164
while.body163:
  store i32 0, i32* %.v512
  %.v513 = load i32, i32* %x
  %.v514 = srem i32 %.v513, 2
  %.v515 = icmp ne i32 %.v514, 0
  br i1 %.v515, label %land.rhs167, label %land.end168
while.end164:
  br label %if.end161
if.then165:
  %.v522 = load i32, i32* %ans
  %.v523 = load i32, i32* %i
  %t537 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v523
  %.v524 = load i32, i32* %t537
  %.v525 = mul i32 1, %.v524
  %.v526 = add i32 %.v522, %.v525
  store i32 %.v526, i32* %ans
  br label %if.end166
if.end166:
  %.v527 = load i32, i32* %x
  %.v528 = sdiv i32 %.v527, 2
  store i32 %.v528, i32* %x
  %.v529 = load i32, i32* %y
  %.v530 = sdiv i32 %.v529, 2
  store i32 %.v530, i32* %y
  %.v531 = load i32, i32* %i
  %.v532 = add i32 %.v531, 1
  store i32 %.v532, i32* %i
  br label %while.cond162
land.rhs167:
  %.v516 = load i32, i32* %y
  %.v517 = srem i32 %.v516, 2
  %.v518 = icmp ne i32 %.v517, 0
  %.v519 = zext i1 %.v518 to i32
  store i32 %.v519, i32* %.v512
  br label %land.end168
land.end168:
  %.v520 = load i32, i32* %.v512
  %.v521 = icmp ne i32 %.v520, 0
  br i1 %.v521, label %if.then165, label %if.end166
if.then169:
  %.v542 = load i32, i32* %x
  %.v543 = icmp slt i32 %.v542, 0
  %.v544 = zext i1 %.v543 to i32
  %.v545 = icmp ne i32 %.v544, 0
  br i1 %.v545, label %if.then172, label %if.else173
if.else170:
  %.v546 = load i32, i32* %y
  %.v547 = icmp sgt i32 %.v546, 0
  %.v548 = zext i1 %.v547 to i32
  %.v549 = icmp ne i32 %.v548, 0
  br i1 %.v549, label %if.then175, label %if.else176
if.end171:
  %.v570 = load i32, i32* %ans
  store i32 %.v570, i32* %mr.1
  br label %while.cond97
if.then172:
  store i32 65535, i32* %ans
  br label %if.end174
if.else173:
  store i32 0, i32* %ans
  br label %if.end174
if.end174:
  br label %if.end171
if.then175:
  %.v550 = load i32, i32* %x
  %.v551 = icmp sgt i32 %.v550, 32767
  %.v552 = zext i1 %.v551 to i32
  %.v553 = icmp ne i32 %.v552, 0
  br i1 %.v553, label %if.then178, label %if.else179
if.else176:
  %.v569 = load i32, i32* %x
  store i32 %.v569, i32* %ans
  br label %if.end177
if.end177:
  br label %if.end171
if.then178:
  %.v554 = load i32, i32* %x
  %.v555 = load i32, i32* %y
  %t570 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v555
  %.v556 = load i32, i32* %t570
  %.v557 = sdiv i32 %.v554, %.v556
  store i32 %.v557, i32* %x
  %.v558 = load i32, i32* %x
  %.v559 = add i32 %.v558, 65536
  %.v560 = load i32, i32* %y
  %.v561 = sub i32 15, %.v560
  %.v562 = add i32 %.v561, 1
  %t578 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v562
  %.v563 = load i32, i32* %t578
  %.v564 = sub i32 %.v559, %.v563
  store i32 %.v564, i32* %ans
  br label %if.end180
if.else179:
  %.v565 = load i32, i32* %x
  %.v566 = load i32, i32* %y
  %t583 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v566
  %.v567 = load i32, i32* %t583
  %.v568 = sdiv i32 %.v565, %.v567
  store i32 %.v568, i32* %ans
  br label %if.end180
if.end180:
  br label %if.end177
if.then181:
  %.v578 = load i32, i32* %x
  %.v579 = icmp slt i32 %.v578, 0
  %.v580 = zext i1 %.v579 to i32
  %.v581 = icmp ne i32 %.v580, 0
  br i1 %.v581, label %if.then184, label %if.else185
if.else182:
  %.v582 = load i32, i32* %y
  %.v583 = icmp sgt i32 %.v582, 0
  %.v584 = zext i1 %.v583 to i32
  %.v585 = icmp ne i32 %.v584, 0
  br i1 %.v585, label %if.then187, label %if.else188
if.end183:
  %.v606 = load i32, i32* %ans
  store i32 %.v606, i32* %pr
  br label %while.cond1
if.then184:
  store i32 65535, i32* %ans
  br label %if.end186
if.else185:
  store i32 0, i32* %ans
  br label %if.end186
if.end186:
  br label %if.end183
if.then187:
  %.v586 = load i32, i32* %x
  %.v587 = icmp sgt i32 %.v586, 32767
  %.v588 = zext i1 %.v587 to i32
  %.v589 = icmp ne i32 %.v588, 0
  br i1 %.v589, label %if.then190, label %if.else191
if.else188:
  %.v605 = load i32, i32* %x
  store i32 %.v605, i32* %ans
  br label %if.end189
if.end189:
  br label %if.end183
if.then190:
  %.v590 = load i32, i32* %x
  %.v591 = load i32, i32* %y
  %t609 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v591
  %.v592 = load i32, i32* %t609
  %.v593 = sdiv i32 %.v590, %.v592
  store i32 %.v593, i32* %x
  %.v594 = load i32, i32* %x
  %.v595 = add i32 %.v594, 65536
  %.v596 = load i32, i32* %y
  %.v597 = sub i32 15, %.v596
  %.v598 = add i32 %.v597, 1
  %t617 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v598
  %.v599 = load i32, i32* %t617
  %.v600 = sub i32 %.v595, %.v599
  store i32 %.v600, i32* %ans
  br label %if.end192
if.else191:
  %.v601 = load i32, i32* %x
  %.v602 = load i32, i32* %y
  %t622 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v602
  %.v603 = load i32, i32* %t622
  %.v604 = sdiv i32 %.v601, %.v603
  store i32 %.v604, i32* %ans
  br label %if.end192
if.end192:
  br label %if.end189
while.cond193:
  %.v609 = load i32, i32* %pr.1
  %.v610 = icmp sgt i32 %.v609, 0
  %.v611 = zext i1 %.v610 to i32
  %.v612 = icmp ne i32 %.v611, 0
  br i1 %.v612, label %while.body194, label %while.end195
while.body194:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v613 = load i32, i32* %pr.1
  store i32 %.v613, i32* %x
  store i32 1, i32* %y
  br label %while.cond196
while.end195:
  %.v1215 = load i32, i32* %pres.1
  store i32 %.v1215, i32* %ans
  %.v1216 = load i32, i32* %ans
  call void @putint(i32 %.v1216)
  call void @putch(i32 10)
  store i32 2, i32* %cur
  br label %while.cond385
while.cond196:
  %.v614 = load i32, i32* %i
  %.v615 = icmp slt i32 %.v614, 16
  %.v616 = zext i1 %.v615 to i32
  %.v617 = icmp ne i32 %.v616, 0
  br i1 %.v617, label %while.body197, label %while.end198
while.body197:
  store i32 0, i32* %.v618
  %.v619 = load i32, i32* %x
  %.v620 = srem i32 %.v619, 2
  %.v621 = icmp ne i32 %.v620, 0
  br i1 %.v621, label %land.rhs201, label %land.end202
while.end198:
  %.v639 = load i32, i32* %ans
  %.v640 = icmp ne i32 %.v639, 0
  br i1 %.v640, label %if.then203, label %if.end204
if.then199:
  %.v628 = load i32, i32* %ans
  %.v629 = load i32, i32* %i
  %t649 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v629
  %.v630 = load i32, i32* %t649
  %.v631 = mul i32 1, %.v630
  %.v632 = add i32 %.v628, %.v631
  store i32 %.v632, i32* %ans
  br label %if.end200
if.end200:
  %.v633 = load i32, i32* %x
  %.v634 = sdiv i32 %.v633, 2
  store i32 %.v634, i32* %x
  %.v635 = load i32, i32* %y
  %.v636 = sdiv i32 %.v635, 2
  store i32 %.v636, i32* %y
  %.v637 = load i32, i32* %i
  %.v638 = add i32 %.v637, 1
  store i32 %.v638, i32* %i
  br label %while.cond196
land.rhs201:
  %.v622 = load i32, i32* %y
  %.v623 = srem i32 %.v622, 2
  %.v624 = icmp ne i32 %.v623, 0
  %.v625 = zext i1 %.v624 to i32
  store i32 %.v625, i32* %.v618
  br label %land.end202
land.end202:
  %.v626 = load i32, i32* %.v618
  %.v627 = icmp ne i32 %.v626, 0
  br i1 %.v627, label %if.then199, label %if.end200
if.then203:
  %.v641 = load i32, i32* %pres.1
  store i32 %.v641, i32* %ml.2
  %.v642 = load i32, i32* %pl.1
  store i32 %.v642, i32* %mr.2
  store i32 0, i32* %mres.2
  br label %while.cond205
if.end204:
  %.v911 = load i32, i32* %pl.1
  store i32 %.v911, i32* %ml.3
  %.v912 = load i32, i32* %pl.1
  store i32 %.v912, i32* %mr.3
  store i32 0, i32* %mres.3
  br label %while.cond289
while.cond205:
  %.v643 = load i32, i32* %mr.2
  %.v644 = icmp ne i32 %.v643, 0
  br i1 %.v644, label %while.body206, label %while.end207
while.body206:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v645 = load i32, i32* %mr.2
  store i32 %.v645, i32* %x
  store i32 1, i32* %y
  br label %while.cond208
while.end207:
  %.v909 = load i32, i32* %mres.2
  store i32 %.v909, i32* %ans
  %.v910 = load i32, i32* %ans
  store i32 %.v910, i32* %pres.1
  br label %if.end204
while.cond208:
  %.v646 = load i32, i32* %i
  %.v647 = icmp slt i32 %.v646, 16
  %.v648 = zext i1 %.v647 to i32
  %.v649 = icmp ne i32 %.v648, 0
  br i1 %.v649, label %while.body209, label %while.end210
while.body209:
  store i32 0, i32* %.v650
  %.v651 = load i32, i32* %x
  %.v652 = srem i32 %.v651, 2
  %.v653 = icmp ne i32 %.v652, 0
  br i1 %.v653, label %land.rhs213, label %land.end214
while.end210:
  %.v671 = load i32, i32* %ans
  %.v672 = icmp ne i32 %.v671, 0
  br i1 %.v672, label %if.then215, label %if.end216
if.then211:
  %.v660 = load i32, i32* %ans
  %.v661 = load i32, i32* %i
  %t681 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v661
  %.v662 = load i32, i32* %t681
  %.v663 = mul i32 1, %.v662
  %.v664 = add i32 %.v660, %.v663
  store i32 %.v664, i32* %ans
  br label %if.end212
if.end212:
  %.v665 = load i32, i32* %x
  %.v666 = sdiv i32 %.v665, 2
  store i32 %.v666, i32* %x
  %.v667 = load i32, i32* %y
  %.v668 = sdiv i32 %.v667, 2
  store i32 %.v668, i32* %y
  %.v669 = load i32, i32* %i
  %.v670 = add i32 %.v669, 1
  store i32 %.v670, i32* %i
  br label %while.cond208
land.rhs213:
  %.v654 = load i32, i32* %y
  %.v655 = srem i32 %.v654, 2
  %.v656 = icmp ne i32 %.v655, 0
  %.v657 = zext i1 %.v656 to i32
  store i32 %.v657, i32* %.v650
  br label %land.end214
land.end214:
  %.v658 = load i32, i32* %.v650
  %.v659 = icmp ne i32 %.v658, 0
  br i1 %.v659, label %if.then211, label %if.end212
if.then215:
  %.v673 = load i32, i32* %mres.2
  store i32 %.v673, i32* %al.4
  %.v674 = load i32, i32* %ml.2
  store i32 %.v674, i32* %c.4
  br label %while.cond217
if.end216:
  %.v774 = load i32, i32* %ml.2
  store i32 %.v774, i32* %al.5
  %.v775 = load i32, i32* %ml.2
  store i32 %.v775, i32* %c.5
  br label %while.cond247
while.cond217:
  %.v675 = load i32, i32* %c.4
  %.v676 = icmp ne i32 %.v675, 0
  br i1 %.v676, label %while.body218, label %while.end219
while.body218:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v677 = load i32, i32* %al.4
  store i32 %.v677, i32* %x
  %.v678 = load i32, i32* %c.4
  store i32 %.v678, i32* %y
  br label %while.cond220
while.end219:
  %.v772 = load i32, i32* %al.4
  store i32 %.v772, i32* %ans
  %.v773 = load i32, i32* %ans
  store i32 %.v773, i32* %mres.2
  br label %if.end216
while.cond220:
  %.v679 = load i32, i32* %i
  %.v680 = icmp slt i32 %.v679, 16
  %.v681 = zext i1 %.v680 to i32
  %.v682 = icmp ne i32 %.v681, 0
  br i1 %.v682, label %while.body221, label %while.end222
while.body221:
  %.v683 = load i32, i32* %x
  %.v684 = srem i32 %.v683, 2
  %.v685 = icmp ne i32 %.v684, 0
  br i1 %.v685, label %if.then223, label %if.else224
while.end222:
  %.v710 = load i32, i32* %ans
  store i32 %.v710, i32* %sum.4
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v711 = load i32, i32* %al.4
  store i32 %.v711, i32* %x
  %.v712 = load i32, i32* %c.4
  store i32 %.v712, i32* %y
  br label %while.cond230
if.then223:
  %.v686 = load i32, i32* %y
  %.v687 = srem i32 %.v686, 2
  %.v688 = icmp eq i32 %.v687, 0
  %.v689 = zext i1 %.v688 to i32
  %.v690 = icmp ne i32 %.v689, 0
  br i1 %.v690, label %if.then226, label %if.end227
if.else224:
  %.v696 = load i32, i32* %y
  %.v697 = srem i32 %.v696, 2
  %.v698 = icmp ne i32 %.v697, 0
  br i1 %.v698, label %if.then228, label %if.end229
if.end225:
  %.v704 = load i32, i32* %x
  %.v705 = sdiv i32 %.v704, 2
  store i32 %.v705, i32* %x
  %.v706 = load i32, i32* %y
  %.v707 = sdiv i32 %.v706, 2
  store i32 %.v707, i32* %y
  %.v708 = load i32, i32* %i
  %.v709 = add i32 %.v708, 1
  store i32 %.v709, i32* %i
  br label %while.cond220
if.then226:
  %.v691 = load i32, i32* %ans
  %.v692 = load i32, i32* %i
  %t713 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v692
  %.v693 = load i32, i32* %t713
  %.v694 = mul i32 1, %.v693
  %.v695 = add i32 %.v691, %.v694
  store i32 %.v695, i32* %ans
  br label %if.end227
if.end227:
  br label %if.end225
if.then228:
  %.v699 = load i32, i32* %ans
  %.v700 = load i32, i32* %i
  %t722 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v700
  %.v701 = load i32, i32* %t722
  %.v702 = mul i32 1, %.v701
  %.v703 = add i32 %.v699, %.v702
  store i32 %.v703, i32* %ans
  br label %if.end229
if.end229:
  br label %if.end225
while.cond230:
  %.v713 = load i32, i32* %i
  %.v714 = icmp slt i32 %.v713, 16
  %.v715 = zext i1 %.v714 to i32
  %.v716 = icmp ne i32 %.v715, 0
  br i1 %.v716, label %while.body231, label %while.end232
while.body231:
  store i32 0, i32* %.v717
  %.v718 = load i32, i32* %x
  %.v719 = srem i32 %.v718, 2
  %.v720 = icmp ne i32 %.v719, 0
  br i1 %.v720, label %land.rhs235, label %land.end236
while.end232:
  %.v738 = load i32, i32* %ans
  store i32 %.v738, i32* %c.4
  %.v739 = icmp sgt i32 1, 15
  %.v740 = zext i1 %.v739 to i32
  %.v741 = icmp ne i32 %.v740, 0
  br i1 %.v741, label %if.then237, label %if.else238
if.then233:
  %.v727 = load i32, i32* %ans
  %.v728 = load i32, i32* %i
  %t750 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v728
  %.v729 = load i32, i32* %t750
  %.v730 = mul i32 1, %.v729
  %.v731 = add i32 %.v727, %.v730
  store i32 %.v731, i32* %ans
  br label %if.end234
if.end234:
  %.v732 = load i32, i32* %x
  %.v733 = sdiv i32 %.v732, 2
  store i32 %.v733, i32* %x
  %.v734 = load i32, i32* %y
  %.v735 = sdiv i32 %.v734, 2
  store i32 %.v735, i32* %y
  %.v736 = load i32, i32* %i
  %.v737 = add i32 %.v736, 1
  store i32 %.v737, i32* %i
  br label %while.cond230
land.rhs235:
  %.v721 = load i32, i32* %y
  %.v722 = srem i32 %.v721, 2
  %.v723 = icmp ne i32 %.v722, 0
  %.v724 = zext i1 %.v723 to i32
  store i32 %.v724, i32* %.v717
  br label %land.end236
land.end236:
  %.v725 = load i32, i32* %.v717
  %.v726 = icmp ne i32 %.v725, 0
  br i1 %.v726, label %if.then233, label %if.end234
if.then237:
  store i32 0, i32* %ans
  br label %if.end239
if.else238:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v742 = load i32, i32* %c.4
  %t765 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v743 = load i32, i32* %t765
  %.v744 = mul i32 %.v742, %.v743
  store i32 %.v744, i32* %x
  store i32 65535, i32* %y
  br label %while.cond240
if.end239:
  %.v770 = load i32, i32* %ans
  store i32 %.v770, i32* %c.4
  %.v771 = load i32, i32* %sum.4
  store i32 %.v771, i32* %al.4
  br label %while.cond217
while.cond240:
  %.v745 = load i32, i32* %i
  %.v746 = icmp slt i32 %.v745, 16
  %.v747 = zext i1 %.v746 to i32
  %.v748 = icmp ne i32 %.v747, 0
  br i1 %.v748, label %while.body241, label %while.end242
while.body241:
  store i32 0, i32* %.v749
  %.v750 = load i32, i32* %x
  %.v751 = srem i32 %.v750, 2
  %.v752 = icmp ne i32 %.v751, 0
  br i1 %.v752, label %land.rhs245, label %land.end246
while.end242:
  br label %if.end239
if.then243:
  %.v759 = load i32, i32* %ans
  %.v760 = load i32, i32* %i
  %t783 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v760
  %.v761 = load i32, i32* %t783
  %.v762 = mul i32 1, %.v761
  %.v763 = add i32 %.v759, %.v762
  store i32 %.v763, i32* %ans
  br label %if.end244
if.end244:
  %.v764 = load i32, i32* %x
  %.v765 = sdiv i32 %.v764, 2
  store i32 %.v765, i32* %x
  %.v766 = load i32, i32* %y
  %.v767 = sdiv i32 %.v766, 2
  store i32 %.v767, i32* %y
  %.v768 = load i32, i32* %i
  %.v769 = add i32 %.v768, 1
  store i32 %.v769, i32* %i
  br label %while.cond240
land.rhs245:
  %.v753 = load i32, i32* %y
  %.v754 = srem i32 %.v753, 2
  %.v755 = icmp ne i32 %.v754, 0
  %.v756 = zext i1 %.v755 to i32
  store i32 %.v756, i32* %.v749
  br label %land.end246
land.end246:
  %.v757 = load i32, i32* %.v749
  %.v758 = icmp ne i32 %.v757, 0
  br i1 %.v758, label %if.then243, label %if.end244
while.cond247:
  %.v776 = load i32, i32* %c.5
  %.v777 = icmp ne i32 %.v776, 0
  br i1 %.v777, label %while.body248, label %while.end249
while.body248:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v778 = load i32, i32* %al.5
  store i32 %.v778, i32* %x
  %.v779 = load i32, i32* %c.5
  store i32 %.v779, i32* %y
  br label %while.cond250
while.end249:
  %.v873 = load i32, i32* %al.5
  store i32 %.v873, i32* %ans
  %.v874 = load i32, i32* %ans
  store i32 %.v874, i32* %ml.2
  %.v875 = load i32, i32* %mr.2
  store i32 %.v875, i32* %x
  store i32 1, i32* %y
  %.v876 = load i32, i32* %y
  %.v877 = icmp sge i32 %.v876, 15
  %.v878 = zext i1 %.v877 to i32
  %.v879 = icmp ne i32 %.v878, 0
  br i1 %.v879, label %if.then277, label %if.else278
while.cond250:
  %.v780 = load i32, i32* %i
  %.v781 = icmp slt i32 %.v780, 16
  %.v782 = zext i1 %.v781 to i32
  %.v783 = icmp ne i32 %.v782, 0
  br i1 %.v783, label %while.body251, label %while.end252
while.body251:
  %.v784 = load i32, i32* %x
  %.v785 = srem i32 %.v784, 2
  %.v786 = icmp ne i32 %.v785, 0
  br i1 %.v786, label %if.then253, label %if.else254
while.end252:
  %.v811 = load i32, i32* %ans
  store i32 %.v811, i32* %sum.5
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v812 = load i32, i32* %al.5
  store i32 %.v812, i32* %x
  %.v813 = load i32, i32* %c.5
  store i32 %.v813, i32* %y
  br label %while.cond260
if.then253:
  %.v787 = load i32, i32* %y
  %.v788 = srem i32 %.v787, 2
  %.v789 = icmp eq i32 %.v788, 0
  %.v790 = zext i1 %.v789 to i32
  %.v791 = icmp ne i32 %.v790, 0
  br i1 %.v791, label %if.then256, label %if.end257
if.else254:
  %.v797 = load i32, i32* %y
  %.v798 = srem i32 %.v797, 2
  %.v799 = icmp ne i32 %.v798, 0
  br i1 %.v799, label %if.then258, label %if.end259
if.end255:
  %.v805 = load i32, i32* %x
  %.v806 = sdiv i32 %.v805, 2
  store i32 %.v806, i32* %x
  %.v807 = load i32, i32* %y
  %.v808 = sdiv i32 %.v807, 2
  store i32 %.v808, i32* %y
  %.v809 = load i32, i32* %i
  %.v810 = add i32 %.v809, 1
  store i32 %.v810, i32* %i
  br label %while.cond250
if.then256:
  %.v792 = load i32, i32* %ans
  %.v793 = load i32, i32* %i
  %t817 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v793
  %.v794 = load i32, i32* %t817
  %.v795 = mul i32 1, %.v794
  %.v796 = add i32 %.v792, %.v795
  store i32 %.v796, i32* %ans
  br label %if.end257
if.end257:
  br label %if.end255
if.then258:
  %.v800 = load i32, i32* %ans
  %.v801 = load i32, i32* %i
  %t826 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v801
  %.v802 = load i32, i32* %t826
  %.v803 = mul i32 1, %.v802
  %.v804 = add i32 %.v800, %.v803
  store i32 %.v804, i32* %ans
  br label %if.end259
if.end259:
  br label %if.end255
while.cond260:
  %.v814 = load i32, i32* %i
  %.v815 = icmp slt i32 %.v814, 16
  %.v816 = zext i1 %.v815 to i32
  %.v817 = icmp ne i32 %.v816, 0
  br i1 %.v817, label %while.body261, label %while.end262
while.body261:
  store i32 0, i32* %.v818
  %.v819 = load i32, i32* %x
  %.v820 = srem i32 %.v819, 2
  %.v821 = icmp ne i32 %.v820, 0
  br i1 %.v821, label %land.rhs265, label %land.end266
while.end262:
  %.v839 = load i32, i32* %ans
  store i32 %.v839, i32* %c.5
  %.v840 = icmp sgt i32 1, 15
  %.v841 = zext i1 %.v840 to i32
  %.v842 = icmp ne i32 %.v841, 0
  br i1 %.v842, label %if.then267, label %if.else268
if.then263:
  %.v828 = load i32, i32* %ans
  %.v829 = load i32, i32* %i
  %t854 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v829
  %.v830 = load i32, i32* %t854
  %.v831 = mul i32 1, %.v830
  %.v832 = add i32 %.v828, %.v831
  store i32 %.v832, i32* %ans
  br label %if.end264
if.end264:
  %.v833 = load i32, i32* %x
  %.v834 = sdiv i32 %.v833, 2
  store i32 %.v834, i32* %x
  %.v835 = load i32, i32* %y
  %.v836 = sdiv i32 %.v835, 2
  store i32 %.v836, i32* %y
  %.v837 = load i32, i32* %i
  %.v838 = add i32 %.v837, 1
  store i32 %.v838, i32* %i
  br label %while.cond260
land.rhs265:
  %.v822 = load i32, i32* %y
  %.v823 = srem i32 %.v822, 2
  %.v824 = icmp ne i32 %.v823, 0
  %.v825 = zext i1 %.v824 to i32
  store i32 %.v825, i32* %.v818
  br label %land.end266
land.end266:
  %.v826 = load i32, i32* %.v818
  %.v827 = icmp ne i32 %.v826, 0
  br i1 %.v827, label %if.then263, label %if.end264
if.then267:
  store i32 0, i32* %ans
  br label %if.end269
if.else268:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v843 = load i32, i32* %c.5
  %t869 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v844 = load i32, i32* %t869
  %.v845 = mul i32 %.v843, %.v844
  store i32 %.v845, i32* %x
  store i32 65535, i32* %y
  br label %while.cond270
if.end269:
  %.v871 = load i32, i32* %ans
  store i32 %.v871, i32* %c.5
  %.v872 = load i32, i32* %sum.5
  store i32 %.v872, i32* %al.5
  br label %while.cond247
while.cond270:
  %.v846 = load i32, i32* %i
  %.v847 = icmp slt i32 %.v846, 16
  %.v848 = zext i1 %.v847 to i32
  %.v849 = icmp ne i32 %.v848, 0
  br i1 %.v849, label %while.body271, label %while.end272
while.body271:
  store i32 0, i32* %.v850
  %.v851 = load i32, i32* %x
  %.v852 = srem i32 %.v851, 2
  %.v853 = icmp ne i32 %.v852, 0
  br i1 %.v853, label %land.rhs275, label %land.end276
while.end272:
  br label %if.end269
if.then273:
  %.v860 = load i32, i32* %ans
  %.v861 = load i32, i32* %i
  %t887 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v861
  %.v862 = load i32, i32* %t887
  %.v863 = mul i32 1, %.v862
  %.v864 = add i32 %.v860, %.v863
  store i32 %.v864, i32* %ans
  br label %if.end274
if.end274:
  %.v865 = load i32, i32* %x
  %.v866 = sdiv i32 %.v865, 2
  store i32 %.v866, i32* %x
  %.v867 = load i32, i32* %y
  %.v868 = sdiv i32 %.v867, 2
  store i32 %.v868, i32* %y
  %.v869 = load i32, i32* %i
  %.v870 = add i32 %.v869, 1
  store i32 %.v870, i32* %i
  br label %while.cond270
land.rhs275:
  %.v854 = load i32, i32* %y
  %.v855 = srem i32 %.v854, 2
  %.v856 = icmp ne i32 %.v855, 0
  %.v857 = zext i1 %.v856 to i32
  store i32 %.v857, i32* %.v850
  br label %land.end276
land.end276:
  %.v858 = load i32, i32* %.v850
  %.v859 = icmp ne i32 %.v858, 0
  br i1 %.v859, label %if.then273, label %if.end274
if.then277:
  %.v880 = load i32, i32* %x
  %.v881 = icmp slt i32 %.v880, 0
  %.v882 = zext i1 %.v881 to i32
  %.v883 = icmp ne i32 %.v882, 0
  br i1 %.v883, label %if.then280, label %if.else281
if.else278:
  %.v884 = load i32, i32* %y
  %.v885 = icmp sgt i32 %.v884, 0
  %.v886 = zext i1 %.v885 to i32
  %.v887 = icmp ne i32 %.v886, 0
  br i1 %.v887, label %if.then283, label %if.else284
if.end279:
  %.v908 = load i32, i32* %ans
  store i32 %.v908, i32* %mr.2
  br label %while.cond205
if.then280:
  store i32 65535, i32* %ans
  br label %if.end282
if.else281:
  store i32 0, i32* %ans
  br label %if.end282
if.end282:
  br label %if.end279
if.then283:
  %.v888 = load i32, i32* %x
  %.v889 = icmp sgt i32 %.v888, 32767
  %.v890 = zext i1 %.v889 to i32
  %.v891 = icmp ne i32 %.v890, 0
  br i1 %.v891, label %if.then286, label %if.else287
if.else284:
  %.v907 = load i32, i32* %x
  store i32 %.v907, i32* %ans
  br label %if.end285
if.end285:
  br label %if.end279
if.then286:
  %.v892 = load i32, i32* %x
  %.v893 = load i32, i32* %y
  %t920 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v893
  %.v894 = load i32, i32* %t920
  %.v895 = sdiv i32 %.v892, %.v894
  store i32 %.v895, i32* %x
  %.v896 = load i32, i32* %x
  %.v897 = add i32 %.v896, 65536
  %.v898 = load i32, i32* %y
  %.v899 = sub i32 15, %.v898
  %.v900 = add i32 %.v899, 1
  %t928 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v900
  %.v901 = load i32, i32* %t928
  %.v902 = sub i32 %.v897, %.v901
  store i32 %.v902, i32* %ans
  br label %if.end288
if.else287:
  %.v903 = load i32, i32* %x
  %.v904 = load i32, i32* %y
  %t933 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v904
  %.v905 = load i32, i32* %t933
  %.v906 = sdiv i32 %.v903, %.v905
  store i32 %.v906, i32* %ans
  br label %if.end288
if.end288:
  br label %if.end285
while.cond289:
  %.v913 = load i32, i32* %mr.3
  %.v914 = icmp ne i32 %.v913, 0
  br i1 %.v914, label %while.body290, label %while.end291
while.body290:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v915 = load i32, i32* %mr.3
  store i32 %.v915, i32* %x
  store i32 1, i32* %y
  br label %while.cond292
while.end291:
  %.v1179 = load i32, i32* %mres.3
  store i32 %.v1179, i32* %ans
  %.v1180 = load i32, i32* %ans
  store i32 %.v1180, i32* %pl.1
  %.v1181 = load i32, i32* %pr.1
  store i32 %.v1181, i32* %x
  store i32 1, i32* %y
  %.v1182 = load i32, i32* %y
  %.v1183 = icmp sge i32 %.v1182, 15
  %.v1184 = zext i1 %.v1183 to i32
  %.v1185 = icmp ne i32 %.v1184, 0
  br i1 %.v1185, label %if.then373, label %if.else374
while.cond292:
  %.v916 = load i32, i32* %i
  %.v917 = icmp slt i32 %.v916, 16
  %.v918 = zext i1 %.v917 to i32
  %.v919 = icmp ne i32 %.v918, 0
  br i1 %.v919, label %while.body293, label %while.end294
while.body293:
  store i32 0, i32* %.v920
  %.v921 = load i32, i32* %x
  %.v922 = srem i32 %.v921, 2
  %.v923 = icmp ne i32 %.v922, 0
  br i1 %.v923, label %land.rhs297, label %land.end298
while.end294:
  %.v941 = load i32, i32* %ans
  %.v942 = icmp ne i32 %.v941, 0
  br i1 %.v942, label %if.then299, label %if.end300
if.then295:
  %.v930 = load i32, i32* %ans
  %.v931 = load i32, i32* %i
  %t960 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v931
  %.v932 = load i32, i32* %t960
  %.v933 = mul i32 1, %.v932
  %.v934 = add i32 %.v930, %.v933
  store i32 %.v934, i32* %ans
  br label %if.end296
if.end296:
  %.v935 = load i32, i32* %x
  %.v936 = sdiv i32 %.v935, 2
  store i32 %.v936, i32* %x
  %.v937 = load i32, i32* %y
  %.v938 = sdiv i32 %.v937, 2
  store i32 %.v938, i32* %y
  %.v939 = load i32, i32* %i
  %.v940 = add i32 %.v939, 1
  store i32 %.v940, i32* %i
  br label %while.cond292
land.rhs297:
  %.v924 = load i32, i32* %y
  %.v925 = srem i32 %.v924, 2
  %.v926 = icmp ne i32 %.v925, 0
  %.v927 = zext i1 %.v926 to i32
  store i32 %.v927, i32* %.v920
  br label %land.end298
land.end298:
  %.v928 = load i32, i32* %.v920
  %.v929 = icmp ne i32 %.v928, 0
  br i1 %.v929, label %if.then295, label %if.end296
if.then299:
  %.v943 = load i32, i32* %mres.3
  store i32 %.v943, i32* %al.6
  %.v944 = load i32, i32* %ml.3
  store i32 %.v944, i32* %c.6
  br label %while.cond301
if.end300:
  %.v1044 = load i32, i32* %ml.3
  store i32 %.v1044, i32* %al.7
  %.v1045 = load i32, i32* %ml.3
  store i32 %.v1045, i32* %c.7
  br label %while.cond331
while.cond301:
  %.v945 = load i32, i32* %c.6
  %.v946 = icmp ne i32 %.v945, 0
  br i1 %.v946, label %while.body302, label %while.end303
while.body302:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v947 = load i32, i32* %al.6
  store i32 %.v947, i32* %x
  %.v948 = load i32, i32* %c.6
  store i32 %.v948, i32* %y
  br label %while.cond304
while.end303:
  %.v1042 = load i32, i32* %al.6
  store i32 %.v1042, i32* %ans
  %.v1043 = load i32, i32* %ans
  store i32 %.v1043, i32* %mres.3
  br label %if.end300
while.cond304:
  %.v949 = load i32, i32* %i
  %.v950 = icmp slt i32 %.v949, 16
  %.v951 = zext i1 %.v950 to i32
  %.v952 = icmp ne i32 %.v951, 0
  br i1 %.v952, label %while.body305, label %while.end306
while.body305:
  %.v953 = load i32, i32* %x
  %.v954 = srem i32 %.v953, 2
  %.v955 = icmp ne i32 %.v954, 0
  br i1 %.v955, label %if.then307, label %if.else308
while.end306:
  %.v980 = load i32, i32* %ans
  store i32 %.v980, i32* %sum.6
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v981 = load i32, i32* %al.6
  store i32 %.v981, i32* %x
  %.v982 = load i32, i32* %c.6
  store i32 %.v982, i32* %y
  br label %while.cond314
if.then307:
  %.v956 = load i32, i32* %y
  %.v957 = srem i32 %.v956, 2
  %.v958 = icmp eq i32 %.v957, 0
  %.v959 = zext i1 %.v958 to i32
  %.v960 = icmp ne i32 %.v959, 0
  br i1 %.v960, label %if.then310, label %if.end311
if.else308:
  %.v966 = load i32, i32* %y
  %.v967 = srem i32 %.v966, 2
  %.v968 = icmp ne i32 %.v967, 0
  br i1 %.v968, label %if.then312, label %if.end313
if.end309:
  %.v974 = load i32, i32* %x
  %.v975 = sdiv i32 %.v974, 2
  store i32 %.v975, i32* %x
  %.v976 = load i32, i32* %y
  %.v977 = sdiv i32 %.v976, 2
  store i32 %.v977, i32* %y
  %.v978 = load i32, i32* %i
  %.v979 = add i32 %.v978, 1
  store i32 %.v979, i32* %i
  br label %while.cond304
if.then310:
  %.v961 = load i32, i32* %ans
  %.v962 = load i32, i32* %i
  %t992 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v962
  %.v963 = load i32, i32* %t992
  %.v964 = mul i32 1, %.v963
  %.v965 = add i32 %.v961, %.v964
  store i32 %.v965, i32* %ans
  br label %if.end311
if.end311:
  br label %if.end309
if.then312:
  %.v969 = load i32, i32* %ans
  %.v970 = load i32, i32* %i
  %t1001 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v970
  %.v971 = load i32, i32* %t1001
  %.v972 = mul i32 1, %.v971
  %.v973 = add i32 %.v969, %.v972
  store i32 %.v973, i32* %ans
  br label %if.end313
if.end313:
  br label %if.end309
while.cond314:
  %.v983 = load i32, i32* %i
  %.v984 = icmp slt i32 %.v983, 16
  %.v985 = zext i1 %.v984 to i32
  %.v986 = icmp ne i32 %.v985, 0
  br i1 %.v986, label %while.body315, label %while.end316
while.body315:
  store i32 0, i32* %.v987
  %.v988 = load i32, i32* %x
  %.v989 = srem i32 %.v988, 2
  %.v990 = icmp ne i32 %.v989, 0
  br i1 %.v990, label %land.rhs319, label %land.end320
while.end316:
  %.v1008 = load i32, i32* %ans
  store i32 %.v1008, i32* %c.6
  %.v1009 = icmp sgt i32 1, 15
  %.v1010 = zext i1 %.v1009 to i32
  %.v1011 = icmp ne i32 %.v1010, 0
  br i1 %.v1011, label %if.then321, label %if.else322
if.then317:
  %.v997 = load i32, i32* %ans
  %.v998 = load i32, i32* %i
  %t1029 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v998
  %.v999 = load i32, i32* %t1029
  %.v1000 = mul i32 1, %.v999
  %.v1001 = add i32 %.v997, %.v1000
  store i32 %.v1001, i32* %ans
  br label %if.end318
if.end318:
  %.v1002 = load i32, i32* %x
  %.v1003 = sdiv i32 %.v1002, 2
  store i32 %.v1003, i32* %x
  %.v1004 = load i32, i32* %y
  %.v1005 = sdiv i32 %.v1004, 2
  store i32 %.v1005, i32* %y
  %.v1006 = load i32, i32* %i
  %.v1007 = add i32 %.v1006, 1
  store i32 %.v1007, i32* %i
  br label %while.cond314
land.rhs319:
  %.v991 = load i32, i32* %y
  %.v992 = srem i32 %.v991, 2
  %.v993 = icmp ne i32 %.v992, 0
  %.v994 = zext i1 %.v993 to i32
  store i32 %.v994, i32* %.v987
  br label %land.end320
land.end320:
  %.v995 = load i32, i32* %.v987
  %.v996 = icmp ne i32 %.v995, 0
  br i1 %.v996, label %if.then317, label %if.end318
if.then321:
  store i32 0, i32* %ans
  br label %if.end323
if.else322:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1012 = load i32, i32* %c.6
  %t1044 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1013 = load i32, i32* %t1044
  %.v1014 = mul i32 %.v1012, %.v1013
  store i32 %.v1014, i32* %x
  store i32 65535, i32* %y
  br label %while.cond324
if.end323:
  %.v1040 = load i32, i32* %ans
  store i32 %.v1040, i32* %c.6
  %.v1041 = load i32, i32* %sum.6
  store i32 %.v1041, i32* %al.6
  br label %while.cond301
while.cond324:
  %.v1015 = load i32, i32* %i
  %.v1016 = icmp slt i32 %.v1015, 16
  %.v1017 = zext i1 %.v1016 to i32
  %.v1018 = icmp ne i32 %.v1017, 0
  br i1 %.v1018, label %while.body325, label %while.end326
while.body325:
  store i32 0, i32* %.v1019
  %.v1020 = load i32, i32* %x
  %.v1021 = srem i32 %.v1020, 2
  %.v1022 = icmp ne i32 %.v1021, 0
  br i1 %.v1022, label %land.rhs329, label %land.end330
while.end326:
  br label %if.end323
if.then327:
  %.v1029 = load i32, i32* %ans
  %.v1030 = load i32, i32* %i
  %t1062 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1030
  %.v1031 = load i32, i32* %t1062
  %.v1032 = mul i32 1, %.v1031
  %.v1033 = add i32 %.v1029, %.v1032
  store i32 %.v1033, i32* %ans
  br label %if.end328
if.end328:
  %.v1034 = load i32, i32* %x
  %.v1035 = sdiv i32 %.v1034, 2
  store i32 %.v1035, i32* %x
  %.v1036 = load i32, i32* %y
  %.v1037 = sdiv i32 %.v1036, 2
  store i32 %.v1037, i32* %y
  %.v1038 = load i32, i32* %i
  %.v1039 = add i32 %.v1038, 1
  store i32 %.v1039, i32* %i
  br label %while.cond324
land.rhs329:
  %.v1023 = load i32, i32* %y
  %.v1024 = srem i32 %.v1023, 2
  %.v1025 = icmp ne i32 %.v1024, 0
  %.v1026 = zext i1 %.v1025 to i32
  store i32 %.v1026, i32* %.v1019
  br label %land.end330
land.end330:
  %.v1027 = load i32, i32* %.v1019
  %.v1028 = icmp ne i32 %.v1027, 0
  br i1 %.v1028, label %if.then327, label %if.end328
while.cond331:
  %.v1046 = load i32, i32* %c.7
  %.v1047 = icmp ne i32 %.v1046, 0
  br i1 %.v1047, label %while.body332, label %while.end333
while.body332:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1048 = load i32, i32* %al.7
  store i32 %.v1048, i32* %x
  %.v1049 = load i32, i32* %c.7
  store i32 %.v1049, i32* %y
  br label %while.cond334
while.end333:
  %.v1143 = load i32, i32* %al.7
  store i32 %.v1143, i32* %ans
  %.v1144 = load i32, i32* %ans
  store i32 %.v1144, i32* %ml.3
  %.v1145 = load i32, i32* %mr.3
  store i32 %.v1145, i32* %x
  store i32 1, i32* %y
  %.v1146 = load i32, i32* %y
  %.v1147 = icmp sge i32 %.v1146, 15
  %.v1148 = zext i1 %.v1147 to i32
  %.v1149 = icmp ne i32 %.v1148, 0
  br i1 %.v1149, label %if.then361, label %if.else362
while.cond334:
  %.v1050 = load i32, i32* %i
  %.v1051 = icmp slt i32 %.v1050, 16
  %.v1052 = zext i1 %.v1051 to i32
  %.v1053 = icmp ne i32 %.v1052, 0
  br i1 %.v1053, label %while.body335, label %while.end336
while.body335:
  %.v1054 = load i32, i32* %x
  %.v1055 = srem i32 %.v1054, 2
  %.v1056 = icmp ne i32 %.v1055, 0
  br i1 %.v1056, label %if.then337, label %if.else338
while.end336:
  %.v1081 = load i32, i32* %ans
  store i32 %.v1081, i32* %sum.7
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1082 = load i32, i32* %al.7
  store i32 %.v1082, i32* %x
  %.v1083 = load i32, i32* %c.7
  store i32 %.v1083, i32* %y
  br label %while.cond344
if.then337:
  %.v1057 = load i32, i32* %y
  %.v1058 = srem i32 %.v1057, 2
  %.v1059 = icmp eq i32 %.v1058, 0
  %.v1060 = zext i1 %.v1059 to i32
  %.v1061 = icmp ne i32 %.v1060, 0
  br i1 %.v1061, label %if.then340, label %if.end341
if.else338:
  %.v1067 = load i32, i32* %y
  %.v1068 = srem i32 %.v1067, 2
  %.v1069 = icmp ne i32 %.v1068, 0
  br i1 %.v1069, label %if.then342, label %if.end343
if.end339:
  %.v1075 = load i32, i32* %x
  %.v1076 = sdiv i32 %.v1075, 2
  store i32 %.v1076, i32* %x
  %.v1077 = load i32, i32* %y
  %.v1078 = sdiv i32 %.v1077, 2
  store i32 %.v1078, i32* %y
  %.v1079 = load i32, i32* %i
  %.v1080 = add i32 %.v1079, 1
  store i32 %.v1080, i32* %i
  br label %while.cond334
if.then340:
  %.v1062 = load i32, i32* %ans
  %.v1063 = load i32, i32* %i
  %t1096 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1063
  %.v1064 = load i32, i32* %t1096
  %.v1065 = mul i32 1, %.v1064
  %.v1066 = add i32 %.v1062, %.v1065
  store i32 %.v1066, i32* %ans
  br label %if.end341
if.end341:
  br label %if.end339
if.then342:
  %.v1070 = load i32, i32* %ans
  %.v1071 = load i32, i32* %i
  %t1105 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1071
  %.v1072 = load i32, i32* %t1105
  %.v1073 = mul i32 1, %.v1072
  %.v1074 = add i32 %.v1070, %.v1073
  store i32 %.v1074, i32* %ans
  br label %if.end343
if.end343:
  br label %if.end339
while.cond344:
  %.v1084 = load i32, i32* %i
  %.v1085 = icmp slt i32 %.v1084, 16
  %.v1086 = zext i1 %.v1085 to i32
  %.v1087 = icmp ne i32 %.v1086, 0
  br i1 %.v1087, label %while.body345, label %while.end346
while.body345:
  store i32 0, i32* %.v1088
  %.v1089 = load i32, i32* %x
  %.v1090 = srem i32 %.v1089, 2
  %.v1091 = icmp ne i32 %.v1090, 0
  br i1 %.v1091, label %land.rhs349, label %land.end350
while.end346:
  %.v1109 = load i32, i32* %ans
  store i32 %.v1109, i32* %c.7
  %.v1110 = icmp sgt i32 1, 15
  %.v1111 = zext i1 %.v1110 to i32
  %.v1112 = icmp ne i32 %.v1111, 0
  br i1 %.v1112, label %if.then351, label %if.else352
if.then347:
  %.v1098 = load i32, i32* %ans
  %.v1099 = load i32, i32* %i
  %t1133 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1099
  %.v1100 = load i32, i32* %t1133
  %.v1101 = mul i32 1, %.v1100
  %.v1102 = add i32 %.v1098, %.v1101
  store i32 %.v1102, i32* %ans
  br label %if.end348
if.end348:
  %.v1103 = load i32, i32* %x
  %.v1104 = sdiv i32 %.v1103, 2
  store i32 %.v1104, i32* %x
  %.v1105 = load i32, i32* %y
  %.v1106 = sdiv i32 %.v1105, 2
  store i32 %.v1106, i32* %y
  %.v1107 = load i32, i32* %i
  %.v1108 = add i32 %.v1107, 1
  store i32 %.v1108, i32* %i
  br label %while.cond344
land.rhs349:
  %.v1092 = load i32, i32* %y
  %.v1093 = srem i32 %.v1092, 2
  %.v1094 = icmp ne i32 %.v1093, 0
  %.v1095 = zext i1 %.v1094 to i32
  store i32 %.v1095, i32* %.v1088
  br label %land.end350
land.end350:
  %.v1096 = load i32, i32* %.v1088
  %.v1097 = icmp ne i32 %.v1096, 0
  br i1 %.v1097, label %if.then347, label %if.end348
if.then351:
  store i32 0, i32* %ans
  br label %if.end353
if.else352:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1113 = load i32, i32* %c.7
  %t1148 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1114 = load i32, i32* %t1148
  %.v1115 = mul i32 %.v1113, %.v1114
  store i32 %.v1115, i32* %x
  store i32 65535, i32* %y
  br label %while.cond354
if.end353:
  %.v1141 = load i32, i32* %ans
  store i32 %.v1141, i32* %c.7
  %.v1142 = load i32, i32* %sum.7
  store i32 %.v1142, i32* %al.7
  br label %while.cond331
while.cond354:
  %.v1116 = load i32, i32* %i
  %.v1117 = icmp slt i32 %.v1116, 16
  %.v1118 = zext i1 %.v1117 to i32
  %.v1119 = icmp ne i32 %.v1118, 0
  br i1 %.v1119, label %while.body355, label %while.end356
while.body355:
  store i32 0, i32* %.v1120
  %.v1121 = load i32, i32* %x
  %.v1122 = srem i32 %.v1121, 2
  %.v1123 = icmp ne i32 %.v1122, 0
  br i1 %.v1123, label %land.rhs359, label %land.end360
while.end356:
  br label %if.end353
if.then357:
  %.v1130 = load i32, i32* %ans
  %.v1131 = load i32, i32* %i
  %t1166 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1131
  %.v1132 = load i32, i32* %t1166
  %.v1133 = mul i32 1, %.v1132
  %.v1134 = add i32 %.v1130, %.v1133
  store i32 %.v1134, i32* %ans
  br label %if.end358
if.end358:
  %.v1135 = load i32, i32* %x
  %.v1136 = sdiv i32 %.v1135, 2
  store i32 %.v1136, i32* %x
  %.v1137 = load i32, i32* %y
  %.v1138 = sdiv i32 %.v1137, 2
  store i32 %.v1138, i32* %y
  %.v1139 = load i32, i32* %i
  %.v1140 = add i32 %.v1139, 1
  store i32 %.v1140, i32* %i
  br label %while.cond354
land.rhs359:
  %.v1124 = load i32, i32* %y
  %.v1125 = srem i32 %.v1124, 2
  %.v1126 = icmp ne i32 %.v1125, 0
  %.v1127 = zext i1 %.v1126 to i32
  store i32 %.v1127, i32* %.v1120
  br label %land.end360
land.end360:
  %.v1128 = load i32, i32* %.v1120
  %.v1129 = icmp ne i32 %.v1128, 0
  br i1 %.v1129, label %if.then357, label %if.end358
if.then361:
  %.v1150 = load i32, i32* %x
  %.v1151 = icmp slt i32 %.v1150, 0
  %.v1152 = zext i1 %.v1151 to i32
  %.v1153 = icmp ne i32 %.v1152, 0
  br i1 %.v1153, label %if.then364, label %if.else365
if.else362:
  %.v1154 = load i32, i32* %y
  %.v1155 = icmp sgt i32 %.v1154, 0
  %.v1156 = zext i1 %.v1155 to i32
  %.v1157 = icmp ne i32 %.v1156, 0
  br i1 %.v1157, label %if.then367, label %if.else368
if.end363:
  %.v1178 = load i32, i32* %ans
  store i32 %.v1178, i32* %mr.3
  br label %while.cond289
if.then364:
  store i32 65535, i32* %ans
  br label %if.end366
if.else365:
  store i32 0, i32* %ans
  br label %if.end366
if.end366:
  br label %if.end363
if.then367:
  %.v1158 = load i32, i32* %x
  %.v1159 = icmp sgt i32 %.v1158, 32767
  %.v1160 = zext i1 %.v1159 to i32
  %.v1161 = icmp ne i32 %.v1160, 0
  br i1 %.v1161, label %if.then370, label %if.else371
if.else368:
  %.v1177 = load i32, i32* %x
  store i32 %.v1177, i32* %ans
  br label %if.end369
if.end369:
  br label %if.end363
if.then370:
  %.v1162 = load i32, i32* %x
  %.v1163 = load i32, i32* %y
  %t1199 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1163
  %.v1164 = load i32, i32* %t1199
  %.v1165 = sdiv i32 %.v1162, %.v1164
  store i32 %.v1165, i32* %x
  %.v1166 = load i32, i32* %x
  %.v1167 = add i32 %.v1166, 65536
  %.v1168 = load i32, i32* %y
  %.v1169 = sub i32 15, %.v1168
  %.v1170 = add i32 %.v1169, 1
  %t1207 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1170
  %.v1171 = load i32, i32* %t1207
  %.v1172 = sub i32 %.v1167, %.v1171
  store i32 %.v1172, i32* %ans
  br label %if.end372
if.else371:
  %.v1173 = load i32, i32* %x
  %.v1174 = load i32, i32* %y
  %t1212 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1174
  %.v1175 = load i32, i32* %t1212
  %.v1176 = sdiv i32 %.v1173, %.v1175
  store i32 %.v1176, i32* %ans
  br label %if.end372
if.end372:
  br label %if.end369
if.then373:
  %.v1186 = load i32, i32* %x
  %.v1187 = icmp slt i32 %.v1186, 0
  %.v1188 = zext i1 %.v1187 to i32
  %.v1189 = icmp ne i32 %.v1188, 0
  br i1 %.v1189, label %if.then376, label %if.else377
if.else374:
  %.v1190 = load i32, i32* %y
  %.v1191 = icmp sgt i32 %.v1190, 0
  %.v1192 = zext i1 %.v1191 to i32
  %.v1193 = icmp ne i32 %.v1192, 0
  br i1 %.v1193, label %if.then379, label %if.else380
if.end375:
  %.v1214 = load i32, i32* %ans
  store i32 %.v1214, i32* %pr.1
  br label %while.cond193
if.then376:
  store i32 65535, i32* %ans
  br label %if.end378
if.else377:
  store i32 0, i32* %ans
  br label %if.end378
if.end378:
  br label %if.end375
if.then379:
  %.v1194 = load i32, i32* %x
  %.v1195 = icmp sgt i32 %.v1194, 32767
  %.v1196 = zext i1 %.v1195 to i32
  %.v1197 = icmp ne i32 %.v1196, 0
  br i1 %.v1197, label %if.then382, label %if.else383
if.else380:
  %.v1213 = load i32, i32* %x
  store i32 %.v1213, i32* %ans
  br label %if.end381
if.end381:
  br label %if.end375
if.then382:
  %.v1198 = load i32, i32* %x
  %.v1199 = load i32, i32* %y
  %t1238 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1199
  %.v1200 = load i32, i32* %t1238
  %.v1201 = sdiv i32 %.v1198, %.v1200
  store i32 %.v1201, i32* %x
  %.v1202 = load i32, i32* %x
  %.v1203 = add i32 %.v1202, 65536
  %.v1204 = load i32, i32* %y
  %.v1205 = sub i32 15, %.v1204
  %.v1206 = add i32 %.v1205, 1
  %t1246 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1206
  %.v1207 = load i32, i32* %t1246
  %.v1208 = sub i32 %.v1203, %.v1207
  store i32 %.v1208, i32* %ans
  br label %if.end384
if.else383:
  %.v1209 = load i32, i32* %x
  %.v1210 = load i32, i32* %y
  %t1251 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1210
  %.v1211 = load i32, i32* %t1251
  %.v1212 = sdiv i32 %.v1209, %.v1211
  store i32 %.v1212, i32* %ans
  br label %if.end384
if.end384:
  br label %if.end381
while.cond385:
  %.v1217 = load i32, i32* %cur
  %.v1218 = icmp slt i32 %.v1217, 16
  %.v1219 = zext i1 %.v1218 to i32
  %.v1220 = icmp ne i32 %.v1219, 0
  br i1 %.v1220, label %while.body386, label %while.end387
while.body386:
  store i32 2, i32* %pl.2
  %.v1221 = load i32, i32* %cur
  store i32 %.v1221, i32* %pr.2
  store i32 1, i32* %pres.2
  br label %while.cond388
while.end387:
  store i32 0, i32* %cur
  br label %while.cond580
while.cond388:
  %.v1222 = load i32, i32* %pr.2
  %.v1223 = icmp sgt i32 %.v1222, 0
  %.v1224 = zext i1 %.v1223 to i32
  %.v1225 = icmp ne i32 %.v1224, 0
  br i1 %.v1225, label %while.body389, label %while.end390
while.body389:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1226 = load i32, i32* %pr.2
  store i32 %.v1226, i32* %x
  store i32 1, i32* %y
  br label %while.cond391
while.end390:
  %.v1828 = load i32, i32* %pres.2
  store i32 %.v1828, i32* %ans
  %.v1829 = load i32, i32* %ans
  call void @putint(i32 %.v1829)
  call void @putch(i32 10)
  %.v1830 = load i32, i32* %cur
  %.v1831 = add i32 %.v1830, 1
  store i32 %.v1831, i32* %cur
  br label %while.cond385
while.cond391:
  %.v1227 = load i32, i32* %i
  %.v1228 = icmp slt i32 %.v1227, 16
  %.v1229 = zext i1 %.v1228 to i32
  %.v1230 = icmp ne i32 %.v1229, 0
  br i1 %.v1230, label %while.body392, label %while.end393
while.body392:
  store i32 0, i32* %.v1231
  %.v1232 = load i32, i32* %x
  %.v1233 = srem i32 %.v1232, 2
  %.v1234 = icmp ne i32 %.v1233, 0
  br i1 %.v1234, label %land.rhs396, label %land.end397
while.end393:
  %.v1252 = load i32, i32* %ans
  %.v1253 = icmp ne i32 %.v1252, 0
  br i1 %.v1253, label %if.then398, label %if.end399
if.then394:
  %.v1241 = load i32, i32* %ans
  %.v1242 = load i32, i32* %i
  %t1283 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1242
  %.v1243 = load i32, i32* %t1283
  %.v1244 = mul i32 1, %.v1243
  %.v1245 = add i32 %.v1241, %.v1244
  store i32 %.v1245, i32* %ans
  br label %if.end395
if.end395:
  %.v1246 = load i32, i32* %x
  %.v1247 = sdiv i32 %.v1246, 2
  store i32 %.v1247, i32* %x
  %.v1248 = load i32, i32* %y
  %.v1249 = sdiv i32 %.v1248, 2
  store i32 %.v1249, i32* %y
  %.v1250 = load i32, i32* %i
  %.v1251 = add i32 %.v1250, 1
  store i32 %.v1251, i32* %i
  br label %while.cond391
land.rhs396:
  %.v1235 = load i32, i32* %y
  %.v1236 = srem i32 %.v1235, 2
  %.v1237 = icmp ne i32 %.v1236, 0
  %.v1238 = zext i1 %.v1237 to i32
  store i32 %.v1238, i32* %.v1231
  br label %land.end397
land.end397:
  %.v1239 = load i32, i32* %.v1231
  %.v1240 = icmp ne i32 %.v1239, 0
  br i1 %.v1240, label %if.then394, label %if.end395
if.then398:
  %.v1254 = load i32, i32* %pres.2
  store i32 %.v1254, i32* %ml.4
  %.v1255 = load i32, i32* %pl.2
  store i32 %.v1255, i32* %mr.4
  store i32 0, i32* %mres.4
  br label %while.cond400
if.end399:
  %.v1524 = load i32, i32* %pl.2
  store i32 %.v1524, i32* %ml.5
  %.v1525 = load i32, i32* %pl.2
  store i32 %.v1525, i32* %mr.5
  store i32 0, i32* %mres.5
  br label %while.cond484
while.cond400:
  %.v1256 = load i32, i32* %mr.4
  %.v1257 = icmp ne i32 %.v1256, 0
  br i1 %.v1257, label %while.body401, label %while.end402
while.body401:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1258 = load i32, i32* %mr.4
  store i32 %.v1258, i32* %x
  store i32 1, i32* %y
  br label %while.cond403
while.end402:
  %.v1522 = load i32, i32* %mres.4
  store i32 %.v1522, i32* %ans
  %.v1523 = load i32, i32* %ans
  store i32 %.v1523, i32* %pres.2
  br label %if.end399
while.cond403:
  %.v1259 = load i32, i32* %i
  %.v1260 = icmp slt i32 %.v1259, 16
  %.v1261 = zext i1 %.v1260 to i32
  %.v1262 = icmp ne i32 %.v1261, 0
  br i1 %.v1262, label %while.body404, label %while.end405
while.body404:
  store i32 0, i32* %.v1263
  %.v1264 = load i32, i32* %x
  %.v1265 = srem i32 %.v1264, 2
  %.v1266 = icmp ne i32 %.v1265, 0
  br i1 %.v1266, label %land.rhs408, label %land.end409
while.end405:
  %.v1284 = load i32, i32* %ans
  %.v1285 = icmp ne i32 %.v1284, 0
  br i1 %.v1285, label %if.then410, label %if.end411
if.then406:
  %.v1273 = load i32, i32* %ans
  %.v1274 = load i32, i32* %i
  %t1315 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1274
  %.v1275 = load i32, i32* %t1315
  %.v1276 = mul i32 1, %.v1275
  %.v1277 = add i32 %.v1273, %.v1276
  store i32 %.v1277, i32* %ans
  br label %if.end407
if.end407:
  %.v1278 = load i32, i32* %x
  %.v1279 = sdiv i32 %.v1278, 2
  store i32 %.v1279, i32* %x
  %.v1280 = load i32, i32* %y
  %.v1281 = sdiv i32 %.v1280, 2
  store i32 %.v1281, i32* %y
  %.v1282 = load i32, i32* %i
  %.v1283 = add i32 %.v1282, 1
  store i32 %.v1283, i32* %i
  br label %while.cond403
land.rhs408:
  %.v1267 = load i32, i32* %y
  %.v1268 = srem i32 %.v1267, 2
  %.v1269 = icmp ne i32 %.v1268, 0
  %.v1270 = zext i1 %.v1269 to i32
  store i32 %.v1270, i32* %.v1263
  br label %land.end409
land.end409:
  %.v1271 = load i32, i32* %.v1263
  %.v1272 = icmp ne i32 %.v1271, 0
  br i1 %.v1272, label %if.then406, label %if.end407
if.then410:
  %.v1286 = load i32, i32* %mres.4
  store i32 %.v1286, i32* %al.8
  %.v1287 = load i32, i32* %ml.4
  store i32 %.v1287, i32* %c.8
  br label %while.cond412
if.end411:
  %.v1387 = load i32, i32* %ml.4
  store i32 %.v1387, i32* %al.9
  %.v1388 = load i32, i32* %ml.4
  store i32 %.v1388, i32* %c.9
  br label %while.cond442
while.cond412:
  %.v1288 = load i32, i32* %c.8
  %.v1289 = icmp ne i32 %.v1288, 0
  br i1 %.v1289, label %while.body413, label %while.end414
while.body413:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1290 = load i32, i32* %al.8
  store i32 %.v1290, i32* %x
  %.v1291 = load i32, i32* %c.8
  store i32 %.v1291, i32* %y
  br label %while.cond415
while.end414:
  %.v1385 = load i32, i32* %al.8
  store i32 %.v1385, i32* %ans
  %.v1386 = load i32, i32* %ans
  store i32 %.v1386, i32* %mres.4
  br label %if.end411
while.cond415:
  %.v1292 = load i32, i32* %i
  %.v1293 = icmp slt i32 %.v1292, 16
  %.v1294 = zext i1 %.v1293 to i32
  %.v1295 = icmp ne i32 %.v1294, 0
  br i1 %.v1295, label %while.body416, label %while.end417
while.body416:
  %.v1296 = load i32, i32* %x
  %.v1297 = srem i32 %.v1296, 2
  %.v1298 = icmp ne i32 %.v1297, 0
  br i1 %.v1298, label %if.then418, label %if.else419
while.end417:
  %.v1323 = load i32, i32* %ans
  store i32 %.v1323, i32* %sum.8
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1324 = load i32, i32* %al.8
  store i32 %.v1324, i32* %x
  %.v1325 = load i32, i32* %c.8
  store i32 %.v1325, i32* %y
  br label %while.cond425
if.then418:
  %.v1299 = load i32, i32* %y
  %.v1300 = srem i32 %.v1299, 2
  %.v1301 = icmp eq i32 %.v1300, 0
  %.v1302 = zext i1 %.v1301 to i32
  %.v1303 = icmp ne i32 %.v1302, 0
  br i1 %.v1303, label %if.then421, label %if.end422
if.else419:
  %.v1309 = load i32, i32* %y
  %.v1310 = srem i32 %.v1309, 2
  %.v1311 = icmp ne i32 %.v1310, 0
  br i1 %.v1311, label %if.then423, label %if.end424
if.end420:
  %.v1317 = load i32, i32* %x
  %.v1318 = sdiv i32 %.v1317, 2
  store i32 %.v1318, i32* %x
  %.v1319 = load i32, i32* %y
  %.v1320 = sdiv i32 %.v1319, 2
  store i32 %.v1320, i32* %y
  %.v1321 = load i32, i32* %i
  %.v1322 = add i32 %.v1321, 1
  store i32 %.v1322, i32* %i
  br label %while.cond415
if.then421:
  %.v1304 = load i32, i32* %ans
  %.v1305 = load i32, i32* %i
  %t1347 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1305
  %.v1306 = load i32, i32* %t1347
  %.v1307 = mul i32 1, %.v1306
  %.v1308 = add i32 %.v1304, %.v1307
  store i32 %.v1308, i32* %ans
  br label %if.end422
if.end422:
  br label %if.end420
if.then423:
  %.v1312 = load i32, i32* %ans
  %.v1313 = load i32, i32* %i
  %t1356 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1313
  %.v1314 = load i32, i32* %t1356
  %.v1315 = mul i32 1, %.v1314
  %.v1316 = add i32 %.v1312, %.v1315
  store i32 %.v1316, i32* %ans
  br label %if.end424
if.end424:
  br label %if.end420
while.cond425:
  %.v1326 = load i32, i32* %i
  %.v1327 = icmp slt i32 %.v1326, 16
  %.v1328 = zext i1 %.v1327 to i32
  %.v1329 = icmp ne i32 %.v1328, 0
  br i1 %.v1329, label %while.body426, label %while.end427
while.body426:
  store i32 0, i32* %.v1330
  %.v1331 = load i32, i32* %x
  %.v1332 = srem i32 %.v1331, 2
  %.v1333 = icmp ne i32 %.v1332, 0
  br i1 %.v1333, label %land.rhs430, label %land.end431
while.end427:
  %.v1351 = load i32, i32* %ans
  store i32 %.v1351, i32* %c.8
  %.v1352 = icmp sgt i32 1, 15
  %.v1353 = zext i1 %.v1352 to i32
  %.v1354 = icmp ne i32 %.v1353, 0
  br i1 %.v1354, label %if.then432, label %if.else433
if.then428:
  %.v1340 = load i32, i32* %ans
  %.v1341 = load i32, i32* %i
  %t1384 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1341
  %.v1342 = load i32, i32* %t1384
  %.v1343 = mul i32 1, %.v1342
  %.v1344 = add i32 %.v1340, %.v1343
  store i32 %.v1344, i32* %ans
  br label %if.end429
if.end429:
  %.v1345 = load i32, i32* %x
  %.v1346 = sdiv i32 %.v1345, 2
  store i32 %.v1346, i32* %x
  %.v1347 = load i32, i32* %y
  %.v1348 = sdiv i32 %.v1347, 2
  store i32 %.v1348, i32* %y
  %.v1349 = load i32, i32* %i
  %.v1350 = add i32 %.v1349, 1
  store i32 %.v1350, i32* %i
  br label %while.cond425
land.rhs430:
  %.v1334 = load i32, i32* %y
  %.v1335 = srem i32 %.v1334, 2
  %.v1336 = icmp ne i32 %.v1335, 0
  %.v1337 = zext i1 %.v1336 to i32
  store i32 %.v1337, i32* %.v1330
  br label %land.end431
land.end431:
  %.v1338 = load i32, i32* %.v1330
  %.v1339 = icmp ne i32 %.v1338, 0
  br i1 %.v1339, label %if.then428, label %if.end429
if.then432:
  store i32 0, i32* %ans
  br label %if.end434
if.else433:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1355 = load i32, i32* %c.8
  %t1399 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1356 = load i32, i32* %t1399
  %.v1357 = mul i32 %.v1355, %.v1356
  store i32 %.v1357, i32* %x
  store i32 65535, i32* %y
  br label %while.cond435
if.end434:
  %.v1383 = load i32, i32* %ans
  store i32 %.v1383, i32* %c.8
  %.v1384 = load i32, i32* %sum.8
  store i32 %.v1384, i32* %al.8
  br label %while.cond412
while.cond435:
  %.v1358 = load i32, i32* %i
  %.v1359 = icmp slt i32 %.v1358, 16
  %.v1360 = zext i1 %.v1359 to i32
  %.v1361 = icmp ne i32 %.v1360, 0
  br i1 %.v1361, label %while.body436, label %while.end437
while.body436:
  store i32 0, i32* %.v1362
  %.v1363 = load i32, i32* %x
  %.v1364 = srem i32 %.v1363, 2
  %.v1365 = icmp ne i32 %.v1364, 0
  br i1 %.v1365, label %land.rhs440, label %land.end441
while.end437:
  br label %if.end434
if.then438:
  %.v1372 = load i32, i32* %ans
  %.v1373 = load i32, i32* %i
  %t1417 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1373
  %.v1374 = load i32, i32* %t1417
  %.v1375 = mul i32 1, %.v1374
  %.v1376 = add i32 %.v1372, %.v1375
  store i32 %.v1376, i32* %ans
  br label %if.end439
if.end439:
  %.v1377 = load i32, i32* %x
  %.v1378 = sdiv i32 %.v1377, 2
  store i32 %.v1378, i32* %x
  %.v1379 = load i32, i32* %y
  %.v1380 = sdiv i32 %.v1379, 2
  store i32 %.v1380, i32* %y
  %.v1381 = load i32, i32* %i
  %.v1382 = add i32 %.v1381, 1
  store i32 %.v1382, i32* %i
  br label %while.cond435
land.rhs440:
  %.v1366 = load i32, i32* %y
  %.v1367 = srem i32 %.v1366, 2
  %.v1368 = icmp ne i32 %.v1367, 0
  %.v1369 = zext i1 %.v1368 to i32
  store i32 %.v1369, i32* %.v1362
  br label %land.end441
land.end441:
  %.v1370 = load i32, i32* %.v1362
  %.v1371 = icmp ne i32 %.v1370, 0
  br i1 %.v1371, label %if.then438, label %if.end439
while.cond442:
  %.v1389 = load i32, i32* %c.9
  %.v1390 = icmp ne i32 %.v1389, 0
  br i1 %.v1390, label %while.body443, label %while.end444
while.body443:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1391 = load i32, i32* %al.9
  store i32 %.v1391, i32* %x
  %.v1392 = load i32, i32* %c.9
  store i32 %.v1392, i32* %y
  br label %while.cond445
while.end444:
  %.v1486 = load i32, i32* %al.9
  store i32 %.v1486, i32* %ans
  %.v1487 = load i32, i32* %ans
  store i32 %.v1487, i32* %ml.4
  %.v1488 = load i32, i32* %mr.4
  store i32 %.v1488, i32* %x
  store i32 1, i32* %y
  %.v1489 = load i32, i32* %y
  %.v1490 = icmp sge i32 %.v1489, 15
  %.v1491 = zext i1 %.v1490 to i32
  %.v1492 = icmp ne i32 %.v1491, 0
  br i1 %.v1492, label %if.then472, label %if.else473
while.cond445:
  %.v1393 = load i32, i32* %i
  %.v1394 = icmp slt i32 %.v1393, 16
  %.v1395 = zext i1 %.v1394 to i32
  %.v1396 = icmp ne i32 %.v1395, 0
  br i1 %.v1396, label %while.body446, label %while.end447
while.body446:
  %.v1397 = load i32, i32* %x
  %.v1398 = srem i32 %.v1397, 2
  %.v1399 = icmp ne i32 %.v1398, 0
  br i1 %.v1399, label %if.then448, label %if.else449
while.end447:
  %.v1424 = load i32, i32* %ans
  store i32 %.v1424, i32* %sum.9
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1425 = load i32, i32* %al.9
  store i32 %.v1425, i32* %x
  %.v1426 = load i32, i32* %c.9
  store i32 %.v1426, i32* %y
  br label %while.cond455
if.then448:
  %.v1400 = load i32, i32* %y
  %.v1401 = srem i32 %.v1400, 2
  %.v1402 = icmp eq i32 %.v1401, 0
  %.v1403 = zext i1 %.v1402 to i32
  %.v1404 = icmp ne i32 %.v1403, 0
  br i1 %.v1404, label %if.then451, label %if.end452
if.else449:
  %.v1410 = load i32, i32* %y
  %.v1411 = srem i32 %.v1410, 2
  %.v1412 = icmp ne i32 %.v1411, 0
  br i1 %.v1412, label %if.then453, label %if.end454
if.end450:
  %.v1418 = load i32, i32* %x
  %.v1419 = sdiv i32 %.v1418, 2
  store i32 %.v1419, i32* %x
  %.v1420 = load i32, i32* %y
  %.v1421 = sdiv i32 %.v1420, 2
  store i32 %.v1421, i32* %y
  %.v1422 = load i32, i32* %i
  %.v1423 = add i32 %.v1422, 1
  store i32 %.v1423, i32* %i
  br label %while.cond445
if.then451:
  %.v1405 = load i32, i32* %ans
  %.v1406 = load i32, i32* %i
  %t1451 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1406
  %.v1407 = load i32, i32* %t1451
  %.v1408 = mul i32 1, %.v1407
  %.v1409 = add i32 %.v1405, %.v1408
  store i32 %.v1409, i32* %ans
  br label %if.end452
if.end452:
  br label %if.end450
if.then453:
  %.v1413 = load i32, i32* %ans
  %.v1414 = load i32, i32* %i
  %t1460 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1414
  %.v1415 = load i32, i32* %t1460
  %.v1416 = mul i32 1, %.v1415
  %.v1417 = add i32 %.v1413, %.v1416
  store i32 %.v1417, i32* %ans
  br label %if.end454
if.end454:
  br label %if.end450
while.cond455:
  %.v1427 = load i32, i32* %i
  %.v1428 = icmp slt i32 %.v1427, 16
  %.v1429 = zext i1 %.v1428 to i32
  %.v1430 = icmp ne i32 %.v1429, 0
  br i1 %.v1430, label %while.body456, label %while.end457
while.body456:
  store i32 0, i32* %.v1431
  %.v1432 = load i32, i32* %x
  %.v1433 = srem i32 %.v1432, 2
  %.v1434 = icmp ne i32 %.v1433, 0
  br i1 %.v1434, label %land.rhs460, label %land.end461
while.end457:
  %.v1452 = load i32, i32* %ans
  store i32 %.v1452, i32* %c.9
  %.v1453 = icmp sgt i32 1, 15
  %.v1454 = zext i1 %.v1453 to i32
  %.v1455 = icmp ne i32 %.v1454, 0
  br i1 %.v1455, label %if.then462, label %if.else463
if.then458:
  %.v1441 = load i32, i32* %ans
  %.v1442 = load i32, i32* %i
  %t1488 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1442
  %.v1443 = load i32, i32* %t1488
  %.v1444 = mul i32 1, %.v1443
  %.v1445 = add i32 %.v1441, %.v1444
  store i32 %.v1445, i32* %ans
  br label %if.end459
if.end459:
  %.v1446 = load i32, i32* %x
  %.v1447 = sdiv i32 %.v1446, 2
  store i32 %.v1447, i32* %x
  %.v1448 = load i32, i32* %y
  %.v1449 = sdiv i32 %.v1448, 2
  store i32 %.v1449, i32* %y
  %.v1450 = load i32, i32* %i
  %.v1451 = add i32 %.v1450, 1
  store i32 %.v1451, i32* %i
  br label %while.cond455
land.rhs460:
  %.v1435 = load i32, i32* %y
  %.v1436 = srem i32 %.v1435, 2
  %.v1437 = icmp ne i32 %.v1436, 0
  %.v1438 = zext i1 %.v1437 to i32
  store i32 %.v1438, i32* %.v1431
  br label %land.end461
land.end461:
  %.v1439 = load i32, i32* %.v1431
  %.v1440 = icmp ne i32 %.v1439, 0
  br i1 %.v1440, label %if.then458, label %if.end459
if.then462:
  store i32 0, i32* %ans
  br label %if.end464
if.else463:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1456 = load i32, i32* %c.9
  %t1503 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1457 = load i32, i32* %t1503
  %.v1458 = mul i32 %.v1456, %.v1457
  store i32 %.v1458, i32* %x
  store i32 65535, i32* %y
  br label %while.cond465
if.end464:
  %.v1484 = load i32, i32* %ans
  store i32 %.v1484, i32* %c.9
  %.v1485 = load i32, i32* %sum.9
  store i32 %.v1485, i32* %al.9
  br label %while.cond442
while.cond465:
  %.v1459 = load i32, i32* %i
  %.v1460 = icmp slt i32 %.v1459, 16
  %.v1461 = zext i1 %.v1460 to i32
  %.v1462 = icmp ne i32 %.v1461, 0
  br i1 %.v1462, label %while.body466, label %while.end467
while.body466:
  store i32 0, i32* %.v1463
  %.v1464 = load i32, i32* %x
  %.v1465 = srem i32 %.v1464, 2
  %.v1466 = icmp ne i32 %.v1465, 0
  br i1 %.v1466, label %land.rhs470, label %land.end471
while.end467:
  br label %if.end464
if.then468:
  %.v1473 = load i32, i32* %ans
  %.v1474 = load i32, i32* %i
  %t1521 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1474
  %.v1475 = load i32, i32* %t1521
  %.v1476 = mul i32 1, %.v1475
  %.v1477 = add i32 %.v1473, %.v1476
  store i32 %.v1477, i32* %ans
  br label %if.end469
if.end469:
  %.v1478 = load i32, i32* %x
  %.v1479 = sdiv i32 %.v1478, 2
  store i32 %.v1479, i32* %x
  %.v1480 = load i32, i32* %y
  %.v1481 = sdiv i32 %.v1480, 2
  store i32 %.v1481, i32* %y
  %.v1482 = load i32, i32* %i
  %.v1483 = add i32 %.v1482, 1
  store i32 %.v1483, i32* %i
  br label %while.cond465
land.rhs470:
  %.v1467 = load i32, i32* %y
  %.v1468 = srem i32 %.v1467, 2
  %.v1469 = icmp ne i32 %.v1468, 0
  %.v1470 = zext i1 %.v1469 to i32
  store i32 %.v1470, i32* %.v1463
  br label %land.end471
land.end471:
  %.v1471 = load i32, i32* %.v1463
  %.v1472 = icmp ne i32 %.v1471, 0
  br i1 %.v1472, label %if.then468, label %if.end469
if.then472:
  %.v1493 = load i32, i32* %x
  %.v1494 = icmp slt i32 %.v1493, 0
  %.v1495 = zext i1 %.v1494 to i32
  %.v1496 = icmp ne i32 %.v1495, 0
  br i1 %.v1496, label %if.then475, label %if.else476
if.else473:
  %.v1497 = load i32, i32* %y
  %.v1498 = icmp sgt i32 %.v1497, 0
  %.v1499 = zext i1 %.v1498 to i32
  %.v1500 = icmp ne i32 %.v1499, 0
  br i1 %.v1500, label %if.then478, label %if.else479
if.end474:
  %.v1521 = load i32, i32* %ans
  store i32 %.v1521, i32* %mr.4
  br label %while.cond400
if.then475:
  store i32 65535, i32* %ans
  br label %if.end477
if.else476:
  store i32 0, i32* %ans
  br label %if.end477
if.end477:
  br label %if.end474
if.then478:
  %.v1501 = load i32, i32* %x
  %.v1502 = icmp sgt i32 %.v1501, 32767
  %.v1503 = zext i1 %.v1502 to i32
  %.v1504 = icmp ne i32 %.v1503, 0
  br i1 %.v1504, label %if.then481, label %if.else482
if.else479:
  %.v1520 = load i32, i32* %x
  store i32 %.v1520, i32* %ans
  br label %if.end480
if.end480:
  br label %if.end474
if.then481:
  %.v1505 = load i32, i32* %x
  %.v1506 = load i32, i32* %y
  %t1554 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1506
  %.v1507 = load i32, i32* %t1554
  %.v1508 = sdiv i32 %.v1505, %.v1507
  store i32 %.v1508, i32* %x
  %.v1509 = load i32, i32* %x
  %.v1510 = add i32 %.v1509, 65536
  %.v1511 = load i32, i32* %y
  %.v1512 = sub i32 15, %.v1511
  %.v1513 = add i32 %.v1512, 1
  %t1562 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1513
  %.v1514 = load i32, i32* %t1562
  %.v1515 = sub i32 %.v1510, %.v1514
  store i32 %.v1515, i32* %ans
  br label %if.end483
if.else482:
  %.v1516 = load i32, i32* %x
  %.v1517 = load i32, i32* %y
  %t1567 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1517
  %.v1518 = load i32, i32* %t1567
  %.v1519 = sdiv i32 %.v1516, %.v1518
  store i32 %.v1519, i32* %ans
  br label %if.end483
if.end483:
  br label %if.end480
while.cond484:
  %.v1526 = load i32, i32* %mr.5
  %.v1527 = icmp ne i32 %.v1526, 0
  br i1 %.v1527, label %while.body485, label %while.end486
while.body485:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1528 = load i32, i32* %mr.5
  store i32 %.v1528, i32* %x
  store i32 1, i32* %y
  br label %while.cond487
while.end486:
  %.v1792 = load i32, i32* %mres.5
  store i32 %.v1792, i32* %ans
  %.v1793 = load i32, i32* %ans
  store i32 %.v1793, i32* %pl.2
  %.v1794 = load i32, i32* %pr.2
  store i32 %.v1794, i32* %x
  store i32 1, i32* %y
  %.v1795 = load i32, i32* %y
  %.v1796 = icmp sge i32 %.v1795, 15
  %.v1797 = zext i1 %.v1796 to i32
  %.v1798 = icmp ne i32 %.v1797, 0
  br i1 %.v1798, label %if.then568, label %if.else569
while.cond487:
  %.v1529 = load i32, i32* %i
  %.v1530 = icmp slt i32 %.v1529, 16
  %.v1531 = zext i1 %.v1530 to i32
  %.v1532 = icmp ne i32 %.v1531, 0
  br i1 %.v1532, label %while.body488, label %while.end489
while.body488:
  store i32 0, i32* %.v1533
  %.v1534 = load i32, i32* %x
  %.v1535 = srem i32 %.v1534, 2
  %.v1536 = icmp ne i32 %.v1535, 0
  br i1 %.v1536, label %land.rhs492, label %land.end493
while.end489:
  %.v1554 = load i32, i32* %ans
  %.v1555 = icmp ne i32 %.v1554, 0
  br i1 %.v1555, label %if.then494, label %if.end495
if.then490:
  %.v1543 = load i32, i32* %ans
  %.v1544 = load i32, i32* %i
  %t1594 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1544
  %.v1545 = load i32, i32* %t1594
  %.v1546 = mul i32 1, %.v1545
  %.v1547 = add i32 %.v1543, %.v1546
  store i32 %.v1547, i32* %ans
  br label %if.end491
if.end491:
  %.v1548 = load i32, i32* %x
  %.v1549 = sdiv i32 %.v1548, 2
  store i32 %.v1549, i32* %x
  %.v1550 = load i32, i32* %y
  %.v1551 = sdiv i32 %.v1550, 2
  store i32 %.v1551, i32* %y
  %.v1552 = load i32, i32* %i
  %.v1553 = add i32 %.v1552, 1
  store i32 %.v1553, i32* %i
  br label %while.cond487
land.rhs492:
  %.v1537 = load i32, i32* %y
  %.v1538 = srem i32 %.v1537, 2
  %.v1539 = icmp ne i32 %.v1538, 0
  %.v1540 = zext i1 %.v1539 to i32
  store i32 %.v1540, i32* %.v1533
  br label %land.end493
land.end493:
  %.v1541 = load i32, i32* %.v1533
  %.v1542 = icmp ne i32 %.v1541, 0
  br i1 %.v1542, label %if.then490, label %if.end491
if.then494:
  %.v1556 = load i32, i32* %mres.5
  store i32 %.v1556, i32* %al.10
  %.v1557 = load i32, i32* %ml.5
  store i32 %.v1557, i32* %c.10
  br label %while.cond496
if.end495:
  %.v1657 = load i32, i32* %ml.5
  store i32 %.v1657, i32* %al.11
  %.v1658 = load i32, i32* %ml.5
  store i32 %.v1658, i32* %c.11
  br label %while.cond526
while.cond496:
  %.v1558 = load i32, i32* %c.10
  %.v1559 = icmp ne i32 %.v1558, 0
  br i1 %.v1559, label %while.body497, label %while.end498
while.body497:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1560 = load i32, i32* %al.10
  store i32 %.v1560, i32* %x
  %.v1561 = load i32, i32* %c.10
  store i32 %.v1561, i32* %y
  br label %while.cond499
while.end498:
  %.v1655 = load i32, i32* %al.10
  store i32 %.v1655, i32* %ans
  %.v1656 = load i32, i32* %ans
  store i32 %.v1656, i32* %mres.5
  br label %if.end495
while.cond499:
  %.v1562 = load i32, i32* %i
  %.v1563 = icmp slt i32 %.v1562, 16
  %.v1564 = zext i1 %.v1563 to i32
  %.v1565 = icmp ne i32 %.v1564, 0
  br i1 %.v1565, label %while.body500, label %while.end501
while.body500:
  %.v1566 = load i32, i32* %x
  %.v1567 = srem i32 %.v1566, 2
  %.v1568 = icmp ne i32 %.v1567, 0
  br i1 %.v1568, label %if.then502, label %if.else503
while.end501:
  %.v1593 = load i32, i32* %ans
  store i32 %.v1593, i32* %sum.10
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1594 = load i32, i32* %al.10
  store i32 %.v1594, i32* %x
  %.v1595 = load i32, i32* %c.10
  store i32 %.v1595, i32* %y
  br label %while.cond509
if.then502:
  %.v1569 = load i32, i32* %y
  %.v1570 = srem i32 %.v1569, 2
  %.v1571 = icmp eq i32 %.v1570, 0
  %.v1572 = zext i1 %.v1571 to i32
  %.v1573 = icmp ne i32 %.v1572, 0
  br i1 %.v1573, label %if.then505, label %if.end506
if.else503:
  %.v1579 = load i32, i32* %y
  %.v1580 = srem i32 %.v1579, 2
  %.v1581 = icmp ne i32 %.v1580, 0
  br i1 %.v1581, label %if.then507, label %if.end508
if.end504:
  %.v1587 = load i32, i32* %x
  %.v1588 = sdiv i32 %.v1587, 2
  store i32 %.v1588, i32* %x
  %.v1589 = load i32, i32* %y
  %.v1590 = sdiv i32 %.v1589, 2
  store i32 %.v1590, i32* %y
  %.v1591 = load i32, i32* %i
  %.v1592 = add i32 %.v1591, 1
  store i32 %.v1592, i32* %i
  br label %while.cond499
if.then505:
  %.v1574 = load i32, i32* %ans
  %.v1575 = load i32, i32* %i
  %t1626 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1575
  %.v1576 = load i32, i32* %t1626
  %.v1577 = mul i32 1, %.v1576
  %.v1578 = add i32 %.v1574, %.v1577
  store i32 %.v1578, i32* %ans
  br label %if.end506
if.end506:
  br label %if.end504
if.then507:
  %.v1582 = load i32, i32* %ans
  %.v1583 = load i32, i32* %i
  %t1635 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1583
  %.v1584 = load i32, i32* %t1635
  %.v1585 = mul i32 1, %.v1584
  %.v1586 = add i32 %.v1582, %.v1585
  store i32 %.v1586, i32* %ans
  br label %if.end508
if.end508:
  br label %if.end504
while.cond509:
  %.v1596 = load i32, i32* %i
  %.v1597 = icmp slt i32 %.v1596, 16
  %.v1598 = zext i1 %.v1597 to i32
  %.v1599 = icmp ne i32 %.v1598, 0
  br i1 %.v1599, label %while.body510, label %while.end511
while.body510:
  store i32 0, i32* %.v1600
  %.v1601 = load i32, i32* %x
  %.v1602 = srem i32 %.v1601, 2
  %.v1603 = icmp ne i32 %.v1602, 0
  br i1 %.v1603, label %land.rhs514, label %land.end515
while.end511:
  %.v1621 = load i32, i32* %ans
  store i32 %.v1621, i32* %c.10
  %.v1622 = icmp sgt i32 1, 15
  %.v1623 = zext i1 %.v1622 to i32
  %.v1624 = icmp ne i32 %.v1623, 0
  br i1 %.v1624, label %if.then516, label %if.else517
if.then512:
  %.v1610 = load i32, i32* %ans
  %.v1611 = load i32, i32* %i
  %t1663 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1611
  %.v1612 = load i32, i32* %t1663
  %.v1613 = mul i32 1, %.v1612
  %.v1614 = add i32 %.v1610, %.v1613
  store i32 %.v1614, i32* %ans
  br label %if.end513
if.end513:
  %.v1615 = load i32, i32* %x
  %.v1616 = sdiv i32 %.v1615, 2
  store i32 %.v1616, i32* %x
  %.v1617 = load i32, i32* %y
  %.v1618 = sdiv i32 %.v1617, 2
  store i32 %.v1618, i32* %y
  %.v1619 = load i32, i32* %i
  %.v1620 = add i32 %.v1619, 1
  store i32 %.v1620, i32* %i
  br label %while.cond509
land.rhs514:
  %.v1604 = load i32, i32* %y
  %.v1605 = srem i32 %.v1604, 2
  %.v1606 = icmp ne i32 %.v1605, 0
  %.v1607 = zext i1 %.v1606 to i32
  store i32 %.v1607, i32* %.v1600
  br label %land.end515
land.end515:
  %.v1608 = load i32, i32* %.v1600
  %.v1609 = icmp ne i32 %.v1608, 0
  br i1 %.v1609, label %if.then512, label %if.end513
if.then516:
  store i32 0, i32* %ans
  br label %if.end518
if.else517:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1625 = load i32, i32* %c.10
  %t1678 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1626 = load i32, i32* %t1678
  %.v1627 = mul i32 %.v1625, %.v1626
  store i32 %.v1627, i32* %x
  store i32 65535, i32* %y
  br label %while.cond519
if.end518:
  %.v1653 = load i32, i32* %ans
  store i32 %.v1653, i32* %c.10
  %.v1654 = load i32, i32* %sum.10
  store i32 %.v1654, i32* %al.10
  br label %while.cond496
while.cond519:
  %.v1628 = load i32, i32* %i
  %.v1629 = icmp slt i32 %.v1628, 16
  %.v1630 = zext i1 %.v1629 to i32
  %.v1631 = icmp ne i32 %.v1630, 0
  br i1 %.v1631, label %while.body520, label %while.end521
while.body520:
  store i32 0, i32* %.v1632
  %.v1633 = load i32, i32* %x
  %.v1634 = srem i32 %.v1633, 2
  %.v1635 = icmp ne i32 %.v1634, 0
  br i1 %.v1635, label %land.rhs524, label %land.end525
while.end521:
  br label %if.end518
if.then522:
  %.v1642 = load i32, i32* %ans
  %.v1643 = load i32, i32* %i
  %t1696 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1643
  %.v1644 = load i32, i32* %t1696
  %.v1645 = mul i32 1, %.v1644
  %.v1646 = add i32 %.v1642, %.v1645
  store i32 %.v1646, i32* %ans
  br label %if.end523
if.end523:
  %.v1647 = load i32, i32* %x
  %.v1648 = sdiv i32 %.v1647, 2
  store i32 %.v1648, i32* %x
  %.v1649 = load i32, i32* %y
  %.v1650 = sdiv i32 %.v1649, 2
  store i32 %.v1650, i32* %y
  %.v1651 = load i32, i32* %i
  %.v1652 = add i32 %.v1651, 1
  store i32 %.v1652, i32* %i
  br label %while.cond519
land.rhs524:
  %.v1636 = load i32, i32* %y
  %.v1637 = srem i32 %.v1636, 2
  %.v1638 = icmp ne i32 %.v1637, 0
  %.v1639 = zext i1 %.v1638 to i32
  store i32 %.v1639, i32* %.v1632
  br label %land.end525
land.end525:
  %.v1640 = load i32, i32* %.v1632
  %.v1641 = icmp ne i32 %.v1640, 0
  br i1 %.v1641, label %if.then522, label %if.end523
while.cond526:
  %.v1659 = load i32, i32* %c.11
  %.v1660 = icmp ne i32 %.v1659, 0
  br i1 %.v1660, label %while.body527, label %while.end528
while.body527:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1661 = load i32, i32* %al.11
  store i32 %.v1661, i32* %x
  %.v1662 = load i32, i32* %c.11
  store i32 %.v1662, i32* %y
  br label %while.cond529
while.end528:
  %.v1756 = load i32, i32* %al.11
  store i32 %.v1756, i32* %ans
  %.v1757 = load i32, i32* %ans
  store i32 %.v1757, i32* %ml.5
  %.v1758 = load i32, i32* %mr.5
  store i32 %.v1758, i32* %x
  store i32 1, i32* %y
  %.v1759 = load i32, i32* %y
  %.v1760 = icmp sge i32 %.v1759, 15
  %.v1761 = zext i1 %.v1760 to i32
  %.v1762 = icmp ne i32 %.v1761, 0
  br i1 %.v1762, label %if.then556, label %if.else557
while.cond529:
  %.v1663 = load i32, i32* %i
  %.v1664 = icmp slt i32 %.v1663, 16
  %.v1665 = zext i1 %.v1664 to i32
  %.v1666 = icmp ne i32 %.v1665, 0
  br i1 %.v1666, label %while.body530, label %while.end531
while.body530:
  %.v1667 = load i32, i32* %x
  %.v1668 = srem i32 %.v1667, 2
  %.v1669 = icmp ne i32 %.v1668, 0
  br i1 %.v1669, label %if.then532, label %if.else533
while.end531:
  %.v1694 = load i32, i32* %ans
  store i32 %.v1694, i32* %sum.11
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1695 = load i32, i32* %al.11
  store i32 %.v1695, i32* %x
  %.v1696 = load i32, i32* %c.11
  store i32 %.v1696, i32* %y
  br label %while.cond539
if.then532:
  %.v1670 = load i32, i32* %y
  %.v1671 = srem i32 %.v1670, 2
  %.v1672 = icmp eq i32 %.v1671, 0
  %.v1673 = zext i1 %.v1672 to i32
  %.v1674 = icmp ne i32 %.v1673, 0
  br i1 %.v1674, label %if.then535, label %if.end536
if.else533:
  %.v1680 = load i32, i32* %y
  %.v1681 = srem i32 %.v1680, 2
  %.v1682 = icmp ne i32 %.v1681, 0
  br i1 %.v1682, label %if.then537, label %if.end538
if.end534:
  %.v1688 = load i32, i32* %x
  %.v1689 = sdiv i32 %.v1688, 2
  store i32 %.v1689, i32* %x
  %.v1690 = load i32, i32* %y
  %.v1691 = sdiv i32 %.v1690, 2
  store i32 %.v1691, i32* %y
  %.v1692 = load i32, i32* %i
  %.v1693 = add i32 %.v1692, 1
  store i32 %.v1693, i32* %i
  br label %while.cond529
if.then535:
  %.v1675 = load i32, i32* %ans
  %.v1676 = load i32, i32* %i
  %t1730 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1676
  %.v1677 = load i32, i32* %t1730
  %.v1678 = mul i32 1, %.v1677
  %.v1679 = add i32 %.v1675, %.v1678
  store i32 %.v1679, i32* %ans
  br label %if.end536
if.end536:
  br label %if.end534
if.then537:
  %.v1683 = load i32, i32* %ans
  %.v1684 = load i32, i32* %i
  %t1739 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1684
  %.v1685 = load i32, i32* %t1739
  %.v1686 = mul i32 1, %.v1685
  %.v1687 = add i32 %.v1683, %.v1686
  store i32 %.v1687, i32* %ans
  br label %if.end538
if.end538:
  br label %if.end534
while.cond539:
  %.v1697 = load i32, i32* %i
  %.v1698 = icmp slt i32 %.v1697, 16
  %.v1699 = zext i1 %.v1698 to i32
  %.v1700 = icmp ne i32 %.v1699, 0
  br i1 %.v1700, label %while.body540, label %while.end541
while.body540:
  store i32 0, i32* %.v1701
  %.v1702 = load i32, i32* %x
  %.v1703 = srem i32 %.v1702, 2
  %.v1704 = icmp ne i32 %.v1703, 0
  br i1 %.v1704, label %land.rhs544, label %land.end545
while.end541:
  %.v1722 = load i32, i32* %ans
  store i32 %.v1722, i32* %c.11
  %.v1723 = icmp sgt i32 1, 15
  %.v1724 = zext i1 %.v1723 to i32
  %.v1725 = icmp ne i32 %.v1724, 0
  br i1 %.v1725, label %if.then546, label %if.else547
if.then542:
  %.v1711 = load i32, i32* %ans
  %.v1712 = load i32, i32* %i
  %t1767 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1712
  %.v1713 = load i32, i32* %t1767
  %.v1714 = mul i32 1, %.v1713
  %.v1715 = add i32 %.v1711, %.v1714
  store i32 %.v1715, i32* %ans
  br label %if.end543
if.end543:
  %.v1716 = load i32, i32* %x
  %.v1717 = sdiv i32 %.v1716, 2
  store i32 %.v1717, i32* %x
  %.v1718 = load i32, i32* %y
  %.v1719 = sdiv i32 %.v1718, 2
  store i32 %.v1719, i32* %y
  %.v1720 = load i32, i32* %i
  %.v1721 = add i32 %.v1720, 1
  store i32 %.v1721, i32* %i
  br label %while.cond539
land.rhs544:
  %.v1705 = load i32, i32* %y
  %.v1706 = srem i32 %.v1705, 2
  %.v1707 = icmp ne i32 %.v1706, 0
  %.v1708 = zext i1 %.v1707 to i32
  store i32 %.v1708, i32* %.v1701
  br label %land.end545
land.end545:
  %.v1709 = load i32, i32* %.v1701
  %.v1710 = icmp ne i32 %.v1709, 0
  br i1 %.v1710, label %if.then542, label %if.end543
if.then546:
  store i32 0, i32* %ans
  br label %if.end548
if.else547:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1726 = load i32, i32* %c.11
  %t1782 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1727 = load i32, i32* %t1782
  %.v1728 = mul i32 %.v1726, %.v1727
  store i32 %.v1728, i32* %x
  store i32 65535, i32* %y
  br label %while.cond549
if.end548:
  %.v1754 = load i32, i32* %ans
  store i32 %.v1754, i32* %c.11
  %.v1755 = load i32, i32* %sum.11
  store i32 %.v1755, i32* %al.11
  br label %while.cond526
while.cond549:
  %.v1729 = load i32, i32* %i
  %.v1730 = icmp slt i32 %.v1729, 16
  %.v1731 = zext i1 %.v1730 to i32
  %.v1732 = icmp ne i32 %.v1731, 0
  br i1 %.v1732, label %while.body550, label %while.end551
while.body550:
  store i32 0, i32* %.v1733
  %.v1734 = load i32, i32* %x
  %.v1735 = srem i32 %.v1734, 2
  %.v1736 = icmp ne i32 %.v1735, 0
  br i1 %.v1736, label %land.rhs554, label %land.end555
while.end551:
  br label %if.end548
if.then552:
  %.v1743 = load i32, i32* %ans
  %.v1744 = load i32, i32* %i
  %t1800 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1744
  %.v1745 = load i32, i32* %t1800
  %.v1746 = mul i32 1, %.v1745
  %.v1747 = add i32 %.v1743, %.v1746
  store i32 %.v1747, i32* %ans
  br label %if.end553
if.end553:
  %.v1748 = load i32, i32* %x
  %.v1749 = sdiv i32 %.v1748, 2
  store i32 %.v1749, i32* %x
  %.v1750 = load i32, i32* %y
  %.v1751 = sdiv i32 %.v1750, 2
  store i32 %.v1751, i32* %y
  %.v1752 = load i32, i32* %i
  %.v1753 = add i32 %.v1752, 1
  store i32 %.v1753, i32* %i
  br label %while.cond549
land.rhs554:
  %.v1737 = load i32, i32* %y
  %.v1738 = srem i32 %.v1737, 2
  %.v1739 = icmp ne i32 %.v1738, 0
  %.v1740 = zext i1 %.v1739 to i32
  store i32 %.v1740, i32* %.v1733
  br label %land.end555
land.end555:
  %.v1741 = load i32, i32* %.v1733
  %.v1742 = icmp ne i32 %.v1741, 0
  br i1 %.v1742, label %if.then552, label %if.end553
if.then556:
  %.v1763 = load i32, i32* %x
  %.v1764 = icmp slt i32 %.v1763, 0
  %.v1765 = zext i1 %.v1764 to i32
  %.v1766 = icmp ne i32 %.v1765, 0
  br i1 %.v1766, label %if.then559, label %if.else560
if.else557:
  %.v1767 = load i32, i32* %y
  %.v1768 = icmp sgt i32 %.v1767, 0
  %.v1769 = zext i1 %.v1768 to i32
  %.v1770 = icmp ne i32 %.v1769, 0
  br i1 %.v1770, label %if.then562, label %if.else563
if.end558:
  %.v1791 = load i32, i32* %ans
  store i32 %.v1791, i32* %mr.5
  br label %while.cond484
if.then559:
  store i32 65535, i32* %ans
  br label %if.end561
if.else560:
  store i32 0, i32* %ans
  br label %if.end561
if.end561:
  br label %if.end558
if.then562:
  %.v1771 = load i32, i32* %x
  %.v1772 = icmp sgt i32 %.v1771, 32767
  %.v1773 = zext i1 %.v1772 to i32
  %.v1774 = icmp ne i32 %.v1773, 0
  br i1 %.v1774, label %if.then565, label %if.else566
if.else563:
  %.v1790 = load i32, i32* %x
  store i32 %.v1790, i32* %ans
  br label %if.end564
if.end564:
  br label %if.end558
if.then565:
  %.v1775 = load i32, i32* %x
  %.v1776 = load i32, i32* %y
  %t1833 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1776
  %.v1777 = load i32, i32* %t1833
  %.v1778 = sdiv i32 %.v1775, %.v1777
  store i32 %.v1778, i32* %x
  %.v1779 = load i32, i32* %x
  %.v1780 = add i32 %.v1779, 65536
  %.v1781 = load i32, i32* %y
  %.v1782 = sub i32 15, %.v1781
  %.v1783 = add i32 %.v1782, 1
  %t1841 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1783
  %.v1784 = load i32, i32* %t1841
  %.v1785 = sub i32 %.v1780, %.v1784
  store i32 %.v1785, i32* %ans
  br label %if.end567
if.else566:
  %.v1786 = load i32, i32* %x
  %.v1787 = load i32, i32* %y
  %t1846 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1787
  %.v1788 = load i32, i32* %t1846
  %.v1789 = sdiv i32 %.v1786, %.v1788
  store i32 %.v1789, i32* %ans
  br label %if.end567
if.end567:
  br label %if.end564
if.then568:
  %.v1799 = load i32, i32* %x
  %.v1800 = icmp slt i32 %.v1799, 0
  %.v1801 = zext i1 %.v1800 to i32
  %.v1802 = icmp ne i32 %.v1801, 0
  br i1 %.v1802, label %if.then571, label %if.else572
if.else569:
  %.v1803 = load i32, i32* %y
  %.v1804 = icmp sgt i32 %.v1803, 0
  %.v1805 = zext i1 %.v1804 to i32
  %.v1806 = icmp ne i32 %.v1805, 0
  br i1 %.v1806, label %if.then574, label %if.else575
if.end570:
  %.v1827 = load i32, i32* %ans
  store i32 %.v1827, i32* %pr.2
  br label %while.cond388
if.then571:
  store i32 65535, i32* %ans
  br label %if.end573
if.else572:
  store i32 0, i32* %ans
  br label %if.end573
if.end573:
  br label %if.end570
if.then574:
  %.v1807 = load i32, i32* %x
  %.v1808 = icmp sgt i32 %.v1807, 32767
  %.v1809 = zext i1 %.v1808 to i32
  %.v1810 = icmp ne i32 %.v1809, 0
  br i1 %.v1810, label %if.then577, label %if.else578
if.else575:
  %.v1826 = load i32, i32* %x
  store i32 %.v1826, i32* %ans
  br label %if.end576
if.end576:
  br label %if.end570
if.then577:
  %.v1811 = load i32, i32* %x
  %.v1812 = load i32, i32* %y
  %t1872 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1812
  %.v1813 = load i32, i32* %t1872
  %.v1814 = sdiv i32 %.v1811, %.v1813
  store i32 %.v1814, i32* %x
  %.v1815 = load i32, i32* %x
  %.v1816 = add i32 %.v1815, 65536
  %.v1817 = load i32, i32* %y
  %.v1818 = sub i32 15, %.v1817
  %.v1819 = add i32 %.v1818, 1
  %t1880 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1819
  %.v1820 = load i32, i32* %t1880
  %.v1821 = sub i32 %.v1816, %.v1820
  store i32 %.v1821, i32* %ans
  br label %if.end579
if.else578:
  %.v1822 = load i32, i32* %x
  %.v1823 = load i32, i32* %y
  %t1885 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1823
  %.v1824 = load i32, i32* %t1885
  %.v1825 = sdiv i32 %.v1822, %.v1824
  store i32 %.v1825, i32* %ans
  br label %if.end579
if.end579:
  br label %if.end576
while.cond580:
  %.v1832 = load i32, i32* %cur
  %.v1833 = icmp slt i32 %.v1832, 16
  %.v1834 = zext i1 %.v1833 to i32
  %.v1835 = icmp ne i32 %.v1834, 0
  br i1 %.v1835, label %while.body581, label %while.end582
while.body581:
  store i32 2, i32* %pl.3
  %.v1836 = load i32, i32* %cur
  store i32 %.v1836, i32* %pr.3
  store i32 1, i32* %pres.3
  br label %while.cond583
while.end582:
  ret i32 0
while.cond583:
  %.v1837 = load i32, i32* %pr.3
  %.v1838 = icmp sgt i32 %.v1837, 0
  %.v1839 = zext i1 %.v1838 to i32
  %.v1840 = icmp ne i32 %.v1839, 0
  br i1 %.v1840, label %while.body584, label %while.end585
while.body584:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1841 = load i32, i32* %pr.3
  store i32 %.v1841, i32* %x
  store i32 1, i32* %y
  br label %while.cond586
while.end585:
  %.v2443 = load i32, i32* %pres.3
  store i32 %.v2443, i32* %ans
  %.v2444 = load i32, i32* %cur
  %t2528 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2444
  %.v2445 = load i32, i32* %t2528
  %.v2446 = load i32, i32* %ans
  %.v2447 = icmp ne i32 %.v2445, %.v2446
  %.v2448 = zext i1 %.v2447 to i32
  %.v2449 = icmp ne i32 %.v2448, 0
  br i1 %.v2449, label %if.then775, label %if.end776
while.cond586:
  %.v1842 = load i32, i32* %i
  %.v1843 = icmp slt i32 %.v1842, 16
  %.v1844 = zext i1 %.v1843 to i32
  %.v1845 = icmp ne i32 %.v1844, 0
  br i1 %.v1845, label %while.body587, label %while.end588
while.body587:
  store i32 0, i32* %.v1846
  %.v1847 = load i32, i32* %x
  %.v1848 = srem i32 %.v1847, 2
  %.v1849 = icmp ne i32 %.v1848, 0
  br i1 %.v1849, label %land.rhs591, label %land.end592
while.end588:
  %.v1867 = load i32, i32* %ans
  %.v1868 = icmp ne i32 %.v1867, 0
  br i1 %.v1868, label %if.then593, label %if.end594
if.then589:
  %.v1856 = load i32, i32* %ans
  %.v1857 = load i32, i32* %i
  %t1919 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1857
  %.v1858 = load i32, i32* %t1919
  %.v1859 = mul i32 1, %.v1858
  %.v1860 = add i32 %.v1856, %.v1859
  store i32 %.v1860, i32* %ans
  br label %if.end590
if.end590:
  %.v1861 = load i32, i32* %x
  %.v1862 = sdiv i32 %.v1861, 2
  store i32 %.v1862, i32* %x
  %.v1863 = load i32, i32* %y
  %.v1864 = sdiv i32 %.v1863, 2
  store i32 %.v1864, i32* %y
  %.v1865 = load i32, i32* %i
  %.v1866 = add i32 %.v1865, 1
  store i32 %.v1866, i32* %i
  br label %while.cond586
land.rhs591:
  %.v1850 = load i32, i32* %y
  %.v1851 = srem i32 %.v1850, 2
  %.v1852 = icmp ne i32 %.v1851, 0
  %.v1853 = zext i1 %.v1852 to i32
  store i32 %.v1853, i32* %.v1846
  br label %land.end592
land.end592:
  %.v1854 = load i32, i32* %.v1846
  %.v1855 = icmp ne i32 %.v1854, 0
  br i1 %.v1855, label %if.then589, label %if.end590
if.then593:
  %.v1869 = load i32, i32* %pres.3
  store i32 %.v1869, i32* %ml.6
  %.v1870 = load i32, i32* %pl.3
  store i32 %.v1870, i32* %mr.6
  store i32 0, i32* %mres.6
  br label %while.cond595
if.end594:
  %.v2139 = load i32, i32* %pl.3
  store i32 %.v2139, i32* %ml.7
  %.v2140 = load i32, i32* %pl.3
  store i32 %.v2140, i32* %mr.7
  store i32 0, i32* %mres.7
  br label %while.cond679
while.cond595:
  %.v1871 = load i32, i32* %mr.6
  %.v1872 = icmp ne i32 %.v1871, 0
  br i1 %.v1872, label %while.body596, label %while.end597
while.body596:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1873 = load i32, i32* %mr.6
  store i32 %.v1873, i32* %x
  store i32 1, i32* %y
  br label %while.cond598
while.end597:
  %.v2137 = load i32, i32* %mres.6
  store i32 %.v2137, i32* %ans
  %.v2138 = load i32, i32* %ans
  store i32 %.v2138, i32* %pres.3
  br label %if.end594
while.cond598:
  %.v1874 = load i32, i32* %i
  %.v1875 = icmp slt i32 %.v1874, 16
  %.v1876 = zext i1 %.v1875 to i32
  %.v1877 = icmp ne i32 %.v1876, 0
  br i1 %.v1877, label %while.body599, label %while.end600
while.body599:
  store i32 0, i32* %.v1878
  %.v1879 = load i32, i32* %x
  %.v1880 = srem i32 %.v1879, 2
  %.v1881 = icmp ne i32 %.v1880, 0
  br i1 %.v1881, label %land.rhs603, label %land.end604
while.end600:
  %.v1899 = load i32, i32* %ans
  %.v1900 = icmp ne i32 %.v1899, 0
  br i1 %.v1900, label %if.then605, label %if.end606
if.then601:
  %.v1888 = load i32, i32* %ans
  %.v1889 = load i32, i32* %i
  %t1951 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1889
  %.v1890 = load i32, i32* %t1951
  %.v1891 = mul i32 1, %.v1890
  %.v1892 = add i32 %.v1888, %.v1891
  store i32 %.v1892, i32* %ans
  br label %if.end602
if.end602:
  %.v1893 = load i32, i32* %x
  %.v1894 = sdiv i32 %.v1893, 2
  store i32 %.v1894, i32* %x
  %.v1895 = load i32, i32* %y
  %.v1896 = sdiv i32 %.v1895, 2
  store i32 %.v1896, i32* %y
  %.v1897 = load i32, i32* %i
  %.v1898 = add i32 %.v1897, 1
  store i32 %.v1898, i32* %i
  br label %while.cond598
land.rhs603:
  %.v1882 = load i32, i32* %y
  %.v1883 = srem i32 %.v1882, 2
  %.v1884 = icmp ne i32 %.v1883, 0
  %.v1885 = zext i1 %.v1884 to i32
  store i32 %.v1885, i32* %.v1878
  br label %land.end604
land.end604:
  %.v1886 = load i32, i32* %.v1878
  %.v1887 = icmp ne i32 %.v1886, 0
  br i1 %.v1887, label %if.then601, label %if.end602
if.then605:
  %.v1901 = load i32, i32* %mres.6
  store i32 %.v1901, i32* %al.12
  %.v1902 = load i32, i32* %ml.6
  store i32 %.v1902, i32* %c.12
  br label %while.cond607
if.end606:
  %.v2002 = load i32, i32* %ml.6
  store i32 %.v2002, i32* %al.13
  %.v2003 = load i32, i32* %ml.6
  store i32 %.v2003, i32* %c.13
  br label %while.cond637
while.cond607:
  %.v1903 = load i32, i32* %c.12
  %.v1904 = icmp ne i32 %.v1903, 0
  br i1 %.v1904, label %while.body608, label %while.end609
while.body608:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1905 = load i32, i32* %al.12
  store i32 %.v1905, i32* %x
  %.v1906 = load i32, i32* %c.12
  store i32 %.v1906, i32* %y
  br label %while.cond610
while.end609:
  %.v2000 = load i32, i32* %al.12
  store i32 %.v2000, i32* %ans
  %.v2001 = load i32, i32* %ans
  store i32 %.v2001, i32* %mres.6
  br label %if.end606
while.cond610:
  %.v1907 = load i32, i32* %i
  %.v1908 = icmp slt i32 %.v1907, 16
  %.v1909 = zext i1 %.v1908 to i32
  %.v1910 = icmp ne i32 %.v1909, 0
  br i1 %.v1910, label %while.body611, label %while.end612
while.body611:
  %.v1911 = load i32, i32* %x
  %.v1912 = srem i32 %.v1911, 2
  %.v1913 = icmp ne i32 %.v1912, 0
  br i1 %.v1913, label %if.then613, label %if.else614
while.end612:
  %.v1938 = load i32, i32* %ans
  store i32 %.v1938, i32* %sum.12
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1939 = load i32, i32* %al.12
  store i32 %.v1939, i32* %x
  %.v1940 = load i32, i32* %c.12
  store i32 %.v1940, i32* %y
  br label %while.cond620
if.then613:
  %.v1914 = load i32, i32* %y
  %.v1915 = srem i32 %.v1914, 2
  %.v1916 = icmp eq i32 %.v1915, 0
  %.v1917 = zext i1 %.v1916 to i32
  %.v1918 = icmp ne i32 %.v1917, 0
  br i1 %.v1918, label %if.then616, label %if.end617
if.else614:
  %.v1924 = load i32, i32* %y
  %.v1925 = srem i32 %.v1924, 2
  %.v1926 = icmp ne i32 %.v1925, 0
  br i1 %.v1926, label %if.then618, label %if.end619
if.end615:
  %.v1932 = load i32, i32* %x
  %.v1933 = sdiv i32 %.v1932, 2
  store i32 %.v1933, i32* %x
  %.v1934 = load i32, i32* %y
  %.v1935 = sdiv i32 %.v1934, 2
  store i32 %.v1935, i32* %y
  %.v1936 = load i32, i32* %i
  %.v1937 = add i32 %.v1936, 1
  store i32 %.v1937, i32* %i
  br label %while.cond610
if.then616:
  %.v1919 = load i32, i32* %ans
  %.v1920 = load i32, i32* %i
  %t1983 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1920
  %.v1921 = load i32, i32* %t1983
  %.v1922 = mul i32 1, %.v1921
  %.v1923 = add i32 %.v1919, %.v1922
  store i32 %.v1923, i32* %ans
  br label %if.end617
if.end617:
  br label %if.end615
if.then618:
  %.v1927 = load i32, i32* %ans
  %.v1928 = load i32, i32* %i
  %t1992 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1928
  %.v1929 = load i32, i32* %t1992
  %.v1930 = mul i32 1, %.v1929
  %.v1931 = add i32 %.v1927, %.v1930
  store i32 %.v1931, i32* %ans
  br label %if.end619
if.end619:
  br label %if.end615
while.cond620:
  %.v1941 = load i32, i32* %i
  %.v1942 = icmp slt i32 %.v1941, 16
  %.v1943 = zext i1 %.v1942 to i32
  %.v1944 = icmp ne i32 %.v1943, 0
  br i1 %.v1944, label %while.body621, label %while.end622
while.body621:
  store i32 0, i32* %.v1945
  %.v1946 = load i32, i32* %x
  %.v1947 = srem i32 %.v1946, 2
  %.v1948 = icmp ne i32 %.v1947, 0
  br i1 %.v1948, label %land.rhs625, label %land.end626
while.end622:
  %.v1966 = load i32, i32* %ans
  store i32 %.v1966, i32* %c.12
  %.v1967 = icmp sgt i32 1, 15
  %.v1968 = zext i1 %.v1967 to i32
  %.v1969 = icmp ne i32 %.v1968, 0
  br i1 %.v1969, label %if.then627, label %if.else628
if.then623:
  %.v1955 = load i32, i32* %ans
  %.v1956 = load i32, i32* %i
  %t2020 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1956
  %.v1957 = load i32, i32* %t2020
  %.v1958 = mul i32 1, %.v1957
  %.v1959 = add i32 %.v1955, %.v1958
  store i32 %.v1959, i32* %ans
  br label %if.end624
if.end624:
  %.v1960 = load i32, i32* %x
  %.v1961 = sdiv i32 %.v1960, 2
  store i32 %.v1961, i32* %x
  %.v1962 = load i32, i32* %y
  %.v1963 = sdiv i32 %.v1962, 2
  store i32 %.v1963, i32* %y
  %.v1964 = load i32, i32* %i
  %.v1965 = add i32 %.v1964, 1
  store i32 %.v1965, i32* %i
  br label %while.cond620
land.rhs625:
  %.v1949 = load i32, i32* %y
  %.v1950 = srem i32 %.v1949, 2
  %.v1951 = icmp ne i32 %.v1950, 0
  %.v1952 = zext i1 %.v1951 to i32
  store i32 %.v1952, i32* %.v1945
  br label %land.end626
land.end626:
  %.v1953 = load i32, i32* %.v1945
  %.v1954 = icmp ne i32 %.v1953, 0
  br i1 %.v1954, label %if.then623, label %if.end624
if.then627:
  store i32 0, i32* %ans
  br label %if.end629
if.else628:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v1970 = load i32, i32* %c.12
  %t2035 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v1971 = load i32, i32* %t2035
  %.v1972 = mul i32 %.v1970, %.v1971
  store i32 %.v1972, i32* %x
  store i32 65535, i32* %y
  br label %while.cond630
if.end629:
  %.v1998 = load i32, i32* %ans
  store i32 %.v1998, i32* %c.12
  %.v1999 = load i32, i32* %sum.12
  store i32 %.v1999, i32* %al.12
  br label %while.cond607
while.cond630:
  %.v1973 = load i32, i32* %i
  %.v1974 = icmp slt i32 %.v1973, 16
  %.v1975 = zext i1 %.v1974 to i32
  %.v1976 = icmp ne i32 %.v1975, 0
  br i1 %.v1976, label %while.body631, label %while.end632
while.body631:
  store i32 0, i32* %.v1977
  %.v1978 = load i32, i32* %x
  %.v1979 = srem i32 %.v1978, 2
  %.v1980 = icmp ne i32 %.v1979, 0
  br i1 %.v1980, label %land.rhs635, label %land.end636
while.end632:
  br label %if.end629
if.then633:
  %.v1987 = load i32, i32* %ans
  %.v1988 = load i32, i32* %i
  %t2053 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v1988
  %.v1989 = load i32, i32* %t2053
  %.v1990 = mul i32 1, %.v1989
  %.v1991 = add i32 %.v1987, %.v1990
  store i32 %.v1991, i32* %ans
  br label %if.end634
if.end634:
  %.v1992 = load i32, i32* %x
  %.v1993 = sdiv i32 %.v1992, 2
  store i32 %.v1993, i32* %x
  %.v1994 = load i32, i32* %y
  %.v1995 = sdiv i32 %.v1994, 2
  store i32 %.v1995, i32* %y
  %.v1996 = load i32, i32* %i
  %.v1997 = add i32 %.v1996, 1
  store i32 %.v1997, i32* %i
  br label %while.cond630
land.rhs635:
  %.v1981 = load i32, i32* %y
  %.v1982 = srem i32 %.v1981, 2
  %.v1983 = icmp ne i32 %.v1982, 0
  %.v1984 = zext i1 %.v1983 to i32
  store i32 %.v1984, i32* %.v1977
  br label %land.end636
land.end636:
  %.v1985 = load i32, i32* %.v1977
  %.v1986 = icmp ne i32 %.v1985, 0
  br i1 %.v1986, label %if.then633, label %if.end634
while.cond637:
  %.v2004 = load i32, i32* %c.13
  %.v2005 = icmp ne i32 %.v2004, 0
  br i1 %.v2005, label %while.body638, label %while.end639
while.body638:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2006 = load i32, i32* %al.13
  store i32 %.v2006, i32* %x
  %.v2007 = load i32, i32* %c.13
  store i32 %.v2007, i32* %y
  br label %while.cond640
while.end639:
  %.v2101 = load i32, i32* %al.13
  store i32 %.v2101, i32* %ans
  %.v2102 = load i32, i32* %ans
  store i32 %.v2102, i32* %ml.6
  %.v2103 = load i32, i32* %mr.6
  store i32 %.v2103, i32* %x
  store i32 1, i32* %y
  %.v2104 = load i32, i32* %y
  %.v2105 = icmp sge i32 %.v2104, 15
  %.v2106 = zext i1 %.v2105 to i32
  %.v2107 = icmp ne i32 %.v2106, 0
  br i1 %.v2107, label %if.then667, label %if.else668
while.cond640:
  %.v2008 = load i32, i32* %i
  %.v2009 = icmp slt i32 %.v2008, 16
  %.v2010 = zext i1 %.v2009 to i32
  %.v2011 = icmp ne i32 %.v2010, 0
  br i1 %.v2011, label %while.body641, label %while.end642
while.body641:
  %.v2012 = load i32, i32* %x
  %.v2013 = srem i32 %.v2012, 2
  %.v2014 = icmp ne i32 %.v2013, 0
  br i1 %.v2014, label %if.then643, label %if.else644
while.end642:
  %.v2039 = load i32, i32* %ans
  store i32 %.v2039, i32* %sum.13
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2040 = load i32, i32* %al.13
  store i32 %.v2040, i32* %x
  %.v2041 = load i32, i32* %c.13
  store i32 %.v2041, i32* %y
  br label %while.cond650
if.then643:
  %.v2015 = load i32, i32* %y
  %.v2016 = srem i32 %.v2015, 2
  %.v2017 = icmp eq i32 %.v2016, 0
  %.v2018 = zext i1 %.v2017 to i32
  %.v2019 = icmp ne i32 %.v2018, 0
  br i1 %.v2019, label %if.then646, label %if.end647
if.else644:
  %.v2025 = load i32, i32* %y
  %.v2026 = srem i32 %.v2025, 2
  %.v2027 = icmp ne i32 %.v2026, 0
  br i1 %.v2027, label %if.then648, label %if.end649
if.end645:
  %.v2033 = load i32, i32* %x
  %.v2034 = sdiv i32 %.v2033, 2
  store i32 %.v2034, i32* %x
  %.v2035 = load i32, i32* %y
  %.v2036 = sdiv i32 %.v2035, 2
  store i32 %.v2036, i32* %y
  %.v2037 = load i32, i32* %i
  %.v2038 = add i32 %.v2037, 1
  store i32 %.v2038, i32* %i
  br label %while.cond640
if.then646:
  %.v2020 = load i32, i32* %ans
  %.v2021 = load i32, i32* %i
  %t2087 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2021
  %.v2022 = load i32, i32* %t2087
  %.v2023 = mul i32 1, %.v2022
  %.v2024 = add i32 %.v2020, %.v2023
  store i32 %.v2024, i32* %ans
  br label %if.end647
if.end647:
  br label %if.end645
if.then648:
  %.v2028 = load i32, i32* %ans
  %.v2029 = load i32, i32* %i
  %t2096 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2029
  %.v2030 = load i32, i32* %t2096
  %.v2031 = mul i32 1, %.v2030
  %.v2032 = add i32 %.v2028, %.v2031
  store i32 %.v2032, i32* %ans
  br label %if.end649
if.end649:
  br label %if.end645
while.cond650:
  %.v2042 = load i32, i32* %i
  %.v2043 = icmp slt i32 %.v2042, 16
  %.v2044 = zext i1 %.v2043 to i32
  %.v2045 = icmp ne i32 %.v2044, 0
  br i1 %.v2045, label %while.body651, label %while.end652
while.body651:
  store i32 0, i32* %.v2046
  %.v2047 = load i32, i32* %x
  %.v2048 = srem i32 %.v2047, 2
  %.v2049 = icmp ne i32 %.v2048, 0
  br i1 %.v2049, label %land.rhs655, label %land.end656
while.end652:
  %.v2067 = load i32, i32* %ans
  store i32 %.v2067, i32* %c.13
  %.v2068 = icmp sgt i32 1, 15
  %.v2069 = zext i1 %.v2068 to i32
  %.v2070 = icmp ne i32 %.v2069, 0
  br i1 %.v2070, label %if.then657, label %if.else658
if.then653:
  %.v2056 = load i32, i32* %ans
  %.v2057 = load i32, i32* %i
  %t2124 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2057
  %.v2058 = load i32, i32* %t2124
  %.v2059 = mul i32 1, %.v2058
  %.v2060 = add i32 %.v2056, %.v2059
  store i32 %.v2060, i32* %ans
  br label %if.end654
if.end654:
  %.v2061 = load i32, i32* %x
  %.v2062 = sdiv i32 %.v2061, 2
  store i32 %.v2062, i32* %x
  %.v2063 = load i32, i32* %y
  %.v2064 = sdiv i32 %.v2063, 2
  store i32 %.v2064, i32* %y
  %.v2065 = load i32, i32* %i
  %.v2066 = add i32 %.v2065, 1
  store i32 %.v2066, i32* %i
  br label %while.cond650
land.rhs655:
  %.v2050 = load i32, i32* %y
  %.v2051 = srem i32 %.v2050, 2
  %.v2052 = icmp ne i32 %.v2051, 0
  %.v2053 = zext i1 %.v2052 to i32
  store i32 %.v2053, i32* %.v2046
  br label %land.end656
land.end656:
  %.v2054 = load i32, i32* %.v2046
  %.v2055 = icmp ne i32 %.v2054, 0
  br i1 %.v2055, label %if.then653, label %if.end654
if.then657:
  store i32 0, i32* %ans
  br label %if.end659
if.else658:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2071 = load i32, i32* %c.13
  %t2139 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v2072 = load i32, i32* %t2139
  %.v2073 = mul i32 %.v2071, %.v2072
  store i32 %.v2073, i32* %x
  store i32 65535, i32* %y
  br label %while.cond660
if.end659:
  %.v2099 = load i32, i32* %ans
  store i32 %.v2099, i32* %c.13
  %.v2100 = load i32, i32* %sum.13
  store i32 %.v2100, i32* %al.13
  br label %while.cond637
while.cond660:
  %.v2074 = load i32, i32* %i
  %.v2075 = icmp slt i32 %.v2074, 16
  %.v2076 = zext i1 %.v2075 to i32
  %.v2077 = icmp ne i32 %.v2076, 0
  br i1 %.v2077, label %while.body661, label %while.end662
while.body661:
  store i32 0, i32* %.v2078
  %.v2079 = load i32, i32* %x
  %.v2080 = srem i32 %.v2079, 2
  %.v2081 = icmp ne i32 %.v2080, 0
  br i1 %.v2081, label %land.rhs665, label %land.end666
while.end662:
  br label %if.end659
if.then663:
  %.v2088 = load i32, i32* %ans
  %.v2089 = load i32, i32* %i
  %t2157 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2089
  %.v2090 = load i32, i32* %t2157
  %.v2091 = mul i32 1, %.v2090
  %.v2092 = add i32 %.v2088, %.v2091
  store i32 %.v2092, i32* %ans
  br label %if.end664
if.end664:
  %.v2093 = load i32, i32* %x
  %.v2094 = sdiv i32 %.v2093, 2
  store i32 %.v2094, i32* %x
  %.v2095 = load i32, i32* %y
  %.v2096 = sdiv i32 %.v2095, 2
  store i32 %.v2096, i32* %y
  %.v2097 = load i32, i32* %i
  %.v2098 = add i32 %.v2097, 1
  store i32 %.v2098, i32* %i
  br label %while.cond660
land.rhs665:
  %.v2082 = load i32, i32* %y
  %.v2083 = srem i32 %.v2082, 2
  %.v2084 = icmp ne i32 %.v2083, 0
  %.v2085 = zext i1 %.v2084 to i32
  store i32 %.v2085, i32* %.v2078
  br label %land.end666
land.end666:
  %.v2086 = load i32, i32* %.v2078
  %.v2087 = icmp ne i32 %.v2086, 0
  br i1 %.v2087, label %if.then663, label %if.end664
if.then667:
  %.v2108 = load i32, i32* %x
  %.v2109 = icmp slt i32 %.v2108, 0
  %.v2110 = zext i1 %.v2109 to i32
  %.v2111 = icmp ne i32 %.v2110, 0
  br i1 %.v2111, label %if.then670, label %if.else671
if.else668:
  %.v2112 = load i32, i32* %y
  %.v2113 = icmp sgt i32 %.v2112, 0
  %.v2114 = zext i1 %.v2113 to i32
  %.v2115 = icmp ne i32 %.v2114, 0
  br i1 %.v2115, label %if.then673, label %if.else674
if.end669:
  %.v2136 = load i32, i32* %ans
  store i32 %.v2136, i32* %mr.6
  br label %while.cond595
if.then670:
  store i32 65535, i32* %ans
  br label %if.end672
if.else671:
  store i32 0, i32* %ans
  br label %if.end672
if.end672:
  br label %if.end669
if.then673:
  %.v2116 = load i32, i32* %x
  %.v2117 = icmp sgt i32 %.v2116, 32767
  %.v2118 = zext i1 %.v2117 to i32
  %.v2119 = icmp ne i32 %.v2118, 0
  br i1 %.v2119, label %if.then676, label %if.else677
if.else674:
  %.v2135 = load i32, i32* %x
  store i32 %.v2135, i32* %ans
  br label %if.end675
if.end675:
  br label %if.end669
if.then676:
  %.v2120 = load i32, i32* %x
  %.v2121 = load i32, i32* %y
  %t2190 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2121
  %.v2122 = load i32, i32* %t2190
  %.v2123 = sdiv i32 %.v2120, %.v2122
  store i32 %.v2123, i32* %x
  %.v2124 = load i32, i32* %x
  %.v2125 = add i32 %.v2124, 65536
  %.v2126 = load i32, i32* %y
  %.v2127 = sub i32 15, %.v2126
  %.v2128 = add i32 %.v2127, 1
  %t2198 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2128
  %.v2129 = load i32, i32* %t2198
  %.v2130 = sub i32 %.v2125, %.v2129
  store i32 %.v2130, i32* %ans
  br label %if.end678
if.else677:
  %.v2131 = load i32, i32* %x
  %.v2132 = load i32, i32* %y
  %t2203 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2132
  %.v2133 = load i32, i32* %t2203
  %.v2134 = sdiv i32 %.v2131, %.v2133
  store i32 %.v2134, i32* %ans
  br label %if.end678
if.end678:
  br label %if.end675
while.cond679:
  %.v2141 = load i32, i32* %mr.7
  %.v2142 = icmp ne i32 %.v2141, 0
  br i1 %.v2142, label %while.body680, label %while.end681
while.body680:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2143 = load i32, i32* %mr.7
  store i32 %.v2143, i32* %x
  store i32 1, i32* %y
  br label %while.cond682
while.end681:
  %.v2407 = load i32, i32* %mres.7
  store i32 %.v2407, i32* %ans
  %.v2408 = load i32, i32* %ans
  store i32 %.v2408, i32* %pl.3
  %.v2409 = load i32, i32* %pr.3
  store i32 %.v2409, i32* %x
  store i32 1, i32* %y
  %.v2410 = load i32, i32* %y
  %.v2411 = icmp sge i32 %.v2410, 15
  %.v2412 = zext i1 %.v2411 to i32
  %.v2413 = icmp ne i32 %.v2412, 0
  br i1 %.v2413, label %if.then763, label %if.else764
while.cond682:
  %.v2144 = load i32, i32* %i
  %.v2145 = icmp slt i32 %.v2144, 16
  %.v2146 = zext i1 %.v2145 to i32
  %.v2147 = icmp ne i32 %.v2146, 0
  br i1 %.v2147, label %while.body683, label %while.end684
while.body683:
  store i32 0, i32* %.v2148
  %.v2149 = load i32, i32* %x
  %.v2150 = srem i32 %.v2149, 2
  %.v2151 = icmp ne i32 %.v2150, 0
  br i1 %.v2151, label %land.rhs687, label %land.end688
while.end684:
  %.v2169 = load i32, i32* %ans
  %.v2170 = icmp ne i32 %.v2169, 0
  br i1 %.v2170, label %if.then689, label %if.end690
if.then685:
  %.v2158 = load i32, i32* %ans
  %.v2159 = load i32, i32* %i
  %t2230 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2159
  %.v2160 = load i32, i32* %t2230
  %.v2161 = mul i32 1, %.v2160
  %.v2162 = add i32 %.v2158, %.v2161
  store i32 %.v2162, i32* %ans
  br label %if.end686
if.end686:
  %.v2163 = load i32, i32* %x
  %.v2164 = sdiv i32 %.v2163, 2
  store i32 %.v2164, i32* %x
  %.v2165 = load i32, i32* %y
  %.v2166 = sdiv i32 %.v2165, 2
  store i32 %.v2166, i32* %y
  %.v2167 = load i32, i32* %i
  %.v2168 = add i32 %.v2167, 1
  store i32 %.v2168, i32* %i
  br label %while.cond682
land.rhs687:
  %.v2152 = load i32, i32* %y
  %.v2153 = srem i32 %.v2152, 2
  %.v2154 = icmp ne i32 %.v2153, 0
  %.v2155 = zext i1 %.v2154 to i32
  store i32 %.v2155, i32* %.v2148
  br label %land.end688
land.end688:
  %.v2156 = load i32, i32* %.v2148
  %.v2157 = icmp ne i32 %.v2156, 0
  br i1 %.v2157, label %if.then685, label %if.end686
if.then689:
  %.v2171 = load i32, i32* %mres.7
  store i32 %.v2171, i32* %al.14
  %.v2172 = load i32, i32* %ml.7
  store i32 %.v2172, i32* %c.14
  br label %while.cond691
if.end690:
  %.v2272 = load i32, i32* %ml.7
  store i32 %.v2272, i32* %al.15
  %.v2273 = load i32, i32* %ml.7
  store i32 %.v2273, i32* %c.15
  br label %while.cond721
while.cond691:
  %.v2173 = load i32, i32* %c.14
  %.v2174 = icmp ne i32 %.v2173, 0
  br i1 %.v2174, label %while.body692, label %while.end693
while.body692:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2175 = load i32, i32* %al.14
  store i32 %.v2175, i32* %x
  %.v2176 = load i32, i32* %c.14
  store i32 %.v2176, i32* %y
  br label %while.cond694
while.end693:
  %.v2270 = load i32, i32* %al.14
  store i32 %.v2270, i32* %ans
  %.v2271 = load i32, i32* %ans
  store i32 %.v2271, i32* %mres.7
  br label %if.end690
while.cond694:
  %.v2177 = load i32, i32* %i
  %.v2178 = icmp slt i32 %.v2177, 16
  %.v2179 = zext i1 %.v2178 to i32
  %.v2180 = icmp ne i32 %.v2179, 0
  br i1 %.v2180, label %while.body695, label %while.end696
while.body695:
  %.v2181 = load i32, i32* %x
  %.v2182 = srem i32 %.v2181, 2
  %.v2183 = icmp ne i32 %.v2182, 0
  br i1 %.v2183, label %if.then697, label %if.else698
while.end696:
  %.v2208 = load i32, i32* %ans
  store i32 %.v2208, i32* %sum.14
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2209 = load i32, i32* %al.14
  store i32 %.v2209, i32* %x
  %.v2210 = load i32, i32* %c.14
  store i32 %.v2210, i32* %y
  br label %while.cond704
if.then697:
  %.v2184 = load i32, i32* %y
  %.v2185 = srem i32 %.v2184, 2
  %.v2186 = icmp eq i32 %.v2185, 0
  %.v2187 = zext i1 %.v2186 to i32
  %.v2188 = icmp ne i32 %.v2187, 0
  br i1 %.v2188, label %if.then700, label %if.end701
if.else698:
  %.v2194 = load i32, i32* %y
  %.v2195 = srem i32 %.v2194, 2
  %.v2196 = icmp ne i32 %.v2195, 0
  br i1 %.v2196, label %if.then702, label %if.end703
if.end699:
  %.v2202 = load i32, i32* %x
  %.v2203 = sdiv i32 %.v2202, 2
  store i32 %.v2203, i32* %x
  %.v2204 = load i32, i32* %y
  %.v2205 = sdiv i32 %.v2204, 2
  store i32 %.v2205, i32* %y
  %.v2206 = load i32, i32* %i
  %.v2207 = add i32 %.v2206, 1
  store i32 %.v2207, i32* %i
  br label %while.cond694
if.then700:
  %.v2189 = load i32, i32* %ans
  %.v2190 = load i32, i32* %i
  %t2262 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2190
  %.v2191 = load i32, i32* %t2262
  %.v2192 = mul i32 1, %.v2191
  %.v2193 = add i32 %.v2189, %.v2192
  store i32 %.v2193, i32* %ans
  br label %if.end701
if.end701:
  br label %if.end699
if.then702:
  %.v2197 = load i32, i32* %ans
  %.v2198 = load i32, i32* %i
  %t2271 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2198
  %.v2199 = load i32, i32* %t2271
  %.v2200 = mul i32 1, %.v2199
  %.v2201 = add i32 %.v2197, %.v2200
  store i32 %.v2201, i32* %ans
  br label %if.end703
if.end703:
  br label %if.end699
while.cond704:
  %.v2211 = load i32, i32* %i
  %.v2212 = icmp slt i32 %.v2211, 16
  %.v2213 = zext i1 %.v2212 to i32
  %.v2214 = icmp ne i32 %.v2213, 0
  br i1 %.v2214, label %while.body705, label %while.end706
while.body705:
  store i32 0, i32* %.v2215
  %.v2216 = load i32, i32* %x
  %.v2217 = srem i32 %.v2216, 2
  %.v2218 = icmp ne i32 %.v2217, 0
  br i1 %.v2218, label %land.rhs709, label %land.end710
while.end706:
  %.v2236 = load i32, i32* %ans
  store i32 %.v2236, i32* %c.14
  %.v2237 = icmp sgt i32 1, 15
  %.v2238 = zext i1 %.v2237 to i32
  %.v2239 = icmp ne i32 %.v2238, 0
  br i1 %.v2239, label %if.then711, label %if.else712
if.then707:
  %.v2225 = load i32, i32* %ans
  %.v2226 = load i32, i32* %i
  %t2299 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2226
  %.v2227 = load i32, i32* %t2299
  %.v2228 = mul i32 1, %.v2227
  %.v2229 = add i32 %.v2225, %.v2228
  store i32 %.v2229, i32* %ans
  br label %if.end708
if.end708:
  %.v2230 = load i32, i32* %x
  %.v2231 = sdiv i32 %.v2230, 2
  store i32 %.v2231, i32* %x
  %.v2232 = load i32, i32* %y
  %.v2233 = sdiv i32 %.v2232, 2
  store i32 %.v2233, i32* %y
  %.v2234 = load i32, i32* %i
  %.v2235 = add i32 %.v2234, 1
  store i32 %.v2235, i32* %i
  br label %while.cond704
land.rhs709:
  %.v2219 = load i32, i32* %y
  %.v2220 = srem i32 %.v2219, 2
  %.v2221 = icmp ne i32 %.v2220, 0
  %.v2222 = zext i1 %.v2221 to i32
  store i32 %.v2222, i32* %.v2215
  br label %land.end710
land.end710:
  %.v2223 = load i32, i32* %.v2215
  %.v2224 = icmp ne i32 %.v2223, 0
  br i1 %.v2224, label %if.then707, label %if.end708
if.then711:
  store i32 0, i32* %ans
  br label %if.end713
if.else712:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2240 = load i32, i32* %c.14
  %t2314 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v2241 = load i32, i32* %t2314
  %.v2242 = mul i32 %.v2240, %.v2241
  store i32 %.v2242, i32* %x
  store i32 65535, i32* %y
  br label %while.cond714
if.end713:
  %.v2268 = load i32, i32* %ans
  store i32 %.v2268, i32* %c.14
  %.v2269 = load i32, i32* %sum.14
  store i32 %.v2269, i32* %al.14
  br label %while.cond691
while.cond714:
  %.v2243 = load i32, i32* %i
  %.v2244 = icmp slt i32 %.v2243, 16
  %.v2245 = zext i1 %.v2244 to i32
  %.v2246 = icmp ne i32 %.v2245, 0
  br i1 %.v2246, label %while.body715, label %while.end716
while.body715:
  store i32 0, i32* %.v2247
  %.v2248 = load i32, i32* %x
  %.v2249 = srem i32 %.v2248, 2
  %.v2250 = icmp ne i32 %.v2249, 0
  br i1 %.v2250, label %land.rhs719, label %land.end720
while.end716:
  br label %if.end713
if.then717:
  %.v2257 = load i32, i32* %ans
  %.v2258 = load i32, i32* %i
  %t2332 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2258
  %.v2259 = load i32, i32* %t2332
  %.v2260 = mul i32 1, %.v2259
  %.v2261 = add i32 %.v2257, %.v2260
  store i32 %.v2261, i32* %ans
  br label %if.end718
if.end718:
  %.v2262 = load i32, i32* %x
  %.v2263 = sdiv i32 %.v2262, 2
  store i32 %.v2263, i32* %x
  %.v2264 = load i32, i32* %y
  %.v2265 = sdiv i32 %.v2264, 2
  store i32 %.v2265, i32* %y
  %.v2266 = load i32, i32* %i
  %.v2267 = add i32 %.v2266, 1
  store i32 %.v2267, i32* %i
  br label %while.cond714
land.rhs719:
  %.v2251 = load i32, i32* %y
  %.v2252 = srem i32 %.v2251, 2
  %.v2253 = icmp ne i32 %.v2252, 0
  %.v2254 = zext i1 %.v2253 to i32
  store i32 %.v2254, i32* %.v2247
  br label %land.end720
land.end720:
  %.v2255 = load i32, i32* %.v2247
  %.v2256 = icmp ne i32 %.v2255, 0
  br i1 %.v2256, label %if.then717, label %if.end718
while.cond721:
  %.v2274 = load i32, i32* %c.15
  %.v2275 = icmp ne i32 %.v2274, 0
  br i1 %.v2275, label %while.body722, label %while.end723
while.body722:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2276 = load i32, i32* %al.15
  store i32 %.v2276, i32* %x
  %.v2277 = load i32, i32* %c.15
  store i32 %.v2277, i32* %y
  br label %while.cond724
while.end723:
  %.v2371 = load i32, i32* %al.15
  store i32 %.v2371, i32* %ans
  %.v2372 = load i32, i32* %ans
  store i32 %.v2372, i32* %ml.7
  %.v2373 = load i32, i32* %mr.7
  store i32 %.v2373, i32* %x
  store i32 1, i32* %y
  %.v2374 = load i32, i32* %y
  %.v2375 = icmp sge i32 %.v2374, 15
  %.v2376 = zext i1 %.v2375 to i32
  %.v2377 = icmp ne i32 %.v2376, 0
  br i1 %.v2377, label %if.then751, label %if.else752
while.cond724:
  %.v2278 = load i32, i32* %i
  %.v2279 = icmp slt i32 %.v2278, 16
  %.v2280 = zext i1 %.v2279 to i32
  %.v2281 = icmp ne i32 %.v2280, 0
  br i1 %.v2281, label %while.body725, label %while.end726
while.body725:
  %.v2282 = load i32, i32* %x
  %.v2283 = srem i32 %.v2282, 2
  %.v2284 = icmp ne i32 %.v2283, 0
  br i1 %.v2284, label %if.then727, label %if.else728
while.end726:
  %.v2309 = load i32, i32* %ans
  store i32 %.v2309, i32* %sum.15
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2310 = load i32, i32* %al.15
  store i32 %.v2310, i32* %x
  %.v2311 = load i32, i32* %c.15
  store i32 %.v2311, i32* %y
  br label %while.cond734
if.then727:
  %.v2285 = load i32, i32* %y
  %.v2286 = srem i32 %.v2285, 2
  %.v2287 = icmp eq i32 %.v2286, 0
  %.v2288 = zext i1 %.v2287 to i32
  %.v2289 = icmp ne i32 %.v2288, 0
  br i1 %.v2289, label %if.then730, label %if.end731
if.else728:
  %.v2295 = load i32, i32* %y
  %.v2296 = srem i32 %.v2295, 2
  %.v2297 = icmp ne i32 %.v2296, 0
  br i1 %.v2297, label %if.then732, label %if.end733
if.end729:
  %.v2303 = load i32, i32* %x
  %.v2304 = sdiv i32 %.v2303, 2
  store i32 %.v2304, i32* %x
  %.v2305 = load i32, i32* %y
  %.v2306 = sdiv i32 %.v2305, 2
  store i32 %.v2306, i32* %y
  %.v2307 = load i32, i32* %i
  %.v2308 = add i32 %.v2307, 1
  store i32 %.v2308, i32* %i
  br label %while.cond724
if.then730:
  %.v2290 = load i32, i32* %ans
  %.v2291 = load i32, i32* %i
  %t2366 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2291
  %.v2292 = load i32, i32* %t2366
  %.v2293 = mul i32 1, %.v2292
  %.v2294 = add i32 %.v2290, %.v2293
  store i32 %.v2294, i32* %ans
  br label %if.end731
if.end731:
  br label %if.end729
if.then732:
  %.v2298 = load i32, i32* %ans
  %.v2299 = load i32, i32* %i
  %t2375 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2299
  %.v2300 = load i32, i32* %t2375
  %.v2301 = mul i32 1, %.v2300
  %.v2302 = add i32 %.v2298, %.v2301
  store i32 %.v2302, i32* %ans
  br label %if.end733
if.end733:
  br label %if.end729
while.cond734:
  %.v2312 = load i32, i32* %i
  %.v2313 = icmp slt i32 %.v2312, 16
  %.v2314 = zext i1 %.v2313 to i32
  %.v2315 = icmp ne i32 %.v2314, 0
  br i1 %.v2315, label %while.body735, label %while.end736
while.body735:
  store i32 0, i32* %.v2316
  %.v2317 = load i32, i32* %x
  %.v2318 = srem i32 %.v2317, 2
  %.v2319 = icmp ne i32 %.v2318, 0
  br i1 %.v2319, label %land.rhs739, label %land.end740
while.end736:
  %.v2337 = load i32, i32* %ans
  store i32 %.v2337, i32* %c.15
  %.v2338 = icmp sgt i32 1, 15
  %.v2339 = zext i1 %.v2338 to i32
  %.v2340 = icmp ne i32 %.v2339, 0
  br i1 %.v2340, label %if.then741, label %if.else742
if.then737:
  %.v2326 = load i32, i32* %ans
  %.v2327 = load i32, i32* %i
  %t2403 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2327
  %.v2328 = load i32, i32* %t2403
  %.v2329 = mul i32 1, %.v2328
  %.v2330 = add i32 %.v2326, %.v2329
  store i32 %.v2330, i32* %ans
  br label %if.end738
if.end738:
  %.v2331 = load i32, i32* %x
  %.v2332 = sdiv i32 %.v2331, 2
  store i32 %.v2332, i32* %x
  %.v2333 = load i32, i32* %y
  %.v2334 = sdiv i32 %.v2333, 2
  store i32 %.v2334, i32* %y
  %.v2335 = load i32, i32* %i
  %.v2336 = add i32 %.v2335, 1
  store i32 %.v2336, i32* %i
  br label %while.cond734
land.rhs739:
  %.v2320 = load i32, i32* %y
  %.v2321 = srem i32 %.v2320, 2
  %.v2322 = icmp ne i32 %.v2321, 0
  %.v2323 = zext i1 %.v2322 to i32
  store i32 %.v2323, i32* %.v2316
  br label %land.end740
land.end740:
  %.v2324 = load i32, i32* %.v2316
  %.v2325 = icmp ne i32 %.v2324, 0
  br i1 %.v2325, label %if.then737, label %if.end738
if.then741:
  store i32 0, i32* %ans
  br label %if.end743
if.else742:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  %.v2341 = load i32, i32* %c.15
  %t2418 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 1
  %.v2342 = load i32, i32* %t2418
  %.v2343 = mul i32 %.v2341, %.v2342
  store i32 %.v2343, i32* %x
  store i32 65535, i32* %y
  br label %while.cond744
if.end743:
  %.v2369 = load i32, i32* %ans
  store i32 %.v2369, i32* %c.15
  %.v2370 = load i32, i32* %sum.15
  store i32 %.v2370, i32* %al.15
  br label %while.cond721
while.cond744:
  %.v2344 = load i32, i32* %i
  %.v2345 = icmp slt i32 %.v2344, 16
  %.v2346 = zext i1 %.v2345 to i32
  %.v2347 = icmp ne i32 %.v2346, 0
  br i1 %.v2347, label %while.body745, label %while.end746
while.body745:
  store i32 0, i32* %.v2348
  %.v2349 = load i32, i32* %x
  %.v2350 = srem i32 %.v2349, 2
  %.v2351 = icmp ne i32 %.v2350, 0
  br i1 %.v2351, label %land.rhs749, label %land.end750
while.end746:
  br label %if.end743
if.then747:
  %.v2358 = load i32, i32* %ans
  %.v2359 = load i32, i32* %i
  %t2436 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2359
  %.v2360 = load i32, i32* %t2436
  %.v2361 = mul i32 1, %.v2360
  %.v2362 = add i32 %.v2358, %.v2361
  store i32 %.v2362, i32* %ans
  br label %if.end748
if.end748:
  %.v2363 = load i32, i32* %x
  %.v2364 = sdiv i32 %.v2363, 2
  store i32 %.v2364, i32* %x
  %.v2365 = load i32, i32* %y
  %.v2366 = sdiv i32 %.v2365, 2
  store i32 %.v2366, i32* %y
  %.v2367 = load i32, i32* %i
  %.v2368 = add i32 %.v2367, 1
  store i32 %.v2368, i32* %i
  br label %while.cond744
land.rhs749:
  %.v2352 = load i32, i32* %y
  %.v2353 = srem i32 %.v2352, 2
  %.v2354 = icmp ne i32 %.v2353, 0
  %.v2355 = zext i1 %.v2354 to i32
  store i32 %.v2355, i32* %.v2348
  br label %land.end750
land.end750:
  %.v2356 = load i32, i32* %.v2348
  %.v2357 = icmp ne i32 %.v2356, 0
  br i1 %.v2357, label %if.then747, label %if.end748
if.then751:
  %.v2378 = load i32, i32* %x
  %.v2379 = icmp slt i32 %.v2378, 0
  %.v2380 = zext i1 %.v2379 to i32
  %.v2381 = icmp ne i32 %.v2380, 0
  br i1 %.v2381, label %if.then754, label %if.else755
if.else752:
  %.v2382 = load i32, i32* %y
  %.v2383 = icmp sgt i32 %.v2382, 0
  %.v2384 = zext i1 %.v2383 to i32
  %.v2385 = icmp ne i32 %.v2384, 0
  br i1 %.v2385, label %if.then757, label %if.else758
if.end753:
  %.v2406 = load i32, i32* %ans
  store i32 %.v2406, i32* %mr.7
  br label %while.cond679
if.then754:
  store i32 65535, i32* %ans
  br label %if.end756
if.else755:
  store i32 0, i32* %ans
  br label %if.end756
if.end756:
  br label %if.end753
if.then757:
  %.v2386 = load i32, i32* %x
  %.v2387 = icmp sgt i32 %.v2386, 32767
  %.v2388 = zext i1 %.v2387 to i32
  %.v2389 = icmp ne i32 %.v2388, 0
  br i1 %.v2389, label %if.then760, label %if.else761
if.else758:
  %.v2405 = load i32, i32* %x
  store i32 %.v2405, i32* %ans
  br label %if.end759
if.end759:
  br label %if.end753
if.then760:
  %.v2390 = load i32, i32* %x
  %.v2391 = load i32, i32* %y
  %t2469 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2391
  %.v2392 = load i32, i32* %t2469
  %.v2393 = sdiv i32 %.v2390, %.v2392
  store i32 %.v2393, i32* %x
  %.v2394 = load i32, i32* %x
  %.v2395 = add i32 %.v2394, 65536
  %.v2396 = load i32, i32* %y
  %.v2397 = sub i32 15, %.v2396
  %.v2398 = add i32 %.v2397, 1
  %t2477 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2398
  %.v2399 = load i32, i32* %t2477
  %.v2400 = sub i32 %.v2395, %.v2399
  store i32 %.v2400, i32* %ans
  br label %if.end762
if.else761:
  %.v2401 = load i32, i32* %x
  %.v2402 = load i32, i32* %y
  %t2482 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2402
  %.v2403 = load i32, i32* %t2482
  %.v2404 = sdiv i32 %.v2401, %.v2403
  store i32 %.v2404, i32* %ans
  br label %if.end762
if.end762:
  br label %if.end759
if.then763:
  %.v2414 = load i32, i32* %x
  %.v2415 = icmp slt i32 %.v2414, 0
  %.v2416 = zext i1 %.v2415 to i32
  %.v2417 = icmp ne i32 %.v2416, 0
  br i1 %.v2417, label %if.then766, label %if.else767
if.else764:
  %.v2418 = load i32, i32* %y
  %.v2419 = icmp sgt i32 %.v2418, 0
  %.v2420 = zext i1 %.v2419 to i32
  %.v2421 = icmp ne i32 %.v2420, 0
  br i1 %.v2421, label %if.then769, label %if.else770
if.end765:
  %.v2442 = load i32, i32* %ans
  store i32 %.v2442, i32* %pr.3
  br label %while.cond583
if.then766:
  store i32 65535, i32* %ans
  br label %if.end768
if.else767:
  store i32 0, i32* %ans
  br label %if.end768
if.end768:
  br label %if.end765
if.then769:
  %.v2422 = load i32, i32* %x
  %.v2423 = icmp sgt i32 %.v2422, 32767
  %.v2424 = zext i1 %.v2423 to i32
  %.v2425 = icmp ne i32 %.v2424, 0
  br i1 %.v2425, label %if.then772, label %if.else773
if.else770:
  %.v2441 = load i32, i32* %x
  store i32 %.v2441, i32* %ans
  br label %if.end771
if.end771:
  br label %if.end765
if.then772:
  %.v2426 = load i32, i32* %x
  %.v2427 = load i32, i32* %y
  %t2508 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2427
  %.v2428 = load i32, i32* %t2508
  %.v2429 = sdiv i32 %.v2426, %.v2428
  store i32 %.v2429, i32* %x
  %.v2430 = load i32, i32* %x
  %.v2431 = add i32 %.v2430, 65536
  %.v2432 = load i32, i32* %y
  %.v2433 = sub i32 15, %.v2432
  %.v2434 = add i32 %.v2433, 1
  %t2516 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2434
  %.v2435 = load i32, i32* %t2516
  %.v2436 = sub i32 %.v2431, %.v2435
  store i32 %.v2436, i32* %ans
  br label %if.end774
if.else773:
  %.v2437 = load i32, i32* %x
  %.v2438 = load i32, i32* %y
  %t2521 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i64 0, i32 %.v2438
  %.v2439 = load i32, i32* %t2521
  %.v2440 = sdiv i32 %.v2437, %.v2439
  store i32 %.v2440, i32* %ans
  br label %if.end774
if.end774:
  br label %if.end771
if.then775:
  ret i32 1
if.end776:
  %.v2450 = load i32, i32* %cur
  %.v2451 = add i32 %.v2450, 1
  store i32 %.v2451, i32* %cur
  br label %while.cond580
}

define i32 @main() {
entry:
  %.v1 = call i32 @long_func()
  ret i32 %.v1
}

