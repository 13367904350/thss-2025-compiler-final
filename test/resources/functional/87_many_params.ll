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

define void @sort(i32* %arr, i32 %len) {
entry:
  %temp = alloca i32
  %j = alloca i32
  %i = alloca i32
  %len.addr = alloca i32
  %arr.addr = alloca i32*
  store i32* %arr, i32** %arr.addr
  store i32 %len, i32* %len.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = load i32, i32* %len.addr
  %.v3 = sub i32 %.v2, 1
  %.v4 = icmp slt i32 %.v1, %.v3
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %while.body2, label %while.end3
while.body2:
  %.v7 = load i32, i32* %i
  %.v8 = add i32 %.v7, 1
  store i32 %.v8, i32* %j
  br label %while.cond4
while.end3:
  ret void
while.cond4:
  %.v9 = load i32, i32* %j
  %.v10 = load i32, i32* %len.addr
  %.v11 = icmp slt i32 %.v9, %.v10
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %while.body5, label %while.end6
while.body5:
  %.v14 = load i32, i32* %i
  %.v15 = load i32*, i32** %arr.addr
  %.v16 = getelementptr i32, i32* %.v15, i32 %.v14
  %.v17 = load i32, i32* %.v16
  %.v18 = load i32, i32* %j
  %.v19 = load i32*, i32** %arr.addr
  %.v20 = getelementptr i32, i32* %.v19, i32 %.v18
  %.v21 = load i32, i32* %.v20
  %.v22 = icmp slt i32 %.v17, %.v21
  %.v23 = zext i1 %.v22 to i32
  %.v24 = icmp ne i32 %.v23, 0
  br i1 %.v24, label %if.then7, label %if.end8
while.end6:
  %.v42 = load i32, i32* %i
  %.v43 = add i32 %.v42, 1
  store i32 %.v43, i32* %i
  br label %while.cond1
if.then7:
  %.v25 = load i32, i32* %i
  %.v26 = load i32*, i32** %arr.addr
  %.v27 = getelementptr i32, i32* %.v26, i32 %.v25
  %.v28 = load i32, i32* %.v27
  store i32 %.v28, i32* %temp
  %.v29 = load i32, i32* %j
  %.v30 = load i32*, i32** %arr.addr
  %.v31 = getelementptr i32, i32* %.v30, i32 %.v29
  %.v32 = load i32, i32* %.v31
  %.v33 = load i32, i32* %i
  %.v34 = load i32*, i32** %arr.addr
  %.v35 = getelementptr i32, i32* %.v34, i32 %.v33
  store i32 %.v32, i32* %.v35
  %.v36 = load i32, i32* %temp
  %.v37 = load i32, i32* %j
  %.v38 = load i32*, i32** %arr.addr
  %.v39 = getelementptr i32, i32* %.v38, i32 %.v37
  store i32 %.v36, i32* %.v39
  br label %if.end8
if.end8:
  %.v40 = load i32, i32* %j
  %.v41 = add i32 %.v40, 1
  store i32 %.v41, i32* %j
  br label %while.cond4
}

define i32 @param32_rec(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16, i32 %a17, i32 %a18, i32 %a19, i32 %a20, i32 %a21, i32 %a22, i32 %a23, i32 %a24, i32 %a25, i32 %a26, i32 %a27, i32 %a28, i32 %a29, i32 %a30, i32 %a31, i32 %a32) {
entry:
  %a32.addr = alloca i32
  %a31.addr = alloca i32
  %a30.addr = alloca i32
  %a29.addr = alloca i32
  %a28.addr = alloca i32
  %a27.addr = alloca i32
  %a26.addr = alloca i32
  %a25.addr = alloca i32
  %a24.addr = alloca i32
  %a23.addr = alloca i32
  %a22.addr = alloca i32
  %a21.addr = alloca i32
  %a20.addr = alloca i32
  %a19.addr = alloca i32
  %a18.addr = alloca i32
  %a17.addr = alloca i32
  %a16.addr = alloca i32
  %a15.addr = alloca i32
  %a14.addr = alloca i32
  %a13.addr = alloca i32
  %a12.addr = alloca i32
  %a11.addr = alloca i32
  %a10.addr = alloca i32
  %a9.addr = alloca i32
  %a8.addr = alloca i32
  %a7.addr = alloca i32
  %a6.addr = alloca i32
  %a5.addr = alloca i32
  %a4.addr = alloca i32
  %a3.addr = alloca i32
  %a2.addr = alloca i32
  %a1.addr = alloca i32
  store i32 %a1, i32* %a1.addr
  store i32 %a2, i32* %a2.addr
  store i32 %a3, i32* %a3.addr
  store i32 %a4, i32* %a4.addr
  store i32 %a5, i32* %a5.addr
  store i32 %a6, i32* %a6.addr
  store i32 %a7, i32* %a7.addr
  store i32 %a8, i32* %a8.addr
  store i32 %a9, i32* %a9.addr
  store i32 %a10, i32* %a10.addr
  store i32 %a11, i32* %a11.addr
  store i32 %a12, i32* %a12.addr
  store i32 %a13, i32* %a13.addr
  store i32 %a14, i32* %a14.addr
  store i32 %a15, i32* %a15.addr
  store i32 %a16, i32* %a16.addr
  store i32 %a17, i32* %a17.addr
  store i32 %a18, i32* %a18.addr
  store i32 %a19, i32* %a19.addr
  store i32 %a20, i32* %a20.addr
  store i32 %a21, i32* %a21.addr
  store i32 %a22, i32* %a22.addr
  store i32 %a23, i32* %a23.addr
  store i32 %a24, i32* %a24.addr
  store i32 %a25, i32* %a25.addr
  store i32 %a26, i32* %a26.addr
  store i32 %a27, i32* %a27.addr
  store i32 %a28, i32* %a28.addr
  store i32 %a29, i32* %a29.addr
  store i32 %a30, i32* %a30.addr
  store i32 %a31, i32* %a31.addr
  store i32 %a32, i32* %a32.addr
  %.v1 = load i32, i32* %a1.addr
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = load i32, i32* %a2.addr
  ret i32 %.v5
if.else2:
  %.v6 = load i32, i32* %a1.addr
  %.v7 = sub i32 %.v6, 1
  %.v8 = load i32, i32* %a2.addr
  %.v9 = load i32, i32* %a3.addr
  %.v10 = add i32 %.v8, %.v9
  %.v11 = srem i32 %.v10, 998244353
  %.v12 = load i32, i32* %a4.addr
  %.v13 = load i32, i32* %a5.addr
  %.v14 = load i32, i32* %a6.addr
  %.v15 = load i32, i32* %a7.addr
  %.v16 = load i32, i32* %a8.addr
  %.v17 = load i32, i32* %a9.addr
  %.v18 = load i32, i32* %a10.addr
  %.v19 = load i32, i32* %a11.addr
  %.v20 = load i32, i32* %a12.addr
  %.v21 = load i32, i32* %a13.addr
  %.v22 = load i32, i32* %a14.addr
  %.v23 = load i32, i32* %a15.addr
  %.v24 = load i32, i32* %a16.addr
  %.v25 = load i32, i32* %a17.addr
  %.v26 = load i32, i32* %a18.addr
  %.v27 = load i32, i32* %a19.addr
  %.v28 = load i32, i32* %a20.addr
  %.v29 = load i32, i32* %a21.addr
  %.v30 = load i32, i32* %a22.addr
  %.v31 = load i32, i32* %a23.addr
  %.v32 = load i32, i32* %a24.addr
  %.v33 = load i32, i32* %a25.addr
  %.v34 = load i32, i32* %a26.addr
  %.v35 = load i32, i32* %a27.addr
  %.v36 = load i32, i32* %a28.addr
  %.v37 = load i32, i32* %a29.addr
  %.v38 = load i32, i32* %a30.addr
  %.v39 = load i32, i32* %a31.addr
  %.v40 = load i32, i32* %a32.addr
  %.v41 = call i32 @param32_rec(i32 %.v7, i32 %.v11, i32 %.v12, i32 %.v13, i32 %.v14, i32 %.v15, i32 %.v16, i32 %.v17, i32 %.v18, i32 %.v19, i32 %.v20, i32 %.v21, i32 %.v22, i32 %.v23, i32 %.v24, i32 %.v25, i32 %.v26, i32 %.v27, i32 %.v28, i32 %.v29, i32 %.v30, i32 %.v31, i32 %.v32, i32 %.v33, i32 %.v34, i32 %.v35, i32 %.v36, i32 %.v37, i32 %.v38, i32 %.v39, i32 %.v40, i32 0)
  ret i32 %.v41
if.end3:
  ret i32 0
}

