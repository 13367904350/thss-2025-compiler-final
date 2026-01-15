@array = global [110 x i32] zeroinitializer
@n = global i32 zeroinitializer
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

define void @init(i32 %n) {
entry:
  %i = alloca i32
  %n.addr = alloca i32
  store i32 %n, i32* %n.addr
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %n.addr
  %.v3 = load i32, i32* %n.addr
  %.v4 = mul i32 %.v2, %.v3
  %.v5 = add i32 %.v4, 1
  %.v6 = icmp sle i32 %.v1, %.v5
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body2, label %while.end3
while.body2:
  %.v9 = sub i32 0, 1
  %.v10 = load i32, i32* %i
  %t10 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v10
  store i32 %.v9, i32* %t10
  %.v11 = load i32, i32* %i
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %i
  br label %while.cond1
while.end3:
  ret void
}

define i32 @findfa(i32 %a) {
entry:
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  %.v1 = load i32, i32* %a.addr
  %t14 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v1
  %.v2 = load i32, i32* %t14
  %.v3 = load i32, i32* %a.addr
  %.v4 = icmp eq i32 %.v2, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %if.then1, label %if.else2
if.then1:
  %.v7 = load i32, i32* %a.addr
  ret i32 %.v7
if.else2:
  %.v8 = load i32, i32* %a.addr
  %t22 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v8
  %.v9 = load i32, i32* %t22
  %.v10 = call i32 @findfa(i32 %.v9)
  %.v11 = load i32, i32* %a.addr
  %t26 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v11
  store i32 %.v10, i32* %t26
  %.v12 = load i32, i32* %a.addr
  %t28 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v12
  %.v13 = load i32, i32* %t28
  ret i32 %.v13
if.end3:
  ret i32 0
}

define void @mmerge(i32 %a, i32 %b) {
entry:
  %n = alloca i32
  %m = alloca i32
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %a.addr
  %.v2 = call i32 @findfa(i32 %.v1)
  store i32 %.v2, i32* %m
  %.v3 = load i32, i32* %b.addr
  %.v4 = call i32 @findfa(i32 %.v3)
  store i32 %.v4, i32* %n
  %.v5 = load i32, i32* %m
  %.v6 = load i32, i32* %n
  %.v7 = icmp ne i32 %.v5, %.v6
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then1, label %if.end2
if.then1:
  %.v10 = load i32, i32* %n
  %.v11 = load i32, i32* %m
  %t41 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v11
  store i32 %.v10, i32* %t41
  br label %if.end2
if.end2:
  ret void
}

