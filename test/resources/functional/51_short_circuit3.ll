@a = global i32 zeroinitializer
@b = global i32 zeroinitializer
@d = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @set_a(i32 %val) {
entry:
  %val.addr = alloca i32
  store i32 %val, i32* %val.addr
  %.v1 = load i32, i32* %val.addr
  store i32 %.v1, i32* @a
  %.v2 = load i32, i32* @a
  ret i32 %.v2
}

define i32 @set_b(i32 %val) {
entry:
  %val.addr = alloca i32
  store i32 %val, i32* %val.addr
  %.v1 = load i32, i32* %val.addr
  store i32 %.v1, i32* @b
  %.v2 = load i32, i32* @b
  ret i32 %.v2
}

define i32 @set_d(i32 %val) {
entry:
  %val.addr = alloca i32
  store i32 %val, i32* %val.addr
  %.v1 = load i32, i32* %val.addr
  store i32 %.v1, i32* @d
  %.v2 = load i32, i32* @d
  ret i32 %.v2
}

define i32 @main() {
entry:
  %.v152 = alloca i32
  %.v144 = alloca i32
  %.v120 = alloca i32
  %.v119 = alloca i32
  %.v105 = alloca i32
  %.v91 = alloca i32
  %.v83 = alloca i32
  %.v75 = alloca i32
  %i4 = alloca i32
  %i3 = alloca i32
  %i2 = alloca i32
  %i1 = alloca i32
  %i0 = alloca i32
  %.v31 = alloca i32
  %.v21 = alloca i32
  %c = alloca i32
  %.v11 = alloca i32
  %.v1 = alloca i32
  store i32 2, i32* @a
  store i32 3, i32* @b
  store i32 0, i32* %.v1
  %.v2 = call i32 @set_a(i32 0)
  %.v3 = icmp ne i32 %.v2, 0
  br i1 %.v3, label %land.rhs3, label %land.end4
if.then1:
  br label %if.end2
if.end2:
  %.v9 = load i32, i32* @a
  call void @putint(i32 %.v9)
  call void @putch(i32 32)
  %.v10 = load i32, i32* @b
  call void @putint(i32 %.v10)
  call void @putch(i32 32)
  store i32 2, i32* @a
  store i32 3, i32* @b
  store i32 0, i32* %.v11
  %.v12 = call i32 @set_a(i32 0)
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %land.rhs7, label %land.end8
land.rhs3:
  %.v4 = call i32 @set_b(i32 1)
  %.v5 = icmp ne i32 %.v4, 0
  %.v6 = zext i1 %.v5 to i32
  store i32 %.v6, i32* %.v1
  br label %land.end4
land.end4:
  %.v7 = load i32, i32* %.v1
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then1, label %if.end2
if.then5:
  br label %if.end6
if.end6:
  %.v19 = load i32, i32* @a
  call void @putint(i32 %.v19)
  call void @putch(i32 32)
  %.v20 = load i32, i32* @b
  call void @putint(i32 %.v20)
  call void @putch(i32 10)
  store i32 1, i32* %c
  store i32 2, i32* @d
  store i32 0, i32* %.v21
  %.v22 = icmp sge i32 1, 1
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %land.rhs11, label %land.end12
land.rhs7:
  %.v14 = call i32 @set_b(i32 1)
  %.v15 = icmp ne i32 %.v14, 0
  %.v16 = zext i1 %.v15 to i32
  store i32 %.v16, i32* %.v11
  br label %land.end8
land.end8:
  %.v17 = load i32, i32* %.v11
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then5, label %if.end6
if.then9:
  br label %if.end10
if.end10:
  %.v30 = load i32, i32* @d
  call void @putint(i32 %.v30)
  call void @putch(i32 32)
  store i32 1, i32* %.v31
  %.v32 = icmp sle i32 1, 1
  %.v33 = zext i1 %.v32 to i32
  %.v34 = icmp ne i32 %.v33, 0
  br i1 %.v34, label %lor.end16, label %lor.rhs15
land.rhs11:
  %.v25 = call i32 @set_d(i32 3)
  %.v26 = icmp ne i32 %.v25, 0
  %.v27 = zext i1 %.v26 to i32
  store i32 %.v27, i32* %.v21
  br label %land.end12
land.end12:
  %.v28 = load i32, i32* %.v21
  %.v29 = icmp ne i32 %.v28, 0
  br i1 %.v29, label %if.then9, label %if.end10
if.then13:
  br label %if.end14
if.end14:
  %.v40 = load i32, i32* @d
  call void @putint(i32 %.v40)
  call void @putch(i32 10)
  %.v41 = add i32 2, 1
  %.v42 = sub i32 3, %.v41
  %.v43 = icmp sge i32 16, %.v42
  %.v44 = zext i1 %.v43 to i32
  %.v45 = icmp ne i32 %.v44, 0
  br i1 %.v45, label %if.then17, label %if.end18
lor.rhs15:
  %.v35 = call i32 @set_d(i32 4)
  %.v36 = icmp ne i32 %.v35, 0
  %.v37 = zext i1 %.v36 to i32
  store i32 %.v37, i32* %.v31
  br label %lor.end16
lor.end16:
  %.v38 = load i32, i32* %.v31
  %.v39 = icmp ne i32 %.v38, 0
  br i1 %.v39, label %if.then13, label %if.end14
if.then17:
  call void @putch(i32 65)
  br label %if.end18
if.end18:
  %.v46 = sub i32 25, 7
  %.v47 = mul i32 6, 3
  %.v48 = sub i32 36, %.v47
  %.v49 = icmp ne i32 %.v46, %.v48
  %.v50 = zext i1 %.v49 to i32
  %.v51 = icmp ne i32 %.v50, 0
  br i1 %.v51, label %if.then19, label %if.end20
if.then19:
  call void @putch(i32 66)
  br label %if.end20
if.end20:
  %.v52 = icmp slt i32 1, 8
  %.v53 = zext i1 %.v52 to i32
  %.v54 = srem i32 7, 2
  %.v55 = icmp ne i32 %.v53, %.v54
  %.v56 = zext i1 %.v55 to i32
  %.v57 = icmp ne i32 %.v56, 0
  br i1 %.v57, label %if.then21, label %if.end22
if.then21:
  call void @putch(i32 67)
  br label %if.end22
if.end22:
  %.v58 = icmp sgt i32 3, 4
  %.v59 = zext i1 %.v58 to i32
  %.v60 = icmp eq i32 %.v59, 0
  %.v61 = zext i1 %.v60 to i32
  %.v62 = icmp ne i32 %.v61, 0
  br i1 %.v62, label %if.then23, label %if.end24
if.then23:
  call void @putch(i32 68)
  br label %if.end24
if.end24:
  %.v63 = icmp sle i32 102, 63
  %.v64 = zext i1 %.v63 to i32
  %.v65 = icmp eq i32 1, %.v64
  %.v66 = zext i1 %.v65 to i32
  %.v67 = icmp ne i32 %.v66, 0
  br i1 %.v67, label %if.then25, label %if.end26
if.then25:
  call void @putch(i32 69)
  br label %if.end26
if.end26:
  %.v68 = sub i32 5, 6
  %.v69 = icmp eq i32 0, 0
  %.v70 = zext i1 %.v69 to i32
  %.v71 = sub i32 0, %.v70
  %.v72 = icmp eq i32 %.v68, %.v71
  %.v73 = zext i1 %.v72 to i32
  %.v74 = icmp ne i32 %.v73, 0
  br i1 %.v74, label %if.then27, label %if.end28
if.then27:
  call void @putch(i32 70)
  br label %if.end28
if.end28:
  call void @putch(i32 10)
  store i32 0, i32* %i0
  store i32 1, i32* %i1
  store i32 2, i32* %i2
  store i32 3, i32* %i3
  store i32 4, i32* %i4
  br label %while.cond29
while.cond29:
  store i32 0, i32* %.v75
  %.v76 = load i32, i32* %i0
  %.v77 = icmp ne i32 %.v76, 0
  br i1 %.v77, label %land.rhs32, label %land.end33
while.body30:
  call void @putch(i32 32)
  br label %while.cond29
while.end31:
  store i32 1, i32* %.v83
  %.v84 = load i32, i32* %i0
  %.v85 = icmp ne i32 %.v84, 0
  br i1 %.v85, label %lor.end37, label %lor.rhs36
land.rhs32:
  %.v78 = load i32, i32* %i1
  %.v79 = icmp ne i32 %.v78, 0
  %.v80 = zext i1 %.v79 to i32
  store i32 %.v80, i32* %.v75
  br label %land.end33
land.end33:
  %.v81 = load i32, i32* %.v75
  %.v82 = icmp ne i32 %.v81, 0
  br i1 %.v82, label %while.body30, label %while.end31
if.then34:
  call void @putch(i32 67)
  br label %if.end35
if.end35:
  store i32 1, i32* %.v91
  %.v92 = load i32, i32* %i0
  %.v93 = load i32, i32* %i1
  %.v94 = icmp sge i32 %.v92, %.v93
  %.v95 = zext i1 %.v94 to i32
  %.v96 = icmp ne i32 %.v95, 0
  br i1 %.v96, label %lor.end41, label %lor.rhs40
lor.rhs36:
  %.v86 = load i32, i32* %i1
  %.v87 = icmp ne i32 %.v86, 0
  %.v88 = zext i1 %.v87 to i32
  store i32 %.v88, i32* %.v83
  br label %lor.end37
lor.end37:
  %.v89 = load i32, i32* %.v83
  %.v90 = icmp ne i32 %.v89, 0
  br i1 %.v90, label %if.then34, label %if.end35
if.then38:
  call void @putch(i32 72)
  br label %if.end39
if.end39:
  store i32 0, i32* %.v105
  %.v106 = load i32, i32* %i2
  %.v107 = load i32, i32* %i1
  %.v108 = icmp sge i32 %.v106, %.v107
  %.v109 = zext i1 %.v108 to i32
  %.v110 = icmp ne i32 %.v109, 0
  br i1 %.v110, label %land.rhs44, label %land.end45
lor.rhs40:
  %.v97 = load i32, i32* %i1
  %.v98 = load i32, i32* %i0
  %.v99 = icmp sle i32 %.v97, %.v98
  %.v100 = zext i1 %.v99 to i32
  %.v101 = icmp ne i32 %.v100, 0
  %.v102 = zext i1 %.v101 to i32
  store i32 %.v102, i32* %.v91
  br label %lor.end41
lor.end41:
  %.v103 = load i32, i32* %.v91
  %.v104 = icmp ne i32 %.v103, 0
  br i1 %.v104, label %if.then38, label %if.end39
if.then42:
  call void @putch(i32 73)
  br label %if.end43
if.end43:
  store i32 1, i32* %.v119
  store i32 0, i32* %.v120
  %.v121 = load i32, i32* %i0
  %.v122 = load i32, i32* %i1
  %.v123 = icmp eq i32 %.v122, 0
  %.v124 = zext i1 %.v123 to i32
  %.v125 = icmp eq i32 %.v121, %.v124
  %.v126 = zext i1 %.v125 to i32
  %.v127 = icmp ne i32 %.v126, 0
  br i1 %.v127, label %land.rhs48, label %land.end49
land.rhs44:
  %.v111 = load i32, i32* %i4
  %.v112 = load i32, i32* %i3
  %.v113 = icmp ne i32 %.v111, %.v112
  %.v114 = zext i1 %.v113 to i32
  %.v115 = icmp ne i32 %.v114, 0
  %.v116 = zext i1 %.v115 to i32
  store i32 %.v116, i32* %.v105
  br label %land.end45
land.end45:
  %.v117 = load i32, i32* %.v105
  %.v118 = icmp ne i32 %.v117, 0
  br i1 %.v118, label %if.then42, label %if.end43
if.then46:
  call void @putch(i32 74)
  br label %if.end47
if.end47:
  store i32 1, i32* %.v144
  %.v145 = load i32, i32* %i0
  %.v146 = load i32, i32* %i1
  %.v147 = icmp eq i32 %.v146, 0
  %.v148 = zext i1 %.v147 to i32
  %.v149 = icmp eq i32 %.v145, %.v148
  %.v150 = zext i1 %.v149 to i32
  %.v151 = icmp ne i32 %.v150, 0
  br i1 %.v151, label %lor.end55, label %lor.rhs54
land.rhs48:
  %.v128 = load i32, i32* %i3
  %.v129 = load i32, i32* %i3
  %.v130 = icmp slt i32 %.v128, %.v129
  %.v131 = zext i1 %.v130 to i32
  %.v132 = icmp ne i32 %.v131, 0
  %.v133 = zext i1 %.v132 to i32
  store i32 %.v133, i32* %.v120
  br label %land.end49
land.end49:
  %.v134 = load i32, i32* %.v120
  %.v135 = icmp ne i32 %.v134, 0
  br i1 %.v135, label %lor.end51, label %lor.rhs50
lor.rhs50:
  %.v136 = load i32, i32* %i4
  %.v137 = load i32, i32* %i4
  %.v138 = icmp sge i32 %.v136, %.v137
  %.v139 = zext i1 %.v138 to i32
  %.v140 = icmp ne i32 %.v139, 0
  %.v141 = zext i1 %.v140 to i32
  store i32 %.v141, i32* %.v119
  br label %lor.end51
lor.end51:
  %.v142 = load i32, i32* %.v119
  %.v143 = icmp ne i32 %.v142, 0
  br i1 %.v143, label %if.then46, label %if.end47
if.then52:
  call void @putch(i32 75)
  br label %if.end53
if.end53:
  call void @putch(i32 10)
  ret i32 0
lor.rhs54:
  store i32 0, i32* %.v152
  %.v153 = load i32, i32* %i3
  %.v154 = load i32, i32* %i3
  %.v155 = icmp slt i32 %.v153, %.v154
  %.v156 = zext i1 %.v155 to i32
  %.v157 = icmp ne i32 %.v156, 0
  br i1 %.v157, label %land.rhs56, label %land.end57
lor.end55:
  %.v167 = load i32, i32* %.v144
  %.v168 = icmp ne i32 %.v167, 0
  br i1 %.v168, label %if.then52, label %if.end53
land.rhs56:
  %.v158 = load i32, i32* %i4
  %.v159 = load i32, i32* %i4
  %.v160 = icmp sge i32 %.v158, %.v159
  %.v161 = zext i1 %.v160 to i32
  %.v162 = icmp ne i32 %.v161, 0
  %.v163 = zext i1 %.v162 to i32
  store i32 %.v163, i32* %.v152
  br label %land.end57
land.end57:
  %.v164 = load i32, i32* %.v152
  %.v165 = icmp ne i32 %.v164, 0
  %.v166 = zext i1 %.v165 to i32
  store i32 %.v166, i32* %.v144
  br label %lor.end55
}

