@a = global i32 0
@b = global i32 0
@d = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @set_a(i32 %val) {
entry:
  %t0 = alloca i32
  store i32 %val, i32* %t0
  %v1 = load i32, i32* %t0
  store i32 %v1, i32* @a
  %v2 = load i32, i32* @a
  ret i32 %v2
}

define i32 @set_b(i32 %val) {
entry:
  %t3 = alloca i32
  store i32 %val, i32* %t3
  %v1 = load i32, i32* %t3
  store i32 %v1, i32* @b
  %v2 = load i32, i32* @b
  ret i32 %v2
}

define i32 @set_d(i32 %val) {
entry:
  %t6 = alloca i32
  store i32 %val, i32* %t6
  %v1 = load i32, i32* %t6
  store i32 %v1, i32* @d
  %v2 = load i32, i32* @d
  ret i32 %v2
}

define i32 @main() {
entry:
  store i32 2, i32* @a
  store i32 3, i32* @b
  %v1 = alloca i32
  store i32 0, i32* %v1
  %v2 = call i32 @set_a(i32 0)
  %v3 = icmp ne i32 %v2, 0
  br i1 %v3, label %land.rhs3, label %land.end4
if.then1:
  br label %if.end2
if.end2:
  %v9 = load i32, i32* @a
  call void @putint(i32 %v9)
  call void @putch(i32 32)
  %v10 = load i32, i32* @b
  call void @putint(i32 %v10)
  call void @putch(i32 32)
  store i32 2, i32* @a
  store i32 3, i32* @b
  %v11 = alloca i32
  store i32 0, i32* %v11
  %v12 = call i32 @set_a(i32 0)
  %v13 = icmp ne i32 %v12, 0
  br i1 %v13, label %land.rhs7, label %land.end8
land.rhs3:
  %v4 = call i32 @set_b(i32 1)
  %v5 = icmp ne i32 %v4, 0
  %v6 = zext i1 %v5 to i32
  store i32 %v6, i32* %v1
  br label %land.end4
land.end4:
  %v7 = load i32, i32* %v1
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %if.then1, label %if.end2
if.then5:
  br label %if.end6
if.end6:
  %v19 = load i32, i32* @a
  call void @putint(i32 %v19)
  call void @putch(i32 32)
  %v20 = load i32, i32* @b
  call void @putint(i32 %v20)
  call void @putch(i32 10)
  %t29 = alloca i32
  store i32 1, i32* %t29
  store i32 2, i32* @d
  %v21 = alloca i32
  store i32 0, i32* %v21
  %v22 = load i32, i32* %t29
  %v23 = icmp sge i32 %v22, 1
  %v24 = zext i1 %v23 to i32
  %v25 = icmp ne i32 %v24, 0
  br i1 %v25, label %land.rhs11, label %land.end12
land.rhs7:
  %v14 = call i32 @set_b(i32 1)
  %v15 = icmp ne i32 %v14, 0
  %v16 = zext i1 %v15 to i32
  store i32 %v16, i32* %v11
  br label %land.end8
land.end8:
  %v17 = load i32, i32* %v11
  %v18 = icmp ne i32 %v17, 0
  br i1 %v18, label %if.then5, label %if.end6
if.then9:
  br label %if.end10
if.end10:
  %v31 = load i32, i32* @d
  call void @putint(i32 %v31)
  call void @putch(i32 32)
  %v32 = alloca i32
  store i32 1, i32* %v32
  %v33 = load i32, i32* %t29
  %v34 = icmp sle i32 %v33, 1
  %v35 = zext i1 %v34 to i32
  %v36 = icmp ne i32 %v35, 0
  br i1 %v36, label %lor.end16, label %lor.rhs15
land.rhs11:
  %v26 = call i32 @set_d(i32 3)
  %v27 = icmp ne i32 %v26, 0
  %v28 = zext i1 %v27 to i32
  store i32 %v28, i32* %v21
  br label %land.end12
land.end12:
  %v29 = load i32, i32* %v21
  %v30 = icmp ne i32 %v29, 0
  br i1 %v30, label %if.then9, label %if.end10
if.then13:
  br label %if.end14
if.end14:
  %v42 = load i32, i32* @d
  call void @putint(i32 %v42)
  call void @putch(i32 10)
  %v43 = add i32 2, 1
  %v44 = sub i32 3, %v43
  %v45 = icmp sge i32 16, %v44
  %v46 = zext i1 %v45 to i32
  %v47 = icmp ne i32 %v46, 0
  br i1 %v47, label %if.then17, label %if.end18
lor.rhs15:
  %v37 = call i32 @set_d(i32 4)
  %v38 = icmp ne i32 %v37, 0
  %v39 = zext i1 %v38 to i32
  store i32 %v39, i32* %v32
  br label %lor.end16
lor.end16:
  %v40 = load i32, i32* %v32
  %v41 = icmp ne i32 %v40, 0
  br i1 %v41, label %if.then13, label %if.end14
if.then17:
  call void @putch(i32 65)
  br label %if.end18
if.end18:
  %v48 = sub i32 25, 7
  %v49 = mul i32 6, 3
  %v50 = sub i32 36, %v49
  %v51 = icmp ne i32 %v48, %v50
  %v52 = zext i1 %v51 to i32
  %v53 = icmp ne i32 %v52, 0
  br i1 %v53, label %if.then19, label %if.end20
if.then19:
  call void @putch(i32 66)
  br label %if.end20
if.end20:
  %v54 = icmp slt i32 1, 8
  %v55 = zext i1 %v54 to i32
  %v56 = srem i32 7, 2
  %v57 = icmp ne i32 %v55, %v56
  %v58 = zext i1 %v57 to i32
  %v59 = icmp ne i32 %v58, 0
  br i1 %v59, label %if.then21, label %if.end22
if.then21:
  call void @putch(i32 67)
  br label %if.end22
if.end22:
  %v60 = icmp sgt i32 3, 4
  %v61 = zext i1 %v60 to i32
  %v62 = icmp eq i32 %v61, 0
  %v63 = zext i1 %v62 to i32
  %v64 = icmp ne i32 %v63, 0
  br i1 %v64, label %if.then23, label %if.end24
if.then23:
  call void @putch(i32 68)
  br label %if.end24
if.end24:
  %v65 = icmp sle i32 102, 63
  %v66 = zext i1 %v65 to i32
  %v67 = icmp eq i32 1, %v66
  %v68 = zext i1 %v67 to i32
  %v69 = icmp ne i32 %v68, 0
  br i1 %v69, label %if.then25, label %if.end26
if.then25:
  call void @putch(i32 69)
  br label %if.end26
if.end26:
  %v70 = sub i32 5, 6
  %v71 = icmp eq i32 0, 0
  %v72 = zext i1 %v71 to i32
  %v73 = sub i32 0, %v72
  %v74 = icmp eq i32 %v70, %v73
  %v75 = zext i1 %v74 to i32
  %v76 = icmp ne i32 %v75, 0
  br i1 %v76, label %if.then27, label %if.end28
if.then27:
  call void @putch(i32 70)
  br label %if.end28
if.end28:
  call void @putch(i32 10)
  %t86 = alloca i32
  store i32 0, i32* %t86
  %t87 = alloca i32
  store i32 1, i32* %t87
  %t88 = alloca i32
  store i32 2, i32* %t88
  %t89 = alloca i32
  store i32 3, i32* %t89
  %t90 = alloca i32
  store i32 4, i32* %t90
  br label %while.cond29
while.cond29:
  %v77 = alloca i32
  store i32 0, i32* %v77
  %v78 = load i32, i32* %t86
  %v79 = icmp ne i32 %v78, 0
  br i1 %v79, label %land.rhs32, label %land.end33
while.body30:
  call void @putch(i32 32)
  br label %while.cond29
while.end31:
  %v85 = alloca i32
  store i32 1, i32* %v85
  %v86 = load i32, i32* %t86
  %v87 = icmp ne i32 %v86, 0
  br i1 %v87, label %lor.end37, label %lor.rhs36
land.rhs32:
  %v80 = load i32, i32* %t87
  %v81 = icmp ne i32 %v80, 0
  %v82 = zext i1 %v81 to i32
  store i32 %v82, i32* %v77
  br label %land.end33
land.end33:
  %v83 = load i32, i32* %v77
  %v84 = icmp ne i32 %v83, 0
  br i1 %v84, label %while.body30, label %while.end31
if.then34:
  call void @putch(i32 67)
  br label %if.end35
if.end35:
  %v93 = alloca i32
  store i32 1, i32* %v93
  %v94 = load i32, i32* %t86
  %v95 = load i32, i32* %t87
  %v96 = icmp sge i32 %v94, %v95
  %v97 = zext i1 %v96 to i32
  %v98 = icmp ne i32 %v97, 0
  br i1 %v98, label %lor.end41, label %lor.rhs40
lor.rhs36:
  %v88 = load i32, i32* %t87
  %v89 = icmp ne i32 %v88, 0
  %v90 = zext i1 %v89 to i32
  store i32 %v90, i32* %v85
  br label %lor.end37
lor.end37:
  %v91 = load i32, i32* %v85
  %v92 = icmp ne i32 %v91, 0
  br i1 %v92, label %if.then34, label %if.end35
if.then38:
  call void @putch(i32 72)
  br label %if.end39
if.end39:
  %v107 = alloca i32
  store i32 0, i32* %v107
  %v108 = load i32, i32* %t88
  %v109 = load i32, i32* %t87
  %v110 = icmp sge i32 %v108, %v109
  %v111 = zext i1 %v110 to i32
  %v112 = icmp ne i32 %v111, 0
  br i1 %v112, label %land.rhs44, label %land.end45
lor.rhs40:
  %v99 = load i32, i32* %t87
  %v100 = load i32, i32* %t86
  %v101 = icmp sle i32 %v99, %v100
  %v102 = zext i1 %v101 to i32
  %v103 = icmp ne i32 %v102, 0
  %v104 = zext i1 %v103 to i32
  store i32 %v104, i32* %v93
  br label %lor.end41
lor.end41:
  %v105 = load i32, i32* %v93
  %v106 = icmp ne i32 %v105, 0
  br i1 %v106, label %if.then38, label %if.end39
if.then42:
  call void @putch(i32 73)
  br label %if.end43
if.end43:
  %v121 = alloca i32
  store i32 1, i32* %v121
  %v122 = alloca i32
  store i32 0, i32* %v122
  %v123 = load i32, i32* %t86
  %v124 = load i32, i32* %t87
  %v125 = icmp eq i32 %v124, 0
  %v126 = zext i1 %v125 to i32
  %v127 = icmp eq i32 %v123, %v126
  %v128 = zext i1 %v127 to i32
  %v129 = icmp ne i32 %v128, 0
  br i1 %v129, label %land.rhs48, label %land.end49
land.rhs44:
  %v113 = load i32, i32* %t90
  %v114 = load i32, i32* %t89
  %v115 = icmp ne i32 %v113, %v114
  %v116 = zext i1 %v115 to i32
  %v117 = icmp ne i32 %v116, 0
  %v118 = zext i1 %v117 to i32
  store i32 %v118, i32* %v107
  br label %land.end45
land.end45:
  %v119 = load i32, i32* %v107
  %v120 = icmp ne i32 %v119, 0
  br i1 %v120, label %if.then42, label %if.end43
if.then46:
  call void @putch(i32 74)
  br label %if.end47
if.end47:
  %v146 = alloca i32
  store i32 1, i32* %v146
  %v147 = load i32, i32* %t86
  %v148 = load i32, i32* %t87
  %v149 = icmp eq i32 %v148, 0
  %v150 = zext i1 %v149 to i32
  %v151 = icmp eq i32 %v147, %v150
  %v152 = zext i1 %v151 to i32
  %v153 = icmp ne i32 %v152, 0
  br i1 %v153, label %lor.end55, label %lor.rhs54
land.rhs48:
  %v130 = load i32, i32* %t89
  %v131 = load i32, i32* %t89
  %v132 = icmp slt i32 %v130, %v131
  %v133 = zext i1 %v132 to i32
  %v134 = icmp ne i32 %v133, 0
  %v135 = zext i1 %v134 to i32
  store i32 %v135, i32* %v122
  br label %land.end49
land.end49:
  %v136 = load i32, i32* %v122
  %v137 = icmp ne i32 %v136, 0
  br i1 %v137, label %lor.end51, label %lor.rhs50
lor.rhs50:
  %v138 = load i32, i32* %t90
  %v139 = load i32, i32* %t90
  %v140 = icmp sge i32 %v138, %v139
  %v141 = zext i1 %v140 to i32
  %v142 = icmp ne i32 %v141, 0
  %v143 = zext i1 %v142 to i32
  store i32 %v143, i32* %v121
  br label %lor.end51
lor.end51:
  %v144 = load i32, i32* %v121
  %v145 = icmp ne i32 %v144, 0
  br i1 %v145, label %if.then46, label %if.end47
if.then52:
  call void @putch(i32 75)
  br label %if.end53
if.end53:
  call void @putch(i32 10)
  ret i32 0
lor.rhs54:
  %v154 = alloca i32
  store i32 0, i32* %v154
  %v155 = load i32, i32* %t89
  %v156 = load i32, i32* %t89
  %v157 = icmp slt i32 %v155, %v156
  %v158 = zext i1 %v157 to i32
  %v159 = icmp ne i32 %v158, 0
  br i1 %v159, label %land.rhs56, label %land.end57
lor.end55:
  %v169 = load i32, i32* %v146
  %v170 = icmp ne i32 %v169, 0
  br i1 %v170, label %if.then52, label %if.end53
land.rhs56:
  %v160 = load i32, i32* %t90
  %v161 = load i32, i32* %t90
  %v162 = icmp sge i32 %v160, %v161
  %v163 = zext i1 %v162 to i32
  %v164 = icmp ne i32 %v163, 0
  %v165 = zext i1 %v164 to i32
  store i32 %v165, i32* %v154
  br label %land.end57
land.end57:
  %v166 = load i32, i32* %v154
  %v167 = icmp ne i32 %v166, 0
  %v168 = zext i1 %v167 to i32
  store i32 %v168, i32* %v146
  br label %lor.end55
}