define i32 @param32_arr(i32* %a1, i32* %a2, i32* %a3, i32* %a4, i32* %a5, i32* %a6, i32* %a7, i32* %a8, i32* %a9, i32* %a10, i32* %a11, i32* %a12, i32* %a13, i32* %a14, i32* %a15, i32* %a16, i32* %a17, i32* %a18, i32* %a19, i32* %a20, i32* %a21, i32* %a22, i32* %a23, i32* %a24, i32* %a25, i32* %a26, i32* %a27, i32* %a28, i32* %a29, i32* %a30, i32* %a31, i32* %a32) {
entry:
  %sum = alloca i32
  %a32.addr = alloca i32*
  %a31.addr = alloca i32*
  %a30.addr = alloca i32*
  %a29.addr = alloca i32*
  %a28.addr = alloca i32*
  %a27.addr = alloca i32*
  %a26.addr = alloca i32*
  %a25.addr = alloca i32*
  %a24.addr = alloca i32*
  %a23.addr = alloca i32*
  %a22.addr = alloca i32*
  %a21.addr = alloca i32*
  %a20.addr = alloca i32*
  %a19.addr = alloca i32*
  %a18.addr = alloca i32*
  %a17.addr = alloca i32*
  %a16.addr = alloca i32*
  %a15.addr = alloca i32*
  %a14.addr = alloca i32*
  %a13.addr = alloca i32*
  %a12.addr = alloca i32*
  %a11.addr = alloca i32*
  %a10.addr = alloca i32*
  %a9.addr = alloca i32*
  %a8.addr = alloca i32*
  %a7.addr = alloca i32*
  %a6.addr = alloca i32*
  %a5.addr = alloca i32*
  %a4.addr = alloca i32*
  %a3.addr = alloca i32*
  %a2.addr = alloca i32*
  %a1.addr = alloca i32*
  store i32* %a1, i32** %a1.addr
  store i32* %a2, i32** %a2.addr
  store i32* %a3, i32** %a3.addr
  store i32* %a4, i32** %a4.addr
  store i32* %a5, i32** %a5.addr
  store i32* %a6, i32** %a6.addr
  store i32* %a7, i32** %a7.addr
  store i32* %a8, i32** %a8.addr
  store i32* %a9, i32** %a9.addr
  store i32* %a10, i32** %a10.addr
  store i32* %a11, i32** %a11.addr
  store i32* %a12, i32** %a12.addr
  store i32* %a13, i32** %a13.addr
  store i32* %a14, i32** %a14.addr
  store i32* %a15, i32** %a15.addr
  store i32* %a16, i32** %a16.addr
  store i32* %a17, i32** %a17.addr
  store i32* %a18, i32** %a18.addr
  store i32* %a19, i32** %a19.addr
  store i32* %a20, i32** %a20.addr
  store i32* %a21, i32** %a21.addr
  store i32* %a22, i32** %a22.addr
  store i32* %a23, i32** %a23.addr
  store i32* %a24, i32** %a24.addr
  store i32* %a25, i32** %a25.addr
  store i32* %a26, i32** %a26.addr
  store i32* %a27, i32** %a27.addr
  store i32* %a28, i32** %a28.addr
  store i32* %a29, i32** %a29.addr
  store i32* %a30, i32** %a30.addr
  store i32* %a31, i32** %a31.addr
  store i32* %a32, i32** %a32.addr
  %.v1 = load i32*, i32** %a1.addr
  %.v2 = getelementptr i32, i32* %.v1, i32 0
  %.v3 = load i32, i32* %.v2
  %.v4 = load i32*, i32** %a1.addr
  %.v5 = getelementptr i32, i32* %.v4, i32 1
  %.v6 = load i32, i32* %.v5
  %.v7 = add i32 %.v3, %.v6
  store i32 %.v7, i32* %sum
  %.v8 = load i32, i32* %sum
  %.v9 = load i32*, i32** %a2.addr
  %.v10 = getelementptr i32, i32* %.v9, i32 0
  %.v11 = load i32, i32* %.v10
  %.v12 = add i32 %.v8, %.v11
  %.v13 = load i32*, i32** %a2.addr
  %.v14 = getelementptr i32, i32* %.v13, i32 1
  %.v15 = load i32, i32* %.v14
  %.v16 = add i32 %.v12, %.v15
  store i32 %.v16, i32* %sum
  %.v17 = load i32, i32* %sum
  %.v18 = load i32*, i32** %a3.addr
  %.v19 = getelementptr i32, i32* %.v18, i32 0
  %.v20 = load i32, i32* %.v19
  %.v21 = add i32 %.v17, %.v20
  %.v22 = load i32*, i32** %a3.addr
  %.v23 = getelementptr i32, i32* %.v22, i32 1
  %.v24 = load i32, i32* %.v23
  %.v25 = add i32 %.v21, %.v24
  store i32 %.v25, i32* %sum
  %.v26 = load i32, i32* %sum
  %.v27 = load i32*, i32** %a4.addr
  %.v28 = getelementptr i32, i32* %.v27, i32 0
  %.v29 = load i32, i32* %.v28
  %.v30 = add i32 %.v26, %.v29
  %.v31 = load i32*, i32** %a4.addr
  %.v32 = getelementptr i32, i32* %.v31, i32 1
  %.v33 = load i32, i32* %.v32
  %.v34 = add i32 %.v30, %.v33
  store i32 %.v34, i32* %sum
  %.v35 = load i32, i32* %sum
  %.v36 = load i32*, i32** %a5.addr
  %.v37 = getelementptr i32, i32* %.v36, i32 0
  %.v38 = load i32, i32* %.v37
  %.v39 = add i32 %.v35, %.v38
  %.v40 = load i32*, i32** %a5.addr
  %.v41 = getelementptr i32, i32* %.v40, i32 1
  %.v42 = load i32, i32* %.v41
  %.v43 = add i32 %.v39, %.v42
  store i32 %.v43, i32* %sum
  %.v44 = load i32, i32* %sum
  %.v45 = load i32*, i32** %a6.addr
  %.v46 = getelementptr i32, i32* %.v45, i32 0
  %.v47 = load i32, i32* %.v46
  %.v48 = add i32 %.v44, %.v47
  %.v49 = load i32*, i32** %a6.addr
  %.v50 = getelementptr i32, i32* %.v49, i32 1
  %.v51 = load i32, i32* %.v50
  %.v52 = add i32 %.v48, %.v51
  store i32 %.v52, i32* %sum
  %.v53 = load i32, i32* %sum
  %.v54 = load i32*, i32** %a7.addr
  %.v55 = getelementptr i32, i32* %.v54, i32 0
  %.v56 = load i32, i32* %.v55
  %.v57 = add i32 %.v53, %.v56
  %.v58 = load i32*, i32** %a7.addr
  %.v59 = getelementptr i32, i32* %.v58, i32 1
  %.v60 = load i32, i32* %.v59
  %.v61 = add i32 %.v57, %.v60
  store i32 %.v61, i32* %sum
  %.v62 = load i32, i32* %sum
  %.v63 = load i32*, i32** %a8.addr
  %.v64 = getelementptr i32, i32* %.v63, i32 0
  %.v65 = load i32, i32* %.v64
  %.v66 = add i32 %.v62, %.v65
  %.v67 = load i32*, i32** %a8.addr
  %.v68 = getelementptr i32, i32* %.v67, i32 1
  %.v69 = load i32, i32* %.v68
  %.v70 = add i32 %.v66, %.v69
  store i32 %.v70, i32* %sum
  %.v71 = load i32, i32* %sum
  %.v72 = load i32*, i32** %a9.addr
  %.v73 = getelementptr i32, i32* %.v72, i32 0
  %.v74 = load i32, i32* %.v73
  %.v75 = add i32 %.v71, %.v74
  %.v76 = load i32*, i32** %a9.addr
  %.v77 = getelementptr i32, i32* %.v76, i32 1
  %.v78 = load i32, i32* %.v77
  %.v79 = add i32 %.v75, %.v78
  store i32 %.v79, i32* %sum
  %.v80 = load i32, i32* %sum
  %.v81 = load i32*, i32** %a10.addr
  %.v82 = getelementptr i32, i32* %.v81, i32 0
  %.v83 = load i32, i32* %.v82
  %.v84 = add i32 %.v80, %.v83
  %.v85 = load i32*, i32** %a10.addr
  %.v86 = getelementptr i32, i32* %.v85, i32 1
  %.v87 = load i32, i32* %.v86
  %.v88 = add i32 %.v84, %.v87
  store i32 %.v88, i32* %sum
  %.v89 = load i32, i32* %sum
  %.v90 = load i32*, i32** %a11.addr
  %.v91 = getelementptr i32, i32* %.v90, i32 0
  %.v92 = load i32, i32* %.v91
  %.v93 = add i32 %.v89, %.v92
  %.v94 = load i32*, i32** %a11.addr
  %.v95 = getelementptr i32, i32* %.v94, i32 1
  %.v96 = load i32, i32* %.v95
  %.v97 = add i32 %.v93, %.v96
  store i32 %.v97, i32* %sum
  %.v98 = load i32, i32* %sum
  %.v99 = load i32*, i32** %a12.addr
  %.v100 = getelementptr i32, i32* %.v99, i32 0
  %.v101 = load i32, i32* %.v100
  %.v102 = add i32 %.v98, %.v101
  %.v103 = load i32*, i32** %a12.addr
  %.v104 = getelementptr i32, i32* %.v103, i32 1
  %.v105 = load i32, i32* %.v104
  %.v106 = add i32 %.v102, %.v105
  store i32 %.v106, i32* %sum
  %.v107 = load i32, i32* %sum
  %.v108 = load i32*, i32** %a13.addr
  %.v109 = getelementptr i32, i32* %.v108, i32 0
  %.v110 = load i32, i32* %.v109
  %.v111 = add i32 %.v107, %.v110
  %.v112 = load i32*, i32** %a13.addr
  %.v113 = getelementptr i32, i32* %.v112, i32 1
  %.v114 = load i32, i32* %.v113
  %.v115 = add i32 %.v111, %.v114
  store i32 %.v115, i32* %sum
  %.v116 = load i32, i32* %sum
  %.v117 = load i32*, i32** %a14.addr
  %.v118 = getelementptr i32, i32* %.v117, i32 0
  %.v119 = load i32, i32* %.v118
  %.v120 = add i32 %.v116, %.v119
  %.v121 = load i32*, i32** %a14.addr
  %.v122 = getelementptr i32, i32* %.v121, i32 1
  %.v123 = load i32, i32* %.v122
  %.v124 = add i32 %.v120, %.v123
  store i32 %.v124, i32* %sum
  %.v125 = load i32, i32* %sum
  %.v126 = load i32*, i32** %a15.addr
  %.v127 = getelementptr i32, i32* %.v126, i32 0
  %.v128 = load i32, i32* %.v127
  %.v129 = add i32 %.v125, %.v128
  %.v130 = load i32*, i32** %a15.addr
  %.v131 = getelementptr i32, i32* %.v130, i32 1
  %.v132 = load i32, i32* %.v131
  %.v133 = add i32 %.v129, %.v132
  store i32 %.v133, i32* %sum
  %.v134 = load i32, i32* %sum
  %.v135 = load i32*, i32** %a16.addr
  %.v136 = getelementptr i32, i32* %.v135, i32 0
  %.v137 = load i32, i32* %.v136
  %.v138 = add i32 %.v134, %.v137
  %.v139 = load i32*, i32** %a16.addr
  %.v140 = getelementptr i32, i32* %.v139, i32 1
  %.v141 = load i32, i32* %.v140
  %.v142 = add i32 %.v138, %.v141
  store i32 %.v142, i32* %sum
  %.v143 = load i32, i32* %sum
  %.v144 = load i32*, i32** %a17.addr
  %.v145 = getelementptr i32, i32* %.v144, i32 0
  %.v146 = load i32, i32* %.v145
  %.v147 = add i32 %.v143, %.v146
  %.v148 = load i32*, i32** %a17.addr
  %.v149 = getelementptr i32, i32* %.v148, i32 1
  %.v150 = load i32, i32* %.v149
  %.v151 = add i32 %.v147, %.v150
  store i32 %.v151, i32* %sum
  %.v152 = load i32, i32* %sum
  %.v153 = load i32*, i32** %a18.addr
  %.v154 = getelementptr i32, i32* %.v153, i32 0
  %.v155 = load i32, i32* %.v154
  %.v156 = add i32 %.v152, %.v155
  %.v157 = load i32*, i32** %a18.addr
  %.v158 = getelementptr i32, i32* %.v157, i32 1
  %.v159 = load i32, i32* %.v158
  %.v160 = add i32 %.v156, %.v159
  store i32 %.v160, i32* %sum
  %.v161 = load i32, i32* %sum
  %.v162 = load i32*, i32** %a19.addr
  %.v163 = getelementptr i32, i32* %.v162, i32 0
  %.v164 = load i32, i32* %.v163
  %.v165 = add i32 %.v161, %.v164
  %.v166 = load i32*, i32** %a19.addr
  %.v167 = getelementptr i32, i32* %.v166, i32 1
  %.v168 = load i32, i32* %.v167
  %.v169 = add i32 %.v165, %.v168
  store i32 %.v169, i32* %sum
  %.v170 = load i32, i32* %sum
  %.v171 = load i32*, i32** %a20.addr
  %.v172 = getelementptr i32, i32* %.v171, i32 0
  %.v173 = load i32, i32* %.v172
  %.v174 = add i32 %.v170, %.v173
  %.v175 = load i32*, i32** %a20.addr
  %.v176 = getelementptr i32, i32* %.v175, i32 1
  %.v177 = load i32, i32* %.v176
  %.v178 = add i32 %.v174, %.v177
  store i32 %.v178, i32* %sum
  %.v179 = load i32, i32* %sum
  %.v180 = load i32*, i32** %a21.addr
  %.v181 = getelementptr i32, i32* %.v180, i32 0
  %.v182 = load i32, i32* %.v181
  %.v183 = add i32 %.v179, %.v182
  %.v184 = load i32*, i32** %a21.addr
  %.v185 = getelementptr i32, i32* %.v184, i32 1
  %.v186 = load i32, i32* %.v185
  %.v187 = add i32 %.v183, %.v186
  store i32 %.v187, i32* %sum
  %.v188 = load i32, i32* %sum
  %.v189 = load i32*, i32** %a22.addr
  %.v190 = getelementptr i32, i32* %.v189, i32 0
  %.v191 = load i32, i32* %.v190
  %.v192 = add i32 %.v188, %.v191
  %.v193 = load i32*, i32** %a22.addr
  %.v194 = getelementptr i32, i32* %.v193, i32 1
  %.v195 = load i32, i32* %.v194
  %.v196 = add i32 %.v192, %.v195
  store i32 %.v196, i32* %sum
  %.v197 = load i32, i32* %sum
  %.v198 = load i32*, i32** %a23.addr
  %.v199 = getelementptr i32, i32* %.v198, i32 0
  %.v200 = load i32, i32* %.v199
  %.v201 = add i32 %.v197, %.v200
  %.v202 = load i32*, i32** %a23.addr
  %.v203 = getelementptr i32, i32* %.v202, i32 1
  %.v204 = load i32, i32* %.v203
  %.v205 = add i32 %.v201, %.v204
  store i32 %.v205, i32* %sum
  %.v206 = load i32, i32* %sum
  %.v207 = load i32*, i32** %a24.addr
  %.v208 = getelementptr i32, i32* %.v207, i32 0
  %.v209 = load i32, i32* %.v208
  %.v210 = add i32 %.v206, %.v209
  %.v211 = load i32*, i32** %a24.addr
  %.v212 = getelementptr i32, i32* %.v211, i32 1
  %.v213 = load i32, i32* %.v212
  %.v214 = add i32 %.v210, %.v213
  store i32 %.v214, i32* %sum
  %.v215 = load i32, i32* %sum
  %.v216 = load i32*, i32** %a25.addr
  %.v217 = getelementptr i32, i32* %.v216, i32 0
  %.v218 = load i32, i32* %.v217
  %.v219 = add i32 %.v215, %.v218
  %.v220 = load i32*, i32** %a25.addr
  %.v221 = getelementptr i32, i32* %.v220, i32 1
  %.v222 = load i32, i32* %.v221
  %.v223 = add i32 %.v219, %.v222
  store i32 %.v223, i32* %sum
  %.v224 = load i32, i32* %sum
  %.v225 = load i32*, i32** %a26.addr
  %.v226 = getelementptr i32, i32* %.v225, i32 0
  %.v227 = load i32, i32* %.v226
  %.v228 = add i32 %.v224, %.v227
  %.v229 = load i32*, i32** %a26.addr
  %.v230 = getelementptr i32, i32* %.v229, i32 1
  %.v231 = load i32, i32* %.v230
  %.v232 = add i32 %.v228, %.v231
  store i32 %.v232, i32* %sum
  %.v233 = load i32, i32* %sum
  %.v234 = load i32*, i32** %a27.addr
  %.v235 = getelementptr i32, i32* %.v234, i32 0
  %.v236 = load i32, i32* %.v235
  %.v237 = add i32 %.v233, %.v236
  %.v238 = load i32*, i32** %a27.addr
  %.v239 = getelementptr i32, i32* %.v238, i32 1
  %.v240 = load i32, i32* %.v239
  %.v241 = add i32 %.v237, %.v240
  store i32 %.v241, i32* %sum
  %.v242 = load i32, i32* %sum
  %.v243 = load i32*, i32** %a28.addr
  %.v244 = getelementptr i32, i32* %.v243, i32 0
  %.v245 = load i32, i32* %.v244
  %.v246 = add i32 %.v242, %.v245
  %.v247 = load i32*, i32** %a28.addr
  %.v248 = getelementptr i32, i32* %.v247, i32 1
  %.v249 = load i32, i32* %.v248
  %.v250 = add i32 %.v246, %.v249
  store i32 %.v250, i32* %sum
  %.v251 = load i32, i32* %sum
  %.v252 = load i32*, i32** %a29.addr
  %.v253 = getelementptr i32, i32* %.v252, i32 0
  %.v254 = load i32, i32* %.v253
  %.v255 = add i32 %.v251, %.v254
  %.v256 = load i32*, i32** %a29.addr
  %.v257 = getelementptr i32, i32* %.v256, i32 1
  %.v258 = load i32, i32* %.v257
  %.v259 = add i32 %.v255, %.v258
  store i32 %.v259, i32* %sum
  %.v260 = load i32, i32* %sum
  %.v261 = load i32*, i32** %a30.addr
  %.v262 = getelementptr i32, i32* %.v261, i32 0
  %.v263 = load i32, i32* %.v262
  %.v264 = add i32 %.v260, %.v263
  %.v265 = load i32*, i32** %a30.addr
  %.v266 = getelementptr i32, i32* %.v265, i32 1
  %.v267 = load i32, i32* %.v266
  %.v268 = add i32 %.v264, %.v267
  store i32 %.v268, i32* %sum
  %.v269 = load i32, i32* %sum
  %.v270 = load i32*, i32** %a31.addr
  %.v271 = getelementptr i32, i32* %.v270, i32 0
  %.v272 = load i32, i32* %.v271
  %.v273 = add i32 %.v269, %.v272
  %.v274 = load i32*, i32** %a31.addr
  %.v275 = getelementptr i32, i32* %.v274, i32 1
  %.v276 = load i32, i32* %.v275
  %.v277 = add i32 %.v273, %.v276
  store i32 %.v277, i32* %sum
  %.v278 = load i32, i32* %sum
  %.v279 = load i32*, i32** %a32.addr
  %.v280 = getelementptr i32, i32* %.v279, i32 0
  %.v281 = load i32, i32* %.v280
  %.v282 = add i32 %.v278, %.v281
  %.v283 = load i32*, i32** %a32.addr
  %.v284 = getelementptr i32, i32* %.v283, i32 1
  %.v285 = load i32, i32* %.v284
  %.v286 = add i32 %.v282, %.v285
  store i32 %.v286, i32* %sum
  %.v287 = load i32, i32* %sum
  ret i32 %.v287
}

