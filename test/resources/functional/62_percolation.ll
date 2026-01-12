@array = global [110 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @init(i32 %n) {
entry:
  %t0 = alloca i32
  store i32 %n, i32* %t0
  %t1 = alloca i32
  store i32 1, i32* %t1
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t1
  %v2 = load i32, i32* %t0
  %v3 = load i32, i32* %t0
  %v4 = mul i32 %v2, %v3
  %v5 = add i32 %v4, 1
  %v6 = icmp sle i32 %v1, %v5
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %while.body2, label %while.end3
while.body2:
  %v9 = sub i32 0, 1
  %v10 = load i32, i32* %t1
  %t12 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v10
  store i32 %v9, i32* %t12
  %v11 = load i32, i32* %t1
  %v12 = add i32 %v11, 1
  store i32 %v12, i32* %t1
  br label %while.cond1
while.end3:
  ret void
}

define i32 @findfa(i32 %a) {
entry:
  %t15 = alloca i32
  store i32 %a, i32* %t15
  %v1 = load i32, i32* %t15
  %t17 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v1
  %v2 = load i32, i32* %t17
  %v3 = load i32, i32* %t15
  %v4 = icmp eq i32 %v2, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %if.then1, label %if.else2
if.then1:
  %v7 = load i32, i32* %t15
  ret i32 %v7
if.else2:
  %v8 = load i32, i32* %t15
  %t25 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v8
  %v9 = load i32, i32* %t25
  %v10 = call i32 @findfa(i32 %v9)
  %v11 = load i32, i32* %t15
  %t29 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v11
  store i32 %v10, i32* %t29
  %v12 = load i32, i32* %t15
  %t31 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v12
  %v13 = load i32, i32* %t31
  ret i32 %v13
if.end3:
  ret i32 0
}

define void @mmerge(i32 %a, i32 %b) {
entry:
  %t33 = alloca i32
  store i32 %a, i32* %t33
  %t34 = alloca i32
  store i32 %b, i32* %t34
  %t35 = alloca i32
  %v1 = load i32, i32* %t33
  %v2 = call i32 @findfa(i32 %v1)
  store i32 %v2, i32* %t35
  %t38 = alloca i32
  %v3 = load i32, i32* %t34
  %v4 = call i32 @findfa(i32 %v3)
  store i32 %v4, i32* %t38
  %v5 = load i32, i32* %t35
  %v6 = load i32, i32* %t38
  %v7 = icmp ne i32 %v5, %v6
  %v8 = zext i1 %v7 to i32
  %v9 = icmp ne i32 %v8, 0
  br i1 %v9, label %if.then1, label %if.end2
if.then1:
  %v10 = load i32, i32* %t38
  %v11 = load i32, i32* %t35
  %t48 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v11
  store i32 %v10, i32* %t48
  br label %if.end2
if.end2:
  ret void
}

define i32 @main() {
entry:
  %t49 = alloca i32
  %t50 = alloca i32
  %t51 = alloca i32
  %t52 = alloca i32
  store i32 1, i32* %t49
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t49
  %v2 = icmp ne i32 %v1, 0
  br i1 %v2, label %while.body2, label %while.end3
while.body2:
  %v3 = load i32, i32* %t49
  %v4 = sub i32 %v3, 1
  store i32 %v4, i32* %t49
  store i32 4, i32* @n
  store i32 10, i32* %t50
  %t57 = alloca i32
  store i32 0, i32* %t57
  %t58 = alloca i32
  store i32 0, i32* %t58
  %v5 = load i32, i32* @n
  call void @init(i32 %v5)
  %t60 = alloca i32
  %v6 = load i32, i32* @n
  %v7 = load i32, i32* @n
  %v8 = mul i32 %v6, %v7
  %v9 = add i32 %v8, 1
  store i32 %v9, i32* %t60
  br label %while.cond4
while.end3:
  ret i32 0
while.cond4:
  %v10 = load i32, i32* %t57
  %v11 = load i32, i32* %t50
  %v12 = icmp slt i32 %v10, %v11
  %v13 = zext i1 %v12 to i32
  %v14 = icmp ne i32 %v13, 0
  br i1 %v14, label %while.body5, label %while.end6
while.body5:
  %v15 = call i32 @getint()
  store i32 %v15, i32* %t51
  %v16 = call i32 @getint()
  store i32 %v16, i32* %t52
  %v17 = load i32, i32* %t58
  %v18 = icmp eq i32 %v17, 0
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %if.then7, label %if.end8
while.end6:
  %v151 = load i32, i32* %t58
  %v152 = icmp eq i32 %v151, 0
  %v153 = zext i1 %v152 to i32
  %v154 = icmp ne i32 %v153, 0
  br i1 %v154, label %if.then35, label %if.end36
if.then7:
  %t76 = alloca i32
  %v21 = load i32, i32* @n
  %v22 = load i32, i32* %t51
  %v23 = sub i32 %v22, 1
  %v24 = mul i32 %v21, %v23
  %v25 = load i32, i32* %t52
  %v26 = add i32 %v24, %v25
  store i32 %v26, i32* %t76
  %v27 = load i32, i32* %t76
  %v28 = load i32, i32* %t76
  %t85 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v28
  store i32 %v27, i32* %t85
  %v29 = load i32, i32* %t51
  %v30 = icmp eq i32 %v29, 1
  %v31 = zext i1 %v30 to i32
  %v32 = icmp ne i32 %v31, 0
  br i1 %v32, label %if.then9, label %if.end10
if.end8:
  %v149 = load i32, i32* %t57
  %v150 = add i32 %v149, 1
  store i32 %v150, i32* %t57
  br label %while.cond4
if.then9:
  %t90 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 0
  store i32 0, i32* %t90
  %v33 = load i32, i32* %t76
  call void @mmerge(i32 %v33, i32 0)
  br label %if.end10
if.end10:
  %v34 = load i32, i32* %t51
  %v35 = load i32, i32* @n
  %v36 = icmp eq i32 %v34, %v35
  %v37 = zext i1 %v36 to i32
  %v38 = icmp ne i32 %v37, 0
  br i1 %v38, label %if.then11, label %if.end12
if.then11:
  %v39 = load i32, i32* %t60
  %v40 = load i32, i32* %t60
  %t99 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v40
  store i32 %v39, i32* %t99
  %v41 = load i32, i32* %t76
  %v42 = load i32, i32* %t60
  call void @mmerge(i32 %v41, i32 %v42)
  br label %if.end12
if.end12:
  %v43 = alloca i32
  store i32 0, i32* %v43
  %v44 = load i32, i32* %t52
  %v45 = load i32, i32* @n
  %v46 = icmp slt i32 %v44, %v45
  %v47 = zext i1 %v46 to i32
  %v48 = icmp ne i32 %v47, 0
  br i1 %v48, label %land.rhs15, label %land.end16
if.then13:
  %v59 = load i32, i32* %t76
  %v60 = load i32, i32* %t76
  %v61 = add i32 %v60, 1
  call void @mmerge(i32 %v59, i32 %v61)
  br label %if.end14
if.end14:
  %v62 = alloca i32
  store i32 0, i32* %v62
  %v63 = load i32, i32* %t52
  %v64 = icmp sgt i32 %v63, 1
  %v65 = zext i1 %v64 to i32
  %v66 = icmp ne i32 %v65, 0
  br i1 %v66, label %land.rhs19, label %land.end20
land.rhs15:
  %v49 = load i32, i32* %t76
  %v50 = add i32 %v49, 1
  %t110 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v50
  %v51 = load i32, i32* %t110
  %v52 = sub i32 0, 1
  %v53 = icmp ne i32 %v51, %v52
  %v54 = zext i1 %v53 to i32
  %v55 = icmp ne i32 %v54, 0
  %v56 = zext i1 %v55 to i32
  store i32 %v56, i32* %v43
  br label %land.end16
land.end16:
  %v57 = load i32, i32* %v43
  %v58 = icmp ne i32 %v57, 0
  br i1 %v58, label %if.then13, label %if.end14
if.then17:
  %v77 = load i32, i32* %t76
  %v78 = load i32, i32* %t76
  %v79 = sub i32 %v78, 1
  call void @mmerge(i32 %v77, i32 %v79)
  br label %if.end18
if.end18:
  %v80 = alloca i32
  store i32 0, i32* %v80
  %v81 = load i32, i32* %t51
  %v82 = load i32, i32* @n
  %v83 = icmp slt i32 %v81, %v82
  %v84 = zext i1 %v83 to i32
  %v85 = icmp ne i32 %v84, 0
  br i1 %v85, label %land.rhs23, label %land.end24
land.rhs19:
  %v67 = load i32, i32* %t76
  %v68 = sub i32 %v67, 1
  %t129 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v68
  %v69 = load i32, i32* %t129
  %v70 = sub i32 0, 1
  %v71 = icmp ne i32 %v69, %v70
  %v72 = zext i1 %v71 to i32
  %v73 = icmp ne i32 %v72, 0
  %v74 = zext i1 %v73 to i32
  store i32 %v74, i32* %v62
  br label %land.end20
land.end20:
  %v75 = load i32, i32* %v62
  %v76 = icmp ne i32 %v75, 0
  br i1 %v76, label %if.then17, label %if.end18
if.then21:
  %v97 = load i32, i32* %t76
  %v98 = load i32, i32* %t76
  %v99 = load i32, i32* @n
  %v100 = add i32 %v98, %v99
  call void @mmerge(i32 %v97, i32 %v100)
  br label %if.end22
if.end22:
  %v101 = alloca i32
  store i32 0, i32* %v101
  %v102 = load i32, i32* %t51
  %v103 = icmp sgt i32 %v102, 1
  %v104 = zext i1 %v103 to i32
  %v105 = icmp ne i32 %v104, 0
  br i1 %v105, label %land.rhs27, label %land.end28
land.rhs23:
  %v86 = load i32, i32* %t76
  %v87 = load i32, i32* @n
  %v88 = add i32 %v86, %v87
  %t150 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v88
  %v89 = load i32, i32* %t150
  %v90 = sub i32 0, 1
  %v91 = icmp ne i32 %v89, %v90
  %v92 = zext i1 %v91 to i32
  %v93 = icmp ne i32 %v92, 0
  %v94 = zext i1 %v93 to i32
  store i32 %v94, i32* %v80
  br label %land.end24
land.end24:
  %v95 = load i32, i32* %v80
  %v96 = icmp ne i32 %v95, 0
  br i1 %v96, label %if.then21, label %if.end22
if.then25:
  %v117 = load i32, i32* %t76
  %v118 = load i32, i32* %t76
  %v119 = load i32, i32* @n
  %v120 = sub i32 %v118, %v119
  call void @mmerge(i32 %v117, i32 %v120)
  br label %if.end26
if.end26:
  %v121 = alloca i32
  store i32 0, i32* %v121
  %v122 = alloca i32
  store i32 0, i32* %v122
  %t186 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 0
  %v123 = load i32, i32* %t186
  %v124 = sub i32 0, 1
  %v125 = icmp ne i32 %v123, %v124
  %v126 = zext i1 %v125 to i32
  %v127 = icmp ne i32 %v126, 0
  br i1 %v127, label %land.rhs31, label %land.end32
land.rhs27:
  %v106 = load i32, i32* %t76
  %v107 = load i32, i32* @n
  %v108 = sub i32 %v106, %v107
  %t171 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v108
  %v109 = load i32, i32* %t171
  %v110 = sub i32 0, 1
  %v111 = icmp ne i32 %v109, %v110
  %v112 = zext i1 %v111 to i32
  %v113 = icmp ne i32 %v112, 0
  %v114 = zext i1 %v113 to i32
  store i32 %v114, i32* %v101
  br label %land.end28
land.end28:
  %v115 = load i32, i32* %v101
  %v116 = icmp ne i32 %v115, 0
  br i1 %v116, label %if.then25, label %if.end26
if.then29:
  store i32 1, i32* %t58
  %t211 = alloca i32
  %v146 = load i32, i32* %t57
  %v147 = add i32 %v146, 1
  store i32 %v147, i32* %t211
  %v148 = load i32, i32* %t211
  call void @putint(i32 %v148)
  call void @putch(i32 10)
  br label %if.end30
if.end30:
  br label %if.end8
land.rhs31:
  %v128 = load i32, i32* %t60
  %t193 = getelementptr [110 x i32], [110 x i32]* @array, i32 0, i32 %v128
  %v129 = load i32, i32* %t193
  %v130 = sub i32 0, 1
  %v131 = icmp ne i32 %v129, %v130
  %v132 = zext i1 %v131 to i32
  %v133 = icmp ne i32 %v132, 0
  %v134 = zext i1 %v133 to i32
  store i32 %v134, i32* %v122
  br label %land.end32
land.end32:
  %v135 = load i32, i32* %v122
  %v136 = icmp ne i32 %v135, 0
  br i1 %v136, label %land.rhs33, label %land.end34
land.rhs33:
  %v137 = call i32 @findfa(i32 0)
  %v138 = load i32, i32* %t60
  %v139 = call i32 @findfa(i32 %v138)
  %v140 = icmp eq i32 %v137, %v139
  %v141 = zext i1 %v140 to i32
  %v142 = icmp ne i32 %v141, 0
  %v143 = zext i1 %v142 to i32
  store i32 %v143, i32* %v121
  br label %land.end34
land.end34:
  %v144 = load i32, i32* %v121
  %v145 = icmp ne i32 %v144, 0
  br i1 %v145, label %if.then29, label %if.end30
if.then35:
  %v155 = sub i32 0, 1
  call void @putint(i32 %v155)
  call void @putch(i32 10)
  br label %if.end36
if.end36:
  br label %while.cond1
}

