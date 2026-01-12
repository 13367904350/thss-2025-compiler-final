declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @sort(i32* %arr, i32 %len) {
entry:
  %t0 = alloca i32
  store i32 %len, i32* %t0
  %t1 = alloca i32
  store i32 0, i32* %t1
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t1
  %v2 = load i32, i32* %t0
  %v3 = sub i32 %v2, 1
  %v4 = icmp slt i32 %v1, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %while.body2, label %while.end3
while.body2:
  %t8 = alloca i32
  %v7 = load i32, i32* %t1
  %v8 = add i32 %v7, 1
  store i32 %v8, i32* %t8
  br label %while.cond4
while.end3:
  ret void
while.cond4:
  %v9 = load i32, i32* %t8
  %v10 = load i32, i32* %t0
  %v11 = icmp slt i32 %v9, %v10
  %v12 = zext i1 %v11 to i32
  %v13 = icmp ne i32 %v12, 0
  br i1 %v13, label %while.body5, label %while.end6
while.body5:
  %v14 = load i32, i32* %t1
  %t17 = getelementptr i32, i32* %arr, i32 %v14
  %v15 = load i32, i32* %t17
  %v16 = load i32, i32* %t8
  %t20 = getelementptr i32, i32* %arr, i32 %v16
  %v17 = load i32, i32* %t20
  %v18 = icmp slt i32 %v15, %v17
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %if.then7, label %if.end8
while.end6:
  %v30 = load i32, i32* %t1
  %v31 = add i32 %v30, 1
  store i32 %v31, i32* %t1
  br label %while.cond1
if.then7:
  %t25 = alloca i32
  %v21 = load i32, i32* %t1
  %t27 = getelementptr i32, i32* %arr, i32 %v21
  %v22 = load i32, i32* %t27
  store i32 %v22, i32* %t25
  %v23 = load i32, i32* %t8
  %t30 = getelementptr i32, i32* %arr, i32 %v23
  %v24 = load i32, i32* %t30
  %v25 = load i32, i32* %t1
  %t33 = getelementptr i32, i32* %arr, i32 %v25
  store i32 %v24, i32* %t33
  %v26 = load i32, i32* %t25
  %v27 = load i32, i32* %t8
  %t36 = getelementptr i32, i32* %arr, i32 %v27
  store i32 %v26, i32* %t36
  br label %if.end8
if.end8:
  %v28 = load i32, i32* %t8
  %v29 = add i32 %v28, 1
  store i32 %v29, i32* %t8
  br label %while.cond4
}