define i32 @param16(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16) {
entry:
  %arr = alloca [16 x i32]
  %a16.addr = alloca i32
  %a15.addr = alloca i32
  %a14.addr = alloca i32
  %a13.addr = alloca i32
  %a12.addr = alloca i32
  %a11.addr = alloca i32
  %a10.addr = alloca i32
  %a9.addr = alloca i32
  %a8.addr = alloca i32
  %a7.addr = alloca i32
  %a6.addr = alloca i32
  %a5.addr = alloca i32
  %a4.addr = alloca i32
  %a3.addr = alloca i32
  %a2.addr = alloca i32
  %a1.addr = alloca i32
  store i32 %a1, i32* %a1.addr
  store i32 %a2, i32* %a2.addr
  store i32 %a3, i32* %a3.addr
  store i32 %a4, i32* %a4.addr
  store i32 %a5, i32* %a5.addr
  store i32 %a6, i32* %a6.addr
  store i32 %a7, i32* %a7.addr
  store i32 %a8, i32* %a8.addr
  store i32 %a9, i32* %a9.addr
  store i32 %a10, i32* %a10.addr
  store i32 %a11, i32* %a11.addr
  store i32 %a12, i32* %a12.addr
  store i32 %a13, i32* %a13.addr
  store i32 %a14, i32* %a14.addr
  store i32 %a15, i32* %a15.addr
  store i32 %a16, i32* %a16.addr
  %.v1 = load i32, i32* %a1.addr
  %t372 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  store i32 %.v1, i32* %t372
  %.v2 = load i32, i32* %a2.addr
  %t374 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 1
  store i32 %.v2, i32* %t374
  %.v3 = load i32, i32* %a3.addr
  %t376 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 2
  store i32 %.v3, i32* %t376
  %.v4 = load i32, i32* %a4.addr
  %t378 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 3
  store i32 %.v4, i32* %t378
  %.v5 = load i32, i32* %a5.addr
  %t380 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 4
  store i32 %.v5, i32* %t380
  %.v6 = load i32, i32* %a6.addr
  %t382 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 5
  store i32 %.v6, i32* %t382
  %.v7 = load i32, i32* %a7.addr
  %t384 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 6
  store i32 %.v7, i32* %t384
  %.v8 = load i32, i32* %a8.addr
  %t386 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 7
  store i32 %.v8, i32* %t386
  %.v9 = load i32, i32* %a9.addr
  %t388 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 8
  store i32 %.v9, i32* %t388
  %.v10 = load i32, i32* %a10.addr
  %t390 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 9
  store i32 %.v10, i32* %t390
  %.v11 = load i32, i32* %a11.addr
  %t392 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 10
  store i32 %.v11, i32* %t392
  %.v12 = load i32, i32* %a12.addr
  %t394 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 11
  store i32 %.v12, i32* %t394
  %.v13 = load i32, i32* %a13.addr
  %t396 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 12
  store i32 %.v13, i32* %t396
  %.v14 = load i32, i32* %a14.addr
  %t398 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 13
  store i32 %.v14, i32* %t398
  %.v15 = load i32, i32* %a15.addr
  %t400 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 14
  store i32 %.v15, i32* %t400
  %.v16 = load i32, i32* %a16.addr
  %t402 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 15
  store i32 %.v16, i32* %t402
  %.v17 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 0
  call void @sort(i32* %.v17, i32 16)
  %t404 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 0
  %.v18 = load i32, i32* %t404
  %t406 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 1
  %.v19 = load i32, i32* %t406
  %t408 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 2
  %.v20 = load i32, i32* %t408
  %t410 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 3
  %.v21 = load i32, i32* %t410
  %t412 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 4
  %.v22 = load i32, i32* %t412
  %t414 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 5
  %.v23 = load i32, i32* %t414
  %t416 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 6
  %.v24 = load i32, i32* %t416
  %t418 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 7
  %.v25 = load i32, i32* %t418
  %t420 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 8
  %.v26 = load i32, i32* %t420
  %t422 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 9
  %.v27 = load i32, i32* %t422
  %t424 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 10
  %.v28 = load i32, i32* %t424
  %t426 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 11
  %.v29 = load i32, i32* %t426
  %t428 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 12
  %.v30 = load i32, i32* %t428
  %t430 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 13
  %.v31 = load i32, i32* %t430
  %t432 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 14
  %.v32 = load i32, i32* %t432
  %t434 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i32 15
  %.v33 = load i32, i32* %t434
  %.v34 = load i32, i32* %a1.addr
  %.v35 = load i32, i32* %a2.addr
  %.v36 = load i32, i32* %a3.addr
  %.v37 = load i32, i32* %a4.addr
  %.v38 = load i32, i32* %a5.addr
  %.v39 = load i32, i32* %a6.addr
  %.v40 = load i32, i32* %a7.addr
  %.v41 = load i32, i32* %a8.addr
  %.v42 = load i32, i32* %a9.addr
  %.v43 = load i32, i32* %a10.addr
  %.v44 = load i32, i32* %a11.addr
  %.v45 = load i32, i32* %a12.addr
  %.v46 = load i32, i32* %a13.addr
  %.v47 = load i32, i32* %a14.addr
  %.v48 = load i32, i32* %a15.addr
  %.v49 = load i32, i32* %a16.addr
  %.v50 = call i32 @param32_rec(i32 %.v18, i32 %.v19, i32 %.v20, i32 %.v21, i32 %.v22, i32 %.v23, i32 %.v24, i32 %.v25, i32 %.v26, i32 %.v27, i32 %.v28, i32 %.v29, i32 %.v30, i32 %.v31, i32 %.v32, i32 %.v33, i32 %.v34, i32 %.v35, i32 %.v36, i32 %.v37, i32 %.v38, i32 %.v39, i32 %.v40, i32 %.v41, i32 %.v42, i32 %.v43, i32 %.v44, i32 %.v45, i32 %.v46, i32 %.v47, i32 %.v48, i32 %.v49)
  ret i32 %.v50
}