define i32 @main() {
entry:
  %tmp = alloca i32
  %.v122 = alloca i32
  %.v121 = alloca i32
  %.v101 = alloca i32
  %.v80 = alloca i32
  %.v62 = alloca i32
  %.v43 = alloca i32
  %loc = alloca i32
  %k = alloca i32
  %flag = alloca i32
  %i = alloca i32
  %b = alloca i32
  %a = alloca i32
  %m = alloca i32
  %t = alloca i32
  store i32 1, i32* %t
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %t
  %.v2 = icmp ne i32 %.v1, 0
  br i1 %.v2, label %while.body2, label %while.end3
while.body2:
  %.v3 = load i32, i32* %t
  %.v4 = sub i32 %.v3, 1
  store i32 %.v4, i32* %t
  store i32 4, i32* @n
  store i32 10, i32* %m
  store i32 0, i32* %i
  store i32 0, i32* %flag
  %.v5 = load i32, i32* @n
  call void @init(i32 %.v5)
  %.v6 = load i32, i32* @n
  %.v7 = load i32, i32* @n
  %.v8 = mul i32 %.v6, %.v7
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %k
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %.v10 = load i32, i32* %i
  %.v11 = load i32, i32* %m
  %.v12 = icmp slt i32 %.v10, %.v11
  %.v13 = zext i1 %.v12 to i32
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %while.body5, label %while.end6
while.body5:
  %.v15 = call i32 @getint()
  store i32 %.v15, i32* %a
  %.v16 = call i32 @getint()
  store i32 %.v16, i32* %b
  %.v17 = load i32, i32* %flag
  %.v18 = icmp eq i32 %.v17, 0
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then7, label %if.end8
while.end6:
  %.v151 = load i32, i32* %flag
  %.v152 = icmp eq i32 %.v151, 0
  %.v153 = zext i1 %.v152 to i32
  %.v154 = icmp ne i32 %.v153, 0
  br i1 %.v154, label %if.then35, label %if.end36
if.then7:
  %.v21 = load i32, i32* @n
  %.v22 = load i32, i32* %a
  %.v23 = sub i32 %.v22, 1
  %.v24 = mul i32 %.v21, %.v23
  %.v25 = load i32, i32* %b
  %.v26 = add i32 %.v24, %.v25
  store i32 %.v26, i32* %loc
  %.v27 = load i32, i32* %loc
  %.v28 = load i32, i32* %loc
  %t70 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v28
  store i32 %.v27, i32* %t70
  %.v29 = load i32, i32* %a
  %.v30 = icmp eq i32 %.v29, 1
  %.v31 = zext i1 %.v30 to i32
  %.v32 = icmp ne i32 %.v31, 0
  br i1 %.v32, label %if.then9, label %if.end10
if.end8:
  %.v149 = load i32, i32* %i
  %.v150 = add i32 %.v149, 1
  store i32 %.v150, i32* %i
  br label %while.cond4
if.then9:
  %t75 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 0
  store i32 0, i32* %t75
  %.v33 = load i32, i32* %loc
  call void @mmerge(i32 %.v33, i32 0)
  br label %if.end10
if.end10:
  %.v34 = load i32, i32* %a
  %.v35 = load i32, i32* @n
  %.v36 = icmp eq i32 %.v34, %.v35
  %.v37 = zext i1 %.v36 to i32
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %if.then11, label %if.end12
if.then11:
  %.v39 = load i32, i32* %k
  %.v40 = load i32, i32* %k
  %t84 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v40
  store i32 %.v39, i32* %t84
  %.v41 = load i32, i32* %loc
  %.v42 = load i32, i32* %k
  call void @mmerge(i32 %.v41, i32 %.v42)
  br label %if.end12
if.end12:
  store i32 0, i32* %.v43
  %.v44 = load i32, i32* %b
  %.v45 = load i32, i32* @n
  %.v46 = icmp slt i32 %.v44, %.v45
  %.v47 = zext i1 %.v46 to i32
  %.v48 = icmp ne i32 %.v47, 0
  br i1 %.v48, label %land.rhs15, label %land.end16
if.then13:
  %.v59 = load i32, i32* %loc
  %.v60 = load i32, i32* %loc
  %.v61 = add i32 %.v60, 1
  call void @mmerge(i32 %.v59, i32 %.v61)
  br label %if.end14
if.end14:
  store i32 0, i32* %.v62
  %.v63 = load i32, i32* %b
  %.v64 = icmp sgt i32 %.v63, 1
  %.v65 = zext i1 %.v64 to i32
  %.v66 = icmp ne i32 %.v65, 0
  br i1 %.v66, label %land.rhs19, label %land.end20
land.rhs15:
  %.v49 = load i32, i32* %loc
  %.v50 = add i32 %.v49, 1
  %t94 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v50
  %.v51 = load i32, i32* %t94
  %.v52 = sub i32 0, 1
  %.v53 = icmp ne i32 %.v51, %.v52
  %.v54 = zext i1 %.v53 to i32
  %.v55 = icmp ne i32 %.v54, 0
  %.v56 = zext i1 %.v55 to i32
  store i32 %.v56, i32* %.v43
  br label %land.end16
land.end16:
  %.v57 = load i32, i32* %.v43
  %.v58 = icmp ne i32 %.v57, 0
  br i1 %.v58, label %if.then13, label %if.end14
if.then17:
  %.v77 = load i32, i32* %loc
  %.v78 = load i32, i32* %loc
  %.v79 = sub i32 %.v78, 1
  call void @mmerge(i32 %.v77, i32 %.v79)
  br label %if.end18
if.end18:
  store i32 0, i32* %.v80
  %.v81 = load i32, i32* %a
  %.v82 = load i32, i32* @n
  %.v83 = icmp slt i32 %.v81, %.v82
  %.v84 = zext i1 %.v83 to i32
  %.v85 = icmp ne i32 %.v84, 0
  br i1 %.v85, label %land.rhs23, label %land.end24
land.rhs19:
  %.v67 = load i32, i32* %loc
  %.v68 = sub i32 %.v67, 1
  %t112 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v68
  %.v69 = load i32, i32* %t112
  %.v70 = sub i32 0, 1
  %.v71 = icmp ne i32 %.v69, %.v70
  %.v72 = zext i1 %.v71 to i32
  %.v73 = icmp ne i32 %.v72, 0
  %.v74 = zext i1 %.v73 to i32
  store i32 %.v74, i32* %.v62
  br label %land.end20
land.end20:
  %.v75 = load i32, i32* %.v62
  %.v76 = icmp ne i32 %.v75, 0
  br i1 %.v76, label %if.then17, label %if.end18
if.then21:
  %.v97 = load i32, i32* %loc
  %.v98 = load i32, i32* %loc
  %.v99 = load i32, i32* @n
  %.v100 = add i32 %.v98, %.v99
  call void @mmerge(i32 %.v97, i32 %.v100)
  br label %if.end22
if.end22:
  store i32 0, i32* %.v101
  %.v102 = load i32, i32* %a
  %.v103 = icmp sgt i32 %.v102, 1
  %.v104 = zext i1 %.v103 to i32
  %.v105 = icmp ne i32 %.v104, 0
  br i1 %.v105, label %land.rhs27, label %land.end28
land.rhs23:
  %.v86 = load i32, i32* %loc
  %.v87 = load i32, i32* @n
  %.v88 = add i32 %.v86, %.v87
  %t132 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v88
  %.v89 = load i32, i32* %t132
  %.v90 = sub i32 0, 1
  %.v91 = icmp ne i32 %.v89, %.v90
  %.v92 = zext i1 %.v91 to i32
  %.v93 = icmp ne i32 %.v92, 0
  %.v94 = zext i1 %.v93 to i32
  store i32 %.v94, i32* %.v80
  br label %land.end24
land.end24:
  %.v95 = load i32, i32* %.v80
  %.v96 = icmp ne i32 %.v95, 0
  br i1 %.v96, label %if.then21, label %if.end22
if.then25:
  %.v117 = load i32, i32* %loc
  %.v118 = load i32, i32* %loc
  %.v119 = load i32, i32* @n
  %.v120 = sub i32 %.v118, %.v119
  call void @mmerge(i32 %.v117, i32 %.v120)
  br label %if.end26
if.end26:
  store i32 0, i32* %.v121
  store i32 0, i32* %.v122
  %t165 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 0
  %.v123 = load i32, i32* %t165
  %.v124 = sub i32 0, 1
  %.v125 = icmp ne i32 %.v123, %.v124
  %.v126 = zext i1 %.v125 to i32
  %.v127 = icmp ne i32 %.v126, 0
  br i1 %.v127, label %land.rhs31, label %land.end32
land.rhs27:
  %.v106 = load i32, i32* %loc
  %.v107 = load i32, i32* @n
  %.v108 = sub i32 %.v106, %.v107
  %t152 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v108
  %.v109 = load i32, i32* %t152
  %.v110 = sub i32 0, 1
  %.v111 = icmp ne i32 %.v109, %.v110
  %.v112 = zext i1 %.v111 to i32
  %.v113 = icmp ne i32 %.v112, 0
  %.v114 = zext i1 %.v113 to i32
  store i32 %.v114, i32* %.v101
  br label %land.end28
land.end28:
  %.v115 = load i32, i32* %.v101
  %.v116 = icmp ne i32 %.v115, 0
  br i1 %.v116, label %if.then25, label %if.end26
if.then29:
  store i32 1, i32* %flag
  %.v146 = load i32, i32* %i
  %.v147 = add i32 %.v146, 1
  store i32 %.v147, i32* %tmp
  %.v148 = load i32, i32* %tmp
  call void @putint(i32 %.v148)
  call void @putch(i32 10)
  br label %if.end30
if.end30:
  br label %if.end8
land.rhs31:
  %.v128 = load i32, i32* %k
  %t172 = getelementptr [110 x i32], [110 x i32]* @array, i64 0, i32 %.v128
  %.v129 = load i32, i32* %t172
  %.v130 = sub i32 0, 1
  %.v131 = icmp ne i32 %.v129, %.v130
  %.v132 = zext i1 %.v131 to i32
  %.v133 = icmp ne i32 %.v132, 0
  %.v134 = zext i1 %.v133 to i32
  store i32 %.v134, i32* %.v122
  br label %land.end32
land.end32:
  %.v135 = load i32, i32* %.v122
  %.v136 = icmp ne i32 %.v135, 0
  br i1 %.v136, label %land.rhs33, label %land.end34
land.rhs33:
  %.v137 = call i32 @findfa(i32 0)
  %.v138 = load i32, i32* %k
  %.v139 = call i32 @findfa(i32 %.v138)
  %.v140 = icmp eq i32 %.v137, %.v139
  %.v141 = zext i1 %.v140 to i32
  %.v142 = icmp ne i32 %.v141, 0
  %.v143 = zext i1 %.v142 to i32
  store i32 %.v143, i32* %.v121
  br label %land.end34
land.end34:
  %.v144 = load i32, i32* %.v121
  %.v145 = icmp ne i32 %.v144, 0
  br i1 %.v145, label %if.then29, label %if.end30
if.then35:
  %.v155 = sub i32 0, 1
  call void @putint(i32 %.v155)
  call void @putch(i32 10)
  br label %if.end36
if.end36:
  br label %while.cond1
}