define i32 @param32_rec(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16, i32 %a17, i32 %a18, i32 %a19, i32 %a20, i32 %a21, i32 %a22, i32 %a23, i32 %a24, i32 %a25, i32 %a26, i32 %a27, i32 %a28, i32 %a29, i32 %a30, i32 %a31, i32 %a32) {
entry:
  %t41 = alloca i32
  store i32 %a1, i32* %t41
  %t42 = alloca i32
  store i32 %a2, i32* %t42
  %t43 = alloca i32
  store i32 %a3, i32* %t43
  %t44 = alloca i32
  store i32 %a4, i32* %t44
  %t45 = alloca i32
  store i32 %a5, i32* %t45
  %t46 = alloca i32
  store i32 %a6, i32* %t46
  %t47 = alloca i32
  store i32 %a7, i32* %t47
  %t48 = alloca i32
  store i32 %a8, i32* %t48
  %t49 = alloca i32
  store i32 %a9, i32* %t49
  %t50 = alloca i32
  store i32 %a10, i32* %t50
  %t51 = alloca i32
  store i32 %a11, i32* %t51
  %t52 = alloca i32
  store i32 %a12, i32* %t52
  %t53 = alloca i32
  store i32 %a13, i32* %t53
  %t54 = alloca i32
  store i32 %a14, i32* %t54
  %t55 = alloca i32
  store i32 %a15, i32* %t55
  %t56 = alloca i32
  store i32 %a16, i32* %t56
  %t57 = alloca i32
  store i32 %a17, i32* %t57
  %t58 = alloca i32
  store i32 %a18, i32* %t58
  %t59 = alloca i32
  store i32 %a19, i32* %t59
  %t60 = alloca i32
  store i32 %a20, i32* %t60
  %t61 = alloca i32
  store i32 %a21, i32* %t61
  %t62 = alloca i32
  store i32 %a22, i32* %t62
  %t63 = alloca i32
  store i32 %a23, i32* %t63
  %t64 = alloca i32
  store i32 %a24, i32* %t64
  %t65 = alloca i32
  store i32 %a25, i32* %t65
  %t66 = alloca i32
  store i32 %a26, i32* %t66
  %t67 = alloca i32
  store i32 %a27, i32* %t67
  %t68 = alloca i32
  store i32 %a28, i32* %t68
  %t69 = alloca i32
  store i32 %a29, i32* %t69
  %t70 = alloca i32
  store i32 %a30, i32* %t70
  %t71 = alloca i32
  store i32 %a31, i32* %t71
  %t72 = alloca i32
  store i32 %a32, i32* %t72
  %v1 = load i32, i32* %t41
  %v2 = icmp eq i32 %v1, 0
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %if.then1, label %if.else2
if.then1:
  %v5 = load i32, i32* %t42
  ret i32 %v5
if.else2:
  %v6 = load i32, i32* %t41
  %v7 = sub i32 %v6, 1
  %v8 = load i32, i32* %t42
  %v9 = load i32, i32* %t43
  %v10 = add i32 %v8, %v9
  %v11 = srem i32 %v10, 998244353
  %v12 = load i32, i32* %t44
  %v13 = load i32, i32* %t45
  %v14 = load i32, i32* %t46
  %v15 = load i32, i32* %t47
  %v16 = load i32, i32* %t48
  %v17 = load i32, i32* %t49
  %v18 = load i32, i32* %t50
  %v19 = load i32, i32* %t51
  %v20 = load i32, i32* %t52
  %v21 = load i32, i32* %t53
  %v22 = load i32, i32* %t54
  %v23 = load i32, i32* %t55
  %v24 = load i32, i32* %t56
  %v25 = load i32, i32* %t57
  %v26 = load i32, i32* %t58
  %v27 = load i32, i32* %t59
  %v28 = load i32, i32* %t60
  %v29 = load i32, i32* %t61
  %v30 = load i32, i32* %t62
  %v31 = load i32, i32* %t63
  %v32 = load i32, i32* %t64
  %v33 = load i32, i32* %t65
  %v34 = load i32, i32* %t66
  %v35 = load i32, i32* %t67
  %v36 = load i32, i32* %t68
  %v37 = load i32, i32* %t69
  %v38 = load i32, i32* %t70
  %v39 = load i32, i32* %t71
  %v40 = load i32, i32* %t72
  %v41 = call i32 @param32_rec(i32 %v7, i32 %v11, i32 %v12, i32 %v13, i32 %v14, i32 %v15, i32 %v16, i32 %v17, i32 %v18, i32 %v19, i32 %v20, i32 %v21, i32 %v22, i32 %v23, i32 %v24, i32 %v25, i32 %v26, i32 %v27, i32 %v28, i32 %v29, i32 %v30, i32 %v31, i32 %v32, i32 %v33, i32 %v34, i32 %v35, i32 %v36, i32 %v37, i32 %v38, i32 %v39, i32 %v40, i32 0)
  ret i32 %v41
if.end3:
  ret i32 0
}