define i32 @main() {
entry:
  %i = alloca i32
  %arr = alloca [32 x [2 x i32]]
  %.v1 = call i32 @getint()
  %.v2 = call i32 @getint()
  %.v3 = call i32 @getint()
  %.v4 = call i32 @getint()
  %.v5 = call i32 @getint()
  %.v6 = call i32 @getint()
  %.v7 = call i32 @getint()
  %.v8 = call i32 @getint()
  %.v9 = call i32 @getint()
  %.v10 = call i32 @getint()
  %.v11 = call i32 @getint()
  %.v12 = call i32 @getint()
  %.v13 = call i32 @getint()
  %.v14 = call i32 @getint()
  %.v15 = call i32 @getint()
  %.v16 = call i32 @getint()
  %.v17 = call i32 @param16(i32 %.v1, i32 %.v2, i32 %.v3, i32 %.v4, i32 %.v5, i32 %.v6, i32 %.v7, i32 %.v8, i32 %.v9, i32 %.v10, i32 %.v11, i32 %.v12, i32 %.v13, i32 %.v14, i32 %.v15, i32 %.v16)
  %t470 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0, i64 0
  store i32 %.v17, i32* %t470
  %t471 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0, i64 1
  store i32 8848, i32* %t471
  %t472 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 1, i64 0
  store i32 0, i32* %t472
  %t473 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 1, i64 1
  store i32 0, i32* %t473
  %t474 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 2, i64 0
  store i32 0, i32* %t474
  %t475 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 2, i64 1
  store i32 0, i32* %t475
  %t476 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 3, i64 0
  store i32 0, i32* %t476
  %t477 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 3, i64 1
  store i32 0, i32* %t477
  %t478 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 4, i64 0
  store i32 0, i32* %t478
  %t479 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 4, i64 1
  store i32 0, i32* %t479
  %t480 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 5, i64 0
  store i32 0, i32* %t480
  %t481 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 5, i64 1
  store i32 0, i32* %t481
  %t482 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 6, i64 0
  store i32 0, i32* %t482
  %t483 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 6, i64 1
  store i32 0, i32* %t483
  %t484 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 7, i64 0
  store i32 0, i32* %t484
  %t485 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 7, i64 1
  store i32 0, i32* %t485
  %t486 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 8, i64 0
  store i32 0, i32* %t486
  %t487 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 8, i64 1
  store i32 0, i32* %t487
  %t488 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 9, i64 0
  store i32 0, i32* %t488
  %t489 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 9, i64 1
  store i32 0, i32* %t489
  %t490 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 10, i64 0
  store i32 0, i32* %t490
  %t491 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 10, i64 1
  store i32 0, i32* %t491
  %t492 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 11, i64 0
  store i32 0, i32* %t492
  %t493 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 11, i64 1
  store i32 0, i32* %t493
  %t494 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 12, i64 0
  store i32 0, i32* %t494
  %t495 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 12, i64 1
  store i32 0, i32* %t495
  %t496 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 13, i64 0
  store i32 0, i32* %t496
  %t497 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 13, i64 1
  store i32 0, i32* %t497
  %t498 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 14, i64 0
  store i32 0, i32* %t498
  %t499 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 14, i64 1
  store i32 0, i32* %t499
  %t500 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 15, i64 0
  store i32 0, i32* %t500
  %t501 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 15, i64 1
  store i32 0, i32* %t501
  %t502 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 16, i64 0
  store i32 0, i32* %t502
  %t503 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 16, i64 1
  store i32 0, i32* %t503
  %t504 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 17, i64 0
  store i32 0, i32* %t504
  %t505 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 17, i64 1
  store i32 0, i32* %t505
  %t506 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 18, i64 0
  store i32 0, i32* %t506
  %t507 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 18, i64 1
  store i32 0, i32* %t507
  %t508 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 19, i64 0
  store i32 0, i32* %t508
  %t509 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 19, i64 1
  store i32 0, i32* %t509
  %t510 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 20, i64 0
  store i32 0, i32* %t510
  %t511 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 20, i64 1
  store i32 0, i32* %t511
  %t512 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 21, i64 0
  store i32 0, i32* %t512
  %t513 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 21, i64 1
  store i32 0, i32* %t513
  %t514 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 22, i64 0
  store i32 0, i32* %t514
  %t515 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 22, i64 1
  store i32 0, i32* %t515
  %t516 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 23, i64 0
  store i32 0, i32* %t516
  %t517 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 23, i64 1
  store i32 0, i32* %t517
  %t518 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 24, i64 0
  store i32 0, i32* %t518
  %t519 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 24, i64 1
  store i32 0, i32* %t519
  %t520 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 25, i64 0
  store i32 0, i32* %t520
  %t521 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 25, i64 1
  store i32 0, i32* %t521
  %t522 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 26, i64 0
  store i32 0, i32* %t522
  %t523 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 26, i64 1
  store i32 0, i32* %t523
  %t524 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 27, i64 0
  store i32 0, i32* %t524
  %t525 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 27, i64 1
  store i32 0, i32* %t525
  %t526 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 28, i64 0
  store i32 0, i32* %t526
  %t527 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 28, i64 1
  store i32 0, i32* %t527
  %t528 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 29, i64 0
  store i32 0, i32* %t528
  %t529 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 29, i64 1
  store i32 0, i32* %t529
  %t530 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 30, i64 0
  store i32 0, i32* %t530
  %t531 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 30, i64 1
  store i32 0, i32* %t531
  %t532 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 31, i64 0
  store i32 0, i32* %t532
  %t533 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 31, i64 1
  store i32 0, i32* %t533
  store i32 1, i32* %i
  br label %while.cond1
while.cond1:
  %.v18 = load i32, i32* %i
  %.v19 = icmp slt i32 %.v18, 32
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  br i1 %.v21, label %while.body2, label %while.end3
while.body2:
  %.v22 = load i32, i32* %i
  %.v23 = sub i32 %.v22, 1
  %t540 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 %.v23
  %t541 = getelementptr [2 x i32], [2 x i32]* %t540, i64 0, i32 1
  %.v24 = load i32, i32* %t541
  %.v25 = sub i32 %.v24, 1
  %.v26 = load i32, i32* %i
  %t545 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 %.v26
  %t546 = getelementptr [2 x i32], [2 x i32]* %t545, i64 0, i32 0
  store i32 %.v25, i32* %t546
  %.v27 = load i32, i32* %i
  %.v28 = sub i32 %.v27, 1
  %t549 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 %.v28
  %t550 = getelementptr [2 x i32], [2 x i32]* %t549, i64 0, i32 0
  %.v29 = load i32, i32* %t550
  %.v30 = sub i32 %.v29, 2
  %.v31 = load i32, i32* %i
  %t554 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 %.v31
  %t555 = getelementptr [2 x i32], [2 x i32]* %t554, i64 0, i32 1
  store i32 %.v30, i32* %t555
  %.v32 = load i32, i32* %i
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %i
  br label %while.cond1
while.end3:
  %t558 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 0
  %.v34 = getelementptr [2 x i32], [2 x i32]* %t558, i64 0, i64 0
  %t560 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 1
  %.v35 = getelementptr [2 x i32], [2 x i32]* %t560, i64 0, i64 0
  %t562 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 2
  %.v36 = getelementptr [2 x i32], [2 x i32]* %t562, i64 0, i64 0
  %t564 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 3
  %.v37 = getelementptr [2 x i32], [2 x i32]* %t564, i64 0, i64 0
  %t566 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 4
  %.v38 = getelementptr [2 x i32], [2 x i32]* %t566, i64 0, i64 0
  %t568 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 5
  %.v39 = getelementptr [2 x i32], [2 x i32]* %t568, i64 0, i64 0
  %t570 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 6
  %.v40 = getelementptr [2 x i32], [2 x i32]* %t570, i64 0, i64 0
  %t572 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 7
  %.v41 = getelementptr [2 x i32], [2 x i32]* %t572, i64 0, i64 0
  %t574 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 8
  %.v42 = getelementptr [2 x i32], [2 x i32]* %t574, i64 0, i64 0
  %t576 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 9
  %.v43 = getelementptr [2 x i32], [2 x i32]* %t576, i64 0, i64 0
  %t578 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 10
  %.v44 = getelementptr [2 x i32], [2 x i32]* %t578, i64 0, i64 0
  %t580 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 11
  %.v45 = getelementptr [2 x i32], [2 x i32]* %t580, i64 0, i64 0
  %t582 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 12
  %.v46 = getelementptr [2 x i32], [2 x i32]* %t582, i64 0, i64 0
  %t584 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 13
  %.v47 = getelementptr [2 x i32], [2 x i32]* %t584, i64 0, i64 0
  %t586 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 14
  %.v48 = getelementptr [2 x i32], [2 x i32]* %t586, i64 0, i64 0
  %t588 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 15
  %.v49 = getelementptr [2 x i32], [2 x i32]* %t588, i64 0, i64 0
  %t590 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 16
  %.v50 = getelementptr [2 x i32], [2 x i32]* %t590, i64 0, i64 0
  %t592 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 17
  %.v51 = getelementptr [2 x i32], [2 x i32]* %t592, i64 0, i64 0
  %t594 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 18
  %.v52 = getelementptr [2 x i32], [2 x i32]* %t594, i64 0, i64 0
  %t596 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 19
  %.v53 = getelementptr [2 x i32], [2 x i32]* %t596, i64 0, i64 0
  %t598 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 20
  %.v54 = getelementptr [2 x i32], [2 x i32]* %t598, i64 0, i64 0
  %t600 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 21
  %.v55 = getelementptr [2 x i32], [2 x i32]* %t600, i64 0, i64 0
  %t602 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 22
  %.v56 = getelementptr [2 x i32], [2 x i32]* %t602, i64 0, i64 0
  %t604 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 23
  %.v57 = getelementptr [2 x i32], [2 x i32]* %t604, i64 0, i64 0
  %t606 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 24
  %.v58 = getelementptr [2 x i32], [2 x i32]* %t606, i64 0, i64 0
  %t608 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 25
  %.v59 = getelementptr [2 x i32], [2 x i32]* %t608, i64 0, i64 0
  %t610 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 26
  %.v60 = getelementptr [2 x i32], [2 x i32]* %t610, i64 0, i64 0
  %t612 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 27
  %.v61 = getelementptr [2 x i32], [2 x i32]* %t612, i64 0, i64 0
  %t614 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 28
  %.v62 = getelementptr [2 x i32], [2 x i32]* %t614, i64 0, i64 0
  %t616 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 29
  %.v63 = getelementptr [2 x i32], [2 x i32]* %t616, i64 0, i64 0
  %t618 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 30
  %.v64 = getelementptr [2 x i32], [2 x i32]* %t618, i64 0, i64 0
  %t620 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i32 31
  %.v65 = getelementptr [2 x i32], [2 x i32]* %t620, i64 0, i64 0
  %.v66 = call i32 @param32_arr(i32* %.v34, i32* %.v35, i32* %.v36, i32* %.v37, i32* %.v38, i32* %.v39, i32* %.v40, i32* %.v41, i32* %.v42, i32* %.v43, i32* %.v44, i32* %.v45, i32* %.v46, i32* %.v47, i32* %.v48, i32* %.v49, i32* %.v50, i32* %.v51, i32* %.v52, i32* %.v53, i32* %.v54, i32* %.v55, i32* %.v56, i32* %.v57, i32* %.v58, i32* %.v59, i32* %.v60, i32* %.v61, i32* %.v62, i32* %.v63, i32* %.v64, i32* %.v65)
  call void @putint(i32 %.v66)
  call void @putch(i32 10)
  ret i32 0
}