define i32 @param32_arr(i32* %a1, i32* %a2, i32* %a3, i32* %a4, i32* %a5, i32* %a6, i32* %a7, i32* %a8, i32* %a9, i32* %a10, i32* %a11, i32* %a12, i32* %a13, i32* %a14, i32* %a15, i32* %a16, i32* %a17, i32* %a18, i32* %a19, i32* %a20, i32* %a21, i32* %a22, i32* %a23, i32* %a24, i32* %a25, i32* %a26, i32* %a27, i32* %a28, i32* %a29, i32* %a30, i32* %a31, i32* %a32) {
entry:
  %t114 = alloca i32
  %t115 = getelementptr i32, i32* %a1, i32 0
  %v1 = load i32, i32* %t115
  %t117 = getelementptr i32, i32* %a1, i32 1
  %v2 = load i32, i32* %t117
  %v3 = add i32 %v1, %v2
  store i32 %v3, i32* %t114
  %v4 = load i32, i32* %t114
  %t121 = getelementptr i32, i32* %a2, i32 0
  %v5 = load i32, i32* %t121
  %v6 = add i32 %v4, %v5
  %t124 = getelementptr i32, i32* %a2, i32 1
  %v7 = load i32, i32* %t124
  %v8 = add i32 %v6, %v7
  store i32 %v8, i32* %t114
  %v9 = load i32, i32* %t114
  %t128 = getelementptr i32, i32* %a3, i32 0
  %v10 = load i32, i32* %t128
  %v11 = add i32 %v9, %v10
  %t131 = getelementptr i32, i32* %a3, i32 1
  %v12 = load i32, i32* %t131
  %v13 = add i32 %v11, %v12
  store i32 %v13, i32* %t114
  %v14 = load i32, i32* %t114
  %t135 = getelementptr i32, i32* %a4, i32 0
  %v15 = load i32, i32* %t135
  %v16 = add i32 %v14, %v15
  %t138 = getelementptr i32, i32* %a4, i32 1
  %v17 = load i32, i32* %t138
  %v18 = add i32 %v16, %v17
  store i32 %v18, i32* %t114
  %v19 = load i32, i32* %t114
  %t142 = getelementptr i32, i32* %a5, i32 0
  %v20 = load i32, i32* %t142
  %v21 = add i32 %v19, %v20
  %t145 = getelementptr i32, i32* %a5, i32 1
  %v22 = load i32, i32* %t145
  %v23 = add i32 %v21, %v22
  store i32 %v23, i32* %t114
  %v24 = load i32, i32* %t114
  %t149 = getelementptr i32, i32* %a6, i32 0
  %v25 = load i32, i32* %t149
  %v26 = add i32 %v24, %v25
  %t152 = getelementptr i32, i32* %a6, i32 1
  %v27 = load i32, i32* %t152
  %v28 = add i32 %v26, %v27
  store i32 %v28, i32* %t114
  %v29 = load i32, i32* %t114
  %t156 = getelementptr i32, i32* %a7, i32 0
  %v30 = load i32, i32* %t156
  %v31 = add i32 %v29, %v30
  %t159 = getelementptr i32, i32* %a7, i32 1
  %v32 = load i32, i32* %t159
  %v33 = add i32 %v31, %v32
  store i32 %v33, i32* %t114
  %v34 = load i32, i32* %t114
  %t163 = getelementptr i32, i32* %a8, i32 0
  %v35 = load i32, i32* %t163
  %v36 = add i32 %v34, %v35
  %t166 = getelementptr i32, i32* %a8, i32 1
  %v37 = load i32, i32* %t166
  %v38 = add i32 %v36, %v37
  store i32 %v38, i32* %t114
  %v39 = load i32, i32* %t114
  %t170 = getelementptr i32, i32* %a9, i32 0
  %v40 = load i32, i32* %t170
  %v41 = add i32 %v39, %v40
  %t173 = getelementptr i32, i32* %a9, i32 1
  %v42 = load i32, i32* %t173
  %v43 = add i32 %v41, %v42
  store i32 %v43, i32* %t114
  %v44 = load i32, i32* %t114
  %t177 = getelementptr i32, i32* %a10, i32 0
  %v45 = load i32, i32* %t177
  %v46 = add i32 %v44, %v45
  %t180 = getelementptr i32, i32* %a10, i32 1
  %v47 = load i32, i32* %t180
  %v48 = add i32 %v46, %v47
  store i32 %v48, i32* %t114
  %v49 = load i32, i32* %t114
  %t184 = getelementptr i32, i32* %a11, i32 0
  %v50 = load i32, i32* %t184
  %v51 = add i32 %v49, %v50
  %t187 = getelementptr i32, i32* %a11, i32 1
  %v52 = load i32, i32* %t187
  %v53 = add i32 %v51, %v52
  store i32 %v53, i32* %t114
  %v54 = load i32, i32* %t114
  %t191 = getelementptr i32, i32* %a12, i32 0
  %v55 = load i32, i32* %t191
  %v56 = add i32 %v54, %v55
  %t194 = getelementptr i32, i32* %a12, i32 1
  %v57 = load i32, i32* %t194
  %v58 = add i32 %v56, %v57
  store i32 %v58, i32* %t114
  %v59 = load i32, i32* %t114
  %t198 = getelementptr i32, i32* %a13, i32 0
  %v60 = load i32, i32* %t198
  %v61 = add i32 %v59, %v60
  %t201 = getelementptr i32, i32* %a13, i32 1
  %v62 = load i32, i32* %t201
  %v63 = add i32 %v61, %v62
  store i32 %v63, i32* %t114
  %v64 = load i32, i32* %t114
  %t205 = getelementptr i32, i32* %a14, i32 0
  %v65 = load i32, i32* %t205
  %v66 = add i32 %v64, %v65
  %t208 = getelementptr i32, i32* %a14, i32 1
  %v67 = load i32, i32* %t208
  %v68 = add i32 %v66, %v67
  store i32 %v68, i32* %t114
  %v69 = load i32, i32* %t114
  %t212 = getelementptr i32, i32* %a15, i32 0
  %v70 = load i32, i32* %t212
  %v71 = add i32 %v69, %v70
  %t215 = getelementptr i32, i32* %a15, i32 1
  %v72 = load i32, i32* %t215
  %v73 = add i32 %v71, %v72
  store i32 %v73, i32* %t114
  %v74 = load i32, i32* %t114
  %t219 = getelementptr i32, i32* %a16, i32 0
  %v75 = load i32, i32* %t219
  %v76 = add i32 %v74, %v75
  %t222 = getelementptr i32, i32* %a16, i32 1
  %v77 = load i32, i32* %t222
  %v78 = add i32 %v76, %v77
  store i32 %v78, i32* %t114
  %v79 = load i32, i32* %t114
  %t226 = getelementptr i32, i32* %a17, i32 0
  %v80 = load i32, i32* %t226
  %v81 = add i32 %v79, %v80
  %t229 = getelementptr i32, i32* %a17, i32 1
  %v82 = load i32, i32* %t229
  %v83 = add i32 %v81, %v82
  store i32 %v83, i32* %t114
  %v84 = load i32, i32* %t114
  %t233 = getelementptr i32, i32* %a18, i32 0
  %v85 = load i32, i32* %t233
  %v86 = add i32 %v84, %v85
  %t236 = getelementptr i32, i32* %a18, i32 1
  %v87 = load i32, i32* %t236
  %v88 = add i32 %v86, %v87
  store i32 %v88, i32* %t114
  %v89 = load i32, i32* %t114
  %t240 = getelementptr i32, i32* %a19, i32 0
  %v90 = load i32, i32* %t240
  %v91 = add i32 %v89, %v90
  %t243 = getelementptr i32, i32* %a19, i32 1
  %v92 = load i32, i32* %t243
  %v93 = add i32 %v91, %v92
  store i32 %v93, i32* %t114
  %v94 = load i32, i32* %t114
  %t247 = getelementptr i32, i32* %a20, i32 0
  %v95 = load i32, i32* %t247
  %v96 = add i32 %v94, %v95
  %t250 = getelementptr i32, i32* %a20, i32 1
  %v97 = load i32, i32* %t250
  %v98 = add i32 %v96, %v97
  store i32 %v98, i32* %t114
  %v99 = load i32, i32* %t114
  %t254 = getelementptr i32, i32* %a21, i32 0
  %v100 = load i32, i32* %t254
  %v101 = add i32 %v99, %v100
  %t257 = getelementptr i32, i32* %a21, i32 1
  %v102 = load i32, i32* %t257
  %v103 = add i32 %v101, %v102
  store i32 %v103, i32* %t114
  %v104 = load i32, i32* %t114
  %t261 = getelementptr i32, i32* %a22, i32 0
  %v105 = load i32, i32* %t261
  %v106 = add i32 %v104, %v105
  %t264 = getelementptr i32, i32* %a22, i32 1
  %v107 = load i32, i32* %t264
  %v108 = add i32 %v106, %v107
  store i32 %v108, i32* %t114
  %v109 = load i32, i32* %t114
  %t268 = getelementptr i32, i32* %a23, i32 0
  %v110 = load i32, i32* %t268
  %v111 = add i32 %v109, %v110
  %t271 = getelementptr i32, i32* %a23, i32 1
  %v112 = load i32, i32* %t271
  %v113 = add i32 %v111, %v112
  store i32 %v113, i32* %t114
  %v114 = load i32, i32* %t114
  %t275 = getelementptr i32, i32* %a24, i32 0
  %v115 = load i32, i32* %t275
  %v116 = add i32 %v114, %v115
  %t278 = getelementptr i32, i32* %a24, i32 1
  %v117 = load i32, i32* %t278
  %v118 = add i32 %v116, %v117
  store i32 %v118, i32* %t114
  %v119 = load i32, i32* %t114
  %t282 = getelementptr i32, i32* %a25, i32 0
  %v120 = load i32, i32* %t282
  %v121 = add i32 %v119, %v120
  %t285 = getelementptr i32, i32* %a25, i32 1
  %v122 = load i32, i32* %t285
  %v123 = add i32 %v121, %v122
  store i32 %v123, i32* %t114
  %v124 = load i32, i32* %t114
  %t289 = getelementptr i32, i32* %a26, i32 0
  %v125 = load i32, i32* %t289
  %v126 = add i32 %v124, %v125
  %t292 = getelementptr i32, i32* %a26, i32 1
  %v127 = load i32, i32* %t292
  %v128 = add i32 %v126, %v127
  store i32 %v128, i32* %t114
  %v129 = load i32, i32* %t114
  %t296 = getelementptr i32, i32* %a27, i32 0
  %v130 = load i32, i32* %t296
  %v131 = add i32 %v129, %v130
  %t299 = getelementptr i32, i32* %a27, i32 1
  %v132 = load i32, i32* %t299
  %v133 = add i32 %v131, %v132
  store i32 %v133, i32* %t114
  %v134 = load i32, i32* %t114
  %t303 = getelementptr i32, i32* %a28, i32 0
  %v135 = load i32, i32* %t303
  %v136 = add i32 %v134, %v135
  %t306 = getelementptr i32, i32* %a28, i32 1
  %v137 = load i32, i32* %t306
  %v138 = add i32 %v136, %v137
  store i32 %v138, i32* %t114
  %v139 = load i32, i32* %t114
  %t310 = getelementptr i32, i32* %a29, i32 0
  %v140 = load i32, i32* %t310
  %v141 = add i32 %v139, %v140
  %t313 = getelementptr i32, i32* %a29, i32 1
  %v142 = load i32, i32* %t313
  %v143 = add i32 %v141, %v142
  store i32 %v143, i32* %t114
  %v144 = load i32, i32* %t114
  %t317 = getelementptr i32, i32* %a30, i32 0
  %v145 = load i32, i32* %t317
  %v146 = add i32 %v144, %v145
  %t320 = getelementptr i32, i32* %a30, i32 1
  %v147 = load i32, i32* %t320
  %v148 = add i32 %v146, %v147
  store i32 %v148, i32* %t114
  %v149 = load i32, i32* %t114
  %t324 = getelementptr i32, i32* %a31, i32 0
  %v150 = load i32, i32* %t324
  %v151 = add i32 %v149, %v150
  %t327 = getelementptr i32, i32* %a31, i32 1
  %v152 = load i32, i32* %t327
  %v153 = add i32 %v151, %v152
  store i32 %v153, i32* %t114
  %v154 = load i32, i32* %t114
  %t331 = getelementptr i32, i32* %a32, i32 0
  %v155 = load i32, i32* %t331
  %v156 = add i32 %v154, %v155
  %t334 = getelementptr i32, i32* %a32, i32 1
  %v157 = load i32, i32* %t334
  %v158 = add i32 %v156, %v157
  store i32 %v158, i32* %t114
  %v159 = load i32, i32* %t114
  ret i32 %v159
}

define i32 @param16(i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i32 %a6, i32 %a7, i32 %a8, i32 %a9, i32 %a10, i32 %a11, i32 %a12, i32 %a13, i32 %a14, i32 %a15, i32 %a16) {
entry:
  %t338 = alloca i32
  store i32 %a1, i32* %t338
  %t339 = alloca i32
  store i32 %a2, i32* %t339
  %t340 = alloca i32
  store i32 %a3, i32* %t340
  %t341 = alloca i32
  store i32 %a4, i32* %t341
  %t342 = alloca i32
  store i32 %a5, i32* %t342
  %t343 = alloca i32
  store i32 %a6, i32* %t343
  %t344 = alloca i32
  store i32 %a7, i32* %t344
  %t345 = alloca i32
  store i32 %a8, i32* %t345
  %t346 = alloca i32
  store i32 %a9, i32* %t346
  %t347 = alloca i32
  store i32 %a10, i32* %t347
  %t348 = alloca i32
  store i32 %a11, i32* %t348
  %t349 = alloca i32
  store i32 %a12, i32* %t349
  %t350 = alloca i32
  store i32 %a13, i32* %t350
  %t351 = alloca i32
  store i32 %a14, i32* %t351
  %t352 = alloca i32
  store i32 %a15, i32* %t352
  %t353 = alloca i32
  store i32 %a16, i32* %t353
  %t354 = alloca [16 x i32]
  %v1 = load i32, i32* %t338
  %t356 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 0
  store i32 %v1, i32* %t356
  %v2 = load i32, i32* %t339
  %t358 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 1
  store i32 %v2, i32* %t358
  %v3 = load i32, i32* %t340
  %t360 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 2
  store i32 %v3, i32* %t360
  %v4 = load i32, i32* %t341
  %t362 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 3
  store i32 %v4, i32* %t362
  %v5 = load i32, i32* %t342
  %t364 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 4
  store i32 %v5, i32* %t364
  %v6 = load i32, i32* %t343
  %t366 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 5
  store i32 %v6, i32* %t366
  %v7 = load i32, i32* %t344
  %t368 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 6
  store i32 %v7, i32* %t368
  %v8 = load i32, i32* %t345
  %t370 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 7
  store i32 %v8, i32* %t370
  %v9 = load i32, i32* %t346
  %t372 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 8
  store i32 %v9, i32* %t372
  %v10 = load i32, i32* %t347
  %t374 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 9
  store i32 %v10, i32* %t374
  %v11 = load i32, i32* %t348
  %t376 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 10
  store i32 %v11, i32* %t376
  %v12 = load i32, i32* %t349
  %t378 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 11
  store i32 %v12, i32* %t378
  %v13 = load i32, i32* %t350
  %t380 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 12
  store i32 %v13, i32* %t380
  %v14 = load i32, i32* %t351
  %t382 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 13
  store i32 %v14, i32* %t382
  %v15 = load i32, i32* %t352
  %t384 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 14
  store i32 %v15, i32* %t384
  %v16 = load i32, i32* %t353
  %t386 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 15
  store i32 %v16, i32* %t386
  %v17 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 0
  call void @sort(i32* %v17, i32 16)
  %t388 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 0
  %v18 = load i32, i32* %t388
  %t390 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 1
  %v19 = load i32, i32* %t390
  %t392 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 2
  %v20 = load i32, i32* %t392
  %t394 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 3
  %v21 = load i32, i32* %t394
  %t396 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 4
  %v22 = load i32, i32* %t396
  %t398 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 5
  %v23 = load i32, i32* %t398
  %t400 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 6
  %v24 = load i32, i32* %t400
  %t402 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 7
  %v25 = load i32, i32* %t402
  %t404 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 8
  %v26 = load i32, i32* %t404
  %t406 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 9
  %v27 = load i32, i32* %t406
  %t408 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 10
  %v28 = load i32, i32* %t408
  %t410 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 11
  %v29 = load i32, i32* %t410
  %t412 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 12
  %v30 = load i32, i32* %t412
  %t414 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 13
  %v31 = load i32, i32* %t414
  %t416 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 14
  %v32 = load i32, i32* %t416
  %t418 = getelementptr [16 x i32], [16 x i32]* %t354, i32 0, i32 15
  %v33 = load i32, i32* %t418
  %v34 = load i32, i32* %t338
  %v35 = load i32, i32* %t339
  %v36 = load i32, i32* %t340
  %v37 = load i32, i32* %t341
  %v38 = load i32, i32* %t342
  %v39 = load i32, i32* %t343
  %v40 = load i32, i32* %t344
  %v41 = load i32, i32* %t345
  %v42 = load i32, i32* %t346
  %v43 = load i32, i32* %t347
  %v44 = load i32, i32* %t348
  %v45 = load i32, i32* %t349
  %v46 = load i32, i32* %t350
  %v47 = load i32, i32* %t351
  %v48 = load i32, i32* %t352
  %v49 = load i32, i32* %t353
  %v50 = call i32 @param32_rec(i32 %v18, i32 %v19, i32 %v20, i32 %v21, i32 %v22, i32 %v23, i32 %v24, i32 %v25, i32 %v26, i32 %v27, i32 %v28, i32 %v29, i32 %v30, i32 %v31, i32 %v32, i32 %v33, i32 %v34, i32 %v35, i32 %v36, i32 %v37, i32 %v38, i32 %v39, i32 %v40, i32 %v41, i32 %v42, i32 %v43, i32 %v44, i32 %v45, i32 %v46, i32 %v47, i32 %v48, i32 %v49)
  ret i32 %v50
}

define i32 @main() {
entry:
  %t437 = alloca [32 x [2 x i32]]
  %v1 = call i32 @getint()
  %v2 = call i32 @getint()
  %v3 = call i32 @getint()
  %v4 = call i32 @getint()
  %v5 = call i32 @getint()
  %v6 = call i32 @getint()
  %v7 = call i32 @getint()
  %v8 = call i32 @getint()
  %v9 = call i32 @getint()
  %v10 = call i32 @getint()
  %v11 = call i32 @getint()
  %v12 = call i32 @getint()
  %v13 = call i32 @getint()
  %v14 = call i32 @getint()
  %v15 = call i32 @getint()
  %v16 = call i32 @getint()
  %v17 = call i32 @param16(i32 %v1, i32 %v2, i32 %v3, i32 %v4, i32 %v5, i32 %v6, i32 %v7, i32 %v8, i32 %v9, i32 %v10, i32 %v11, i32 %v12, i32 %v13, i32 %v14, i32 %v15, i32 %v16)
  %t455 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 0, i32 0
  store i32 %v17, i32* %t455
  %t456 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 0, i32 1
  store i32 8848, i32* %t456
  %t457 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 1, i32 0
  store i32 0, i32* %t457
  %t458 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 1, i32 1
  store i32 0, i32* %t458
  %t459 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 2, i32 0
  store i32 0, i32* %t459
  %t460 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 2, i32 1
  store i32 0, i32* %t460
  %t461 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 3, i32 0
  store i32 0, i32* %t461
  %t462 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 3, i32 1
  store i32 0, i32* %t462
  %t463 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 4, i32 0
  store i32 0, i32* %t463
  %t464 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 4, i32 1
  store i32 0, i32* %t464
  %t465 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 5, i32 0
  store i32 0, i32* %t465
  %t466 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 5, i32 1
  store i32 0, i32* %t466
  %t467 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 6, i32 0
  store i32 0, i32* %t467
  %t468 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 6, i32 1
  store i32 0, i32* %t468
  %t469 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 7, i32 0
  store i32 0, i32* %t469
  %t470 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 7, i32 1
  store i32 0, i32* %t470
  %t471 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 8, i32 0
  store i32 0, i32* %t471
  %t472 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 8, i32 1
  store i32 0, i32* %t472
  %t473 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 9, i32 0
  store i32 0, i32* %t473
  %t474 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 9, i32 1
  store i32 0, i32* %t474
  %t475 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 10, i32 0
  store i32 0, i32* %t475
  %t476 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 10, i32 1
  store i32 0, i32* %t476
  %t477 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 11, i32 0
  store i32 0, i32* %t477
  %t478 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 11, i32 1
  store i32 0, i32* %t478
  %t479 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 12, i32 0
  store i32 0, i32* %t479
  %t480 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 12, i32 1
  store i32 0, i32* %t480
  %t481 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 13, i32 0
  store i32 0, i32* %t481
  %t482 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 13, i32 1
  store i32 0, i32* %t482
  %t483 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 14, i32 0
  store i32 0, i32* %t483
  %t484 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 14, i32 1
  store i32 0, i32* %t484
  %t485 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 15, i32 0
  store i32 0, i32* %t485
  %t486 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 15, i32 1
  store i32 0, i32* %t486
  %t487 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 16, i32 0
  store i32 0, i32* %t487
  %t488 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 16, i32 1
  store i32 0, i32* %t488
  %t489 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 17, i32 0
  store i32 0, i32* %t489
  %t490 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 17, i32 1
  store i32 0, i32* %t490
  %t491 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 18, i32 0
  store i32 0, i32* %t491
  %t492 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 18, i32 1
  store i32 0, i32* %t492
  %t493 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 19, i32 0
  store i32 0, i32* %t493
  %t494 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 19, i32 1
  store i32 0, i32* %t494
  %t495 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 20, i32 0
  store i32 0, i32* %t495
  %t496 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 20, i32 1
  store i32 0, i32* %t496
  %t497 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 21, i32 0
  store i32 0, i32* %t497
  %t498 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 21, i32 1
  store i32 0, i32* %t498
  %t499 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 22, i32 0
  store i32 0, i32* %t499
  %t500 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 22, i32 1
  store i32 0, i32* %t500
  %t501 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 23, i32 0
  store i32 0, i32* %t501
  %t502 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 23, i32 1
  store i32 0, i32* %t502
  %t503 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 24, i32 0
  store i32 0, i32* %t503
  %t504 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 24, i32 1
  store i32 0, i32* %t504
  %t505 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 25, i32 0
  store i32 0, i32* %t505
  %t506 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 25, i32 1
  store i32 0, i32* %t506
  %t507 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 26, i32 0
  store i32 0, i32* %t507
  %t508 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 26, i32 1
  store i32 0, i32* %t508
  %t509 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 27, i32 0
  store i32 0, i32* %t509
  %t510 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 27, i32 1
  store i32 0, i32* %t510
  %t511 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 28, i32 0
  store i32 0, i32* %t511
  %t512 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 28, i32 1
  store i32 0, i32* %t512
  %t513 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 29, i32 0
  store i32 0, i32* %t513
  %t514 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 29, i32 1
  store i32 0, i32* %t514
  %t515 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 30, i32 0
  store i32 0, i32* %t515
  %t516 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 30, i32 1
  store i32 0, i32* %t516
  %t517 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 31, i32 0
  store i32 0, i32* %t517
  %t518 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 31, i32 1
  store i32 0, i32* %t518
  %t519 = alloca i32
  store i32 1, i32* %t519
  br label %while.cond1
while.cond1:
  %v18 = load i32, i32* %t519
  %v19 = icmp slt i32 %v18, 32
  %v20 = zext i1 %v19 to i32
  %v21 = icmp ne i32 %v20, 0
  br i1 %v21, label %while.body2, label %while.end3
while.body2:
  %v22 = load i32, i32* %t519
  %v23 = sub i32 %v22, 1
  %t526 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 %v23, i32 1
  %v24 = load i32, i32* %t526
  %v25 = sub i32 %v24, 1
  %v26 = load i32, i32* %t519
  %t530 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 %v26, i32 0
  store i32 %v25, i32* %t530
  %v27 = load i32, i32* %t519
  %v28 = sub i32 %v27, 1
  %t533 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 %v28, i32 0
  %v29 = load i32, i32* %t533
  %v30 = sub i32 %v29, 2
  %v31 = load i32, i32* %t519
  %t537 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 %v31, i32 1
  store i32 %v30, i32* %t537
  %v32 = load i32, i32* %t519
  %v33 = add i32 %v32, 1
  store i32 %v33, i32* %t519
  br label %while.cond1
while.end3:
  %t540 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 0
  %v34 = getelementptr [2 x i32], [2 x i32]* %t540, i32 0, i32 0
  %t542 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 1
  %v35 = getelementptr [2 x i32], [2 x i32]* %t542, i32 0, i32 0
  %t544 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 2
  %v36 = getelementptr [2 x i32], [2 x i32]* %t544, i32 0, i32 0
  %t546 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 3
  %v37 = getelementptr [2 x i32], [2 x i32]* %t546, i32 0, i32 0
  %t548 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 4
  %v38 = getelementptr [2 x i32], [2 x i32]* %t548, i32 0, i32 0
  %t550 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 5
  %v39 = getelementptr [2 x i32], [2 x i32]* %t550, i32 0, i32 0
  %t552 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 6
  %v40 = getelementptr [2 x i32], [2 x i32]* %t552, i32 0, i32 0
  %t554 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 7
  %v41 = getelementptr [2 x i32], [2 x i32]* %t554, i32 0, i32 0
  %t556 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 8
  %v42 = getelementptr [2 x i32], [2 x i32]* %t556, i32 0, i32 0
  %t558 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 9
  %v43 = getelementptr [2 x i32], [2 x i32]* %t558, i32 0, i32 0
  %t560 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 10
  %v44 = getelementptr [2 x i32], [2 x i32]* %t560, i32 0, i32 0
  %t562 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 11
  %v45 = getelementptr [2 x i32], [2 x i32]* %t562, i32 0, i32 0
  %t564 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 12
  %v46 = getelementptr [2 x i32], [2 x i32]* %t564, i32 0, i32 0
  %t566 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 13
  %v47 = getelementptr [2 x i32], [2 x i32]* %t566, i32 0, i32 0
  %t568 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 14
  %v48 = getelementptr [2 x i32], [2 x i32]* %t568, i32 0, i32 0
  %t570 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 15
  %v49 = getelementptr [2 x i32], [2 x i32]* %t570, i32 0, i32 0
  %t572 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 16
  %v50 = getelementptr [2 x i32], [2 x i32]* %t572, i32 0, i32 0
  %t574 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 17
  %v51 = getelementptr [2 x i32], [2 x i32]* %t574, i32 0, i32 0
  %t576 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 18
  %v52 = getelementptr [2 x i32], [2 x i32]* %t576, i32 0, i32 0
  %t578 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 19
  %v53 = getelementptr [2 x i32], [2 x i32]* %t578, i32 0, i32 0
  %t580 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 20
  %v54 = getelementptr [2 x i32], [2 x i32]* %t580, i32 0, i32 0
  %t582 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 21
  %v55 = getelementptr [2 x i32], [2 x i32]* %t582, i32 0, i32 0
  %t584 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 22
  %v56 = getelementptr [2 x i32], [2 x i32]* %t584, i32 0, i32 0
  %t586 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 23
  %v57 = getelementptr [2 x i32], [2 x i32]* %t586, i32 0, i32 0
  %t588 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 24
  %v58 = getelementptr [2 x i32], [2 x i32]* %t588, i32 0, i32 0
  %t590 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 25
  %v59 = getelementptr [2 x i32], [2 x i32]* %t590, i32 0, i32 0
  %t592 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 26
  %v60 = getelementptr [2 x i32], [2 x i32]* %t592, i32 0, i32 0
  %t594 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 27
  %v61 = getelementptr [2 x i32], [2 x i32]* %t594, i32 0, i32 0
  %t596 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 28
  %v62 = getelementptr [2 x i32], [2 x i32]* %t596, i32 0, i32 0
  %t598 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 29
  %v63 = getelementptr [2 x i32], [2 x i32]* %t598, i32 0, i32 0
  %t600 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 30
  %v64 = getelementptr [2 x i32], [2 x i32]* %t600, i32 0, i32 0
  %t602 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %t437, i32 0, i32 31
  %v65 = getelementptr [2 x i32], [2 x i32]* %t602, i32 0, i32 0
  %v66 = call i32 @param32_arr(i32* %v34, i32* %v35, i32* %v36, i32* %v37, i32* %v38, i32* %v39, i32* %v40, i32* %v41, i32* %v42, i32* %v43, i32* %v44, i32* %v45, i32* %v46, i32* %v47, i32* %v48, i32* %v49, i32* %v50, i32* %v51, i32* %v52, i32* %v53, i32* %v54, i32* %v55, i32* %v56, i32* %v57, i32* %v58, i32* %v59, i32* %v60, i32* %v61, i32* %v62, i32* %v63, i32* %v64, i32* %v65)
  call void @putint(i32 %v66)
  call void @putch(i32 10)
  ret i32 0
}

