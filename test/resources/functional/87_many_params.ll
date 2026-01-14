declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @sort(i32* %arr, i32 %len) {
entry:
  %temp = alloca i32
  %j = alloca i32
  %i = alloca i32
  %len.addr = alloca i32
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
  %t14 = sext i32 %.v14 to i64
  %t15 = getelementptr i32, i32* %arr, i64 %t14
  %.v15 = load i32, i32* %t15
  %.v16 = load i32, i32* %j
  %t18 = sext i32 %.v16 to i64
  %t19 = getelementptr i32, i32* %arr, i64 %t18
  %.v17 = load i32, i32* %t19
  %.v18 = icmp slt i32 %.v15, %.v17
  %.v19 = zext i1 %.v18 to i32
  %.v20 = icmp ne i32 %.v19, 0
  br i1 %.v20, label %if.then7, label %if.end8
while.end6:
  %.v30 = load i32, i32* %i
  %.v31 = add i32 %.v30, 1
  store i32 %.v31, i32* %i
  br label %while.cond1
if.then7:
  %.v21 = load i32, i32* %i
  %t25 = sext i32 %.v21 to i64
  %t26 = getelementptr i32, i32* %arr, i64 %t25
  %.v22 = load i32, i32* %t26
  store i32 %.v22, i32* %temp
  %.v23 = load i32, i32* %j
  %t29 = sext i32 %.v23 to i64
  %t30 = getelementptr i32, i32* %arr, i64 %t29
  %.v24 = load i32, i32* %t30
  %.v25 = load i32, i32* %i
  %t33 = sext i32 %.v25 to i64
  %t34 = getelementptr i32, i32* %arr, i64 %t33
  store i32 %.v24, i32* %t34
  %.v26 = load i32, i32* %temp
  %.v27 = load i32, i32* %j
  %t37 = sext i32 %.v27 to i64
  %t38 = getelementptr i32, i32* %arr, i64 %t37
  store i32 %.v26, i32* %t38
  br label %if.end8
if.end8:
  %.v28 = load i32, i32* %j
  %.v29 = add i32 %.v28, 1
  store i32 %.v29, i32* %j
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
  %t84 = sext i32 0 to i64
  %t85 = getelementptr i32, i32* %a1, i64 %t84
  %.v1 = load i32, i32* %t85
  %t87 = sext i32 1 to i64
  %t88 = getelementptr i32, i32* %a1, i64 %t87
  %.v2 = load i32, i32* %t88
  %.v3 = add i32 %.v1, %.v2
  store i32 %.v3, i32* %sum
  %.v4 = load i32, i32* %sum
  %t92 = sext i32 0 to i64
  %t93 = getelementptr i32, i32* %a2, i64 %t92
  %.v5 = load i32, i32* %t93
  %.v6 = add i32 %.v4, %.v5
  %t96 = sext i32 1 to i64
  %t97 = getelementptr i32, i32* %a2, i64 %t96
  %.v7 = load i32, i32* %t97
  %.v8 = add i32 %.v6, %.v7
  store i32 %.v8, i32* %sum
  %.v9 = load i32, i32* %sum
  %t101 = sext i32 0 to i64
  %t102 = getelementptr i32, i32* %a3, i64 %t101
  %.v10 = load i32, i32* %t102
  %.v11 = add i32 %.v9, %.v10
  %t105 = sext i32 1 to i64
  %t106 = getelementptr i32, i32* %a3, i64 %t105
  %.v12 = load i32, i32* %t106
  %.v13 = add i32 %.v11, %.v12
  store i32 %.v13, i32* %sum
  %.v14 = load i32, i32* %sum
  %t110 = sext i32 0 to i64
  %t111 = getelementptr i32, i32* %a4, i64 %t110
  %.v15 = load i32, i32* %t111
  %.v16 = add i32 %.v14, %.v15
  %t114 = sext i32 1 to i64
  %t115 = getelementptr i32, i32* %a4, i64 %t114
  %.v17 = load i32, i32* %t115
  %.v18 = add i32 %.v16, %.v17
  store i32 %.v18, i32* %sum
  %.v19 = load i32, i32* %sum
  %t119 = sext i32 0 to i64
  %t120 = getelementptr i32, i32* %a5, i64 %t119
  %.v20 = load i32, i32* %t120
  %.v21 = add i32 %.v19, %.v20
  %t123 = sext i32 1 to i64
  %t124 = getelementptr i32, i32* %a5, i64 %t123
  %.v22 = load i32, i32* %t124
  %.v23 = add i32 %.v21, %.v22
  store i32 %.v23, i32* %sum
  %.v24 = load i32, i32* %sum
  %t128 = sext i32 0 to i64
  %t129 = getelementptr i32, i32* %a6, i64 %t128
  %.v25 = load i32, i32* %t129
  %.v26 = add i32 %.v24, %.v25
  %t132 = sext i32 1 to i64
  %t133 = getelementptr i32, i32* %a6, i64 %t132
  %.v27 = load i32, i32* %t133
  %.v28 = add i32 %.v26, %.v27
  store i32 %.v28, i32* %sum
  %.v29 = load i32, i32* %sum
  %t137 = sext i32 0 to i64
  %t138 = getelementptr i32, i32* %a7, i64 %t137
  %.v30 = load i32, i32* %t138
  %.v31 = add i32 %.v29, %.v30
  %t141 = sext i32 1 to i64
  %t142 = getelementptr i32, i32* %a7, i64 %t141
  %.v32 = load i32, i32* %t142
  %.v33 = add i32 %.v31, %.v32
  store i32 %.v33, i32* %sum
  %.v34 = load i32, i32* %sum
  %t146 = sext i32 0 to i64
  %t147 = getelementptr i32, i32* %a8, i64 %t146
  %.v35 = load i32, i32* %t147
  %.v36 = add i32 %.v34, %.v35
  %t150 = sext i32 1 to i64
  %t151 = getelementptr i32, i32* %a8, i64 %t150
  %.v37 = load i32, i32* %t151
  %.v38 = add i32 %.v36, %.v37
  store i32 %.v38, i32* %sum
  %.v39 = load i32, i32* %sum
  %t155 = sext i32 0 to i64
  %t156 = getelementptr i32, i32* %a9, i64 %t155
  %.v40 = load i32, i32* %t156
  %.v41 = add i32 %.v39, %.v40
  %t159 = sext i32 1 to i64
  %t160 = getelementptr i32, i32* %a9, i64 %t159
  %.v42 = load i32, i32* %t160
  %.v43 = add i32 %.v41, %.v42
  store i32 %.v43, i32* %sum
  %.v44 = load i32, i32* %sum
  %t164 = sext i32 0 to i64
  %t165 = getelementptr i32, i32* %a10, i64 %t164
  %.v45 = load i32, i32* %t165
  %.v46 = add i32 %.v44, %.v45
  %t168 = sext i32 1 to i64
  %t169 = getelementptr i32, i32* %a10, i64 %t168
  %.v47 = load i32, i32* %t169
  %.v48 = add i32 %.v46, %.v47
  store i32 %.v48, i32* %sum
  %.v49 = load i32, i32* %sum
  %t173 = sext i32 0 to i64
  %t174 = getelementptr i32, i32* %a11, i64 %t173
  %.v50 = load i32, i32* %t174
  %.v51 = add i32 %.v49, %.v50
  %t177 = sext i32 1 to i64
  %t178 = getelementptr i32, i32* %a11, i64 %t177
  %.v52 = load i32, i32* %t178
  %.v53 = add i32 %.v51, %.v52
  store i32 %.v53, i32* %sum
  %.v54 = load i32, i32* %sum
  %t182 = sext i32 0 to i64
  %t183 = getelementptr i32, i32* %a12, i64 %t182
  %.v55 = load i32, i32* %t183
  %.v56 = add i32 %.v54, %.v55
  %t186 = sext i32 1 to i64
  %t187 = getelementptr i32, i32* %a12, i64 %t186
  %.v57 = load i32, i32* %t187
  %.v58 = add i32 %.v56, %.v57
  store i32 %.v58, i32* %sum
  %.v59 = load i32, i32* %sum
  %t191 = sext i32 0 to i64
  %t192 = getelementptr i32, i32* %a13, i64 %t191
  %.v60 = load i32, i32* %t192
  %.v61 = add i32 %.v59, %.v60
  %t195 = sext i32 1 to i64
  %t196 = getelementptr i32, i32* %a13, i64 %t195
  %.v62 = load i32, i32* %t196
  %.v63 = add i32 %.v61, %.v62
  store i32 %.v63, i32* %sum
  %.v64 = load i32, i32* %sum
  %t200 = sext i32 0 to i64
  %t201 = getelementptr i32, i32* %a14, i64 %t200
  %.v65 = load i32, i32* %t201
  %.v66 = add i32 %.v64, %.v65
  %t204 = sext i32 1 to i64
  %t205 = getelementptr i32, i32* %a14, i64 %t204
  %.v67 = load i32, i32* %t205
  %.v68 = add i32 %.v66, %.v67
  store i32 %.v68, i32* %sum
  %.v69 = load i32, i32* %sum
  %t209 = sext i32 0 to i64
  %t210 = getelementptr i32, i32* %a15, i64 %t209
  %.v70 = load i32, i32* %t210
  %.v71 = add i32 %.v69, %.v70
  %t213 = sext i32 1 to i64
  %t214 = getelementptr i32, i32* %a15, i64 %t213
  %.v72 = load i32, i32* %t214
  %.v73 = add i32 %.v71, %.v72
  store i32 %.v73, i32* %sum
  %.v74 = load i32, i32* %sum
  %t218 = sext i32 0 to i64
  %t219 = getelementptr i32, i32* %a16, i64 %t218
  %.v75 = load i32, i32* %t219
  %.v76 = add i32 %.v74, %.v75
  %t222 = sext i32 1 to i64
  %t223 = getelementptr i32, i32* %a16, i64 %t222
  %.v77 = load i32, i32* %t223
  %.v78 = add i32 %.v76, %.v77
  store i32 %.v78, i32* %sum
  %.v79 = load i32, i32* %sum
  %t227 = sext i32 0 to i64
  %t228 = getelementptr i32, i32* %a17, i64 %t227
  %.v80 = load i32, i32* %t228
  %.v81 = add i32 %.v79, %.v80
  %t231 = sext i32 1 to i64
  %t232 = getelementptr i32, i32* %a17, i64 %t231
  %.v82 = load i32, i32* %t232
  %.v83 = add i32 %.v81, %.v82
  store i32 %.v83, i32* %sum
  %.v84 = load i32, i32* %sum
  %t236 = sext i32 0 to i64
  %t237 = getelementptr i32, i32* %a18, i64 %t236
  %.v85 = load i32, i32* %t237
  %.v86 = add i32 %.v84, %.v85
  %t240 = sext i32 1 to i64
  %t241 = getelementptr i32, i32* %a18, i64 %t240
  %.v87 = load i32, i32* %t241
  %.v88 = add i32 %.v86, %.v87
  store i32 %.v88, i32* %sum
  %.v89 = load i32, i32* %sum
  %t245 = sext i32 0 to i64
  %t246 = getelementptr i32, i32* %a19, i64 %t245
  %.v90 = load i32, i32* %t246
  %.v91 = add i32 %.v89, %.v90
  %t249 = sext i32 1 to i64
  %t250 = getelementptr i32, i32* %a19, i64 %t249
  %.v92 = load i32, i32* %t250
  %.v93 = add i32 %.v91, %.v92
  store i32 %.v93, i32* %sum
  %.v94 = load i32, i32* %sum
  %t254 = sext i32 0 to i64
  %t255 = getelementptr i32, i32* %a20, i64 %t254
  %.v95 = load i32, i32* %t255
  %.v96 = add i32 %.v94, %.v95
  %t258 = sext i32 1 to i64
  %t259 = getelementptr i32, i32* %a20, i64 %t258
  %.v97 = load i32, i32* %t259
  %.v98 = add i32 %.v96, %.v97
  store i32 %.v98, i32* %sum
  %.v99 = load i32, i32* %sum
  %t263 = sext i32 0 to i64
  %t264 = getelementptr i32, i32* %a21, i64 %t263
  %.v100 = load i32, i32* %t264
  %.v101 = add i32 %.v99, %.v100
  %t267 = sext i32 1 to i64
  %t268 = getelementptr i32, i32* %a21, i64 %t267
  %.v102 = load i32, i32* %t268
  %.v103 = add i32 %.v101, %.v102
  store i32 %.v103, i32* %sum
  %.v104 = load i32, i32* %sum
  %t272 = sext i32 0 to i64
  %t273 = getelementptr i32, i32* %a22, i64 %t272
  %.v105 = load i32, i32* %t273
  %.v106 = add i32 %.v104, %.v105
  %t276 = sext i32 1 to i64
  %t277 = getelementptr i32, i32* %a22, i64 %t276
  %.v107 = load i32, i32* %t277
  %.v108 = add i32 %.v106, %.v107
  store i32 %.v108, i32* %sum
  %.v109 = load i32, i32* %sum
  %t281 = sext i32 0 to i64
  %t282 = getelementptr i32, i32* %a23, i64 %t281
  %.v110 = load i32, i32* %t282
  %.v111 = add i32 %.v109, %.v110
  %t285 = sext i32 1 to i64
  %t286 = getelementptr i32, i32* %a23, i64 %t285
  %.v112 = load i32, i32* %t286
  %.v113 = add i32 %.v111, %.v112
  store i32 %.v113, i32* %sum
  %.v114 = load i32, i32* %sum
  %t290 = sext i32 0 to i64
  %t291 = getelementptr i32, i32* %a24, i64 %t290
  %.v115 = load i32, i32* %t291
  %.v116 = add i32 %.v114, %.v115
  %t294 = sext i32 1 to i64
  %t295 = getelementptr i32, i32* %a24, i64 %t294
  %.v117 = load i32, i32* %t295
  %.v118 = add i32 %.v116, %.v117
  store i32 %.v118, i32* %sum
  %.v119 = load i32, i32* %sum
  %t299 = sext i32 0 to i64
  %t300 = getelementptr i32, i32* %a25, i64 %t299
  %.v120 = load i32, i32* %t300
  %.v121 = add i32 %.v119, %.v120
  %t303 = sext i32 1 to i64
  %t304 = getelementptr i32, i32* %a25, i64 %t303
  %.v122 = load i32, i32* %t304
  %.v123 = add i32 %.v121, %.v122
  store i32 %.v123, i32* %sum
  %.v124 = load i32, i32* %sum
  %t308 = sext i32 0 to i64
  %t309 = getelementptr i32, i32* %a26, i64 %t308
  %.v125 = load i32, i32* %t309
  %.v126 = add i32 %.v124, %.v125
  %t312 = sext i32 1 to i64
  %t313 = getelementptr i32, i32* %a26, i64 %t312
  %.v127 = load i32, i32* %t313
  %.v128 = add i32 %.v126, %.v127
  store i32 %.v128, i32* %sum
  %.v129 = load i32, i32* %sum
  %t317 = sext i32 0 to i64
  %t318 = getelementptr i32, i32* %a27, i64 %t317
  %.v130 = load i32, i32* %t318
  %.v131 = add i32 %.v129, %.v130
  %t321 = sext i32 1 to i64
  %t322 = getelementptr i32, i32* %a27, i64 %t321
  %.v132 = load i32, i32* %t322
  %.v133 = add i32 %.v131, %.v132
  store i32 %.v133, i32* %sum
  %.v134 = load i32, i32* %sum
  %t326 = sext i32 0 to i64
  %t327 = getelementptr i32, i32* %a28, i64 %t326
  %.v135 = load i32, i32* %t327
  %.v136 = add i32 %.v134, %.v135
  %t330 = sext i32 1 to i64
  %t331 = getelementptr i32, i32* %a28, i64 %t330
  %.v137 = load i32, i32* %t331
  %.v138 = add i32 %.v136, %.v137
  store i32 %.v138, i32* %sum
  %.v139 = load i32, i32* %sum
  %t335 = sext i32 0 to i64
  %t336 = getelementptr i32, i32* %a29, i64 %t335
  %.v140 = load i32, i32* %t336
  %.v141 = add i32 %.v139, %.v140
  %t339 = sext i32 1 to i64
  %t340 = getelementptr i32, i32* %a29, i64 %t339
  %.v142 = load i32, i32* %t340
  %.v143 = add i32 %.v141, %.v142
  store i32 %.v143, i32* %sum
  %.v144 = load i32, i32* %sum
  %t344 = sext i32 0 to i64
  %t345 = getelementptr i32, i32* %a30, i64 %t344
  %.v145 = load i32, i32* %t345
  %.v146 = add i32 %.v144, %.v145
  %t348 = sext i32 1 to i64
  %t349 = getelementptr i32, i32* %a30, i64 %t348
  %.v147 = load i32, i32* %t349
  %.v148 = add i32 %.v146, %.v147
  store i32 %.v148, i32* %sum
  %.v149 = load i32, i32* %sum
  %t353 = sext i32 0 to i64
  %t354 = getelementptr i32, i32* %a31, i64 %t353
  %.v150 = load i32, i32* %t354
  %.v151 = add i32 %.v149, %.v150
  %t357 = sext i32 1 to i64
  %t358 = getelementptr i32, i32* %a31, i64 %t357
  %.v152 = load i32, i32* %t358
  %.v153 = add i32 %.v151, %.v152
  store i32 %.v153, i32* %sum
  %.v154 = load i32, i32* %sum
  %t362 = sext i32 0 to i64
  %t363 = getelementptr i32, i32* %a32, i64 %t362
  %.v155 = load i32, i32* %t363
  %.v156 = add i32 %.v154, %.v155
  %t366 = sext i32 1 to i64
  %t367 = getelementptr i32, i32* %a32, i64 %t366
  %.v157 = load i32, i32* %t367
  %.v158 = add i32 %.v156, %.v157
  store i32 %.v158, i32* %sum
  %.v159 = load i32, i32* %sum
  ret i32 %.v159
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
  %t404 = sext i32 0 to i64
  %t405 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t404
  %.v18 = load i32, i32* %t405
  %t407 = sext i32 1 to i64
  %t408 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t407
  %.v19 = load i32, i32* %t408
  %t410 = sext i32 2 to i64
  %t411 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t410
  %.v20 = load i32, i32* %t411
  %t413 = sext i32 3 to i64
  %t414 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t413
  %.v21 = load i32, i32* %t414
  %t416 = sext i32 4 to i64
  %t417 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t416
  %.v22 = load i32, i32* %t417
  %t419 = sext i32 5 to i64
  %t420 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t419
  %.v23 = load i32, i32* %t420
  %t422 = sext i32 6 to i64
  %t423 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t422
  %.v24 = load i32, i32* %t423
  %t425 = sext i32 7 to i64
  %t426 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t425
  %.v25 = load i32, i32* %t426
  %t428 = sext i32 8 to i64
  %t429 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t428
  %.v26 = load i32, i32* %t429
  %t431 = sext i32 9 to i64
  %t432 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t431
  %.v27 = load i32, i32* %t432
  %t434 = sext i32 10 to i64
  %t435 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t434
  %.v28 = load i32, i32* %t435
  %t437 = sext i32 11 to i64
  %t438 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t437
  %.v29 = load i32, i32* %t438
  %t440 = sext i32 12 to i64
  %t441 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t440
  %.v30 = load i32, i32* %t441
  %t443 = sext i32 13 to i64
  %t444 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t443
  %.v31 = load i32, i32* %t444
  %t446 = sext i32 14 to i64
  %t447 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t446
  %.v32 = load i32, i32* %t447
  %t449 = sext i32 15 to i64
  %t450 = getelementptr [16 x i32], [16 x i32]* %arr, i64 0, i64 %t449
  %.v33 = load i32, i32* %t450
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
  %t486 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0, i64 0
  store i32 %.v17, i32* %t486
  %t487 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 0, i64 1
  store i32 8848, i32* %t487
  %t488 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 1, i64 0
  store i32 0, i32* %t488
  %t489 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 1, i64 1
  store i32 0, i32* %t489
  %t490 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 2, i64 0
  store i32 0, i32* %t490
  %t491 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 2, i64 1
  store i32 0, i32* %t491
  %t492 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 3, i64 0
  store i32 0, i32* %t492
  %t493 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 3, i64 1
  store i32 0, i32* %t493
  %t494 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 4, i64 0
  store i32 0, i32* %t494
  %t495 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 4, i64 1
  store i32 0, i32* %t495
  %t496 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 5, i64 0
  store i32 0, i32* %t496
  %t497 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 5, i64 1
  store i32 0, i32* %t497
  %t498 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 6, i64 0
  store i32 0, i32* %t498
  %t499 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 6, i64 1
  store i32 0, i32* %t499
  %t500 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 7, i64 0
  store i32 0, i32* %t500
  %t501 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 7, i64 1
  store i32 0, i32* %t501
  %t502 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 8, i64 0
  store i32 0, i32* %t502
  %t503 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 8, i64 1
  store i32 0, i32* %t503
  %t504 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 9, i64 0
  store i32 0, i32* %t504
  %t505 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 9, i64 1
  store i32 0, i32* %t505
  %t506 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 10, i64 0
  store i32 0, i32* %t506
  %t507 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 10, i64 1
  store i32 0, i32* %t507
  %t508 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 11, i64 0
  store i32 0, i32* %t508
  %t509 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 11, i64 1
  store i32 0, i32* %t509
  %t510 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 12, i64 0
  store i32 0, i32* %t510
  %t511 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 12, i64 1
  store i32 0, i32* %t511
  %t512 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 13, i64 0
  store i32 0, i32* %t512
  %t513 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 13, i64 1
  store i32 0, i32* %t513
  %t514 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 14, i64 0
  store i32 0, i32* %t514
  %t515 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 14, i64 1
  store i32 0, i32* %t515
  %t516 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 15, i64 0
  store i32 0, i32* %t516
  %t517 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 15, i64 1
  store i32 0, i32* %t517
  %t518 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 16, i64 0
  store i32 0, i32* %t518
  %t519 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 16, i64 1
  store i32 0, i32* %t519
  %t520 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 17, i64 0
  store i32 0, i32* %t520
  %t521 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 17, i64 1
  store i32 0, i32* %t521
  %t522 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 18, i64 0
  store i32 0, i32* %t522
  %t523 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 18, i64 1
  store i32 0, i32* %t523
  %t524 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 19, i64 0
  store i32 0, i32* %t524
  %t525 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 19, i64 1
  store i32 0, i32* %t525
  %t526 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 20, i64 0
  store i32 0, i32* %t526
  %t527 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 20, i64 1
  store i32 0, i32* %t527
  %t528 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 21, i64 0
  store i32 0, i32* %t528
  %t529 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 21, i64 1
  store i32 0, i32* %t529
  %t530 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 22, i64 0
  store i32 0, i32* %t530
  %t531 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 22, i64 1
  store i32 0, i32* %t531
  %t532 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 23, i64 0
  store i32 0, i32* %t532
  %t533 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 23, i64 1
  store i32 0, i32* %t533
  %t534 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 24, i64 0
  store i32 0, i32* %t534
  %t535 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 24, i64 1
  store i32 0, i32* %t535
  %t536 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 25, i64 0
  store i32 0, i32* %t536
  %t537 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 25, i64 1
  store i32 0, i32* %t537
  %t538 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 26, i64 0
  store i32 0, i32* %t538
  %t539 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 26, i64 1
  store i32 0, i32* %t539
  %t540 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 27, i64 0
  store i32 0, i32* %t540
  %t541 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 27, i64 1
  store i32 0, i32* %t541
  %t542 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 28, i64 0
  store i32 0, i32* %t542
  %t543 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 28, i64 1
  store i32 0, i32* %t543
  %t544 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 29, i64 0
  store i32 0, i32* %t544
  %t545 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 29, i64 1
  store i32 0, i32* %t545
  %t546 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 30, i64 0
  store i32 0, i32* %t546
  %t547 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 30, i64 1
  store i32 0, i32* %t547
  %t548 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 31, i64 0
  store i32 0, i32* %t548
  %t549 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 31, i64 1
  store i32 0, i32* %t549
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
  %t556 = sext i32 %.v23 to i64
  %t557 = sext i32 1 to i64
  %t558 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t556, i64 %t557
  %.v24 = load i32, i32* %t558
  %.v25 = sub i32 %.v24, 1
  %.v26 = load i32, i32* %i
  %t562 = sext i32 %.v26 to i64
  %t563 = sext i32 0 to i64
  %t564 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t562, i64 %t563
  store i32 %.v25, i32* %t564
  %.v27 = load i32, i32* %i
  %.v28 = sub i32 %.v27, 1
  %t567 = sext i32 %.v28 to i64
  %t568 = sext i32 0 to i64
  %t569 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t567, i64 %t568
  %.v29 = load i32, i32* %t569
  %.v30 = sub i32 %.v29, 2
  %.v31 = load i32, i32* %i
  %t573 = sext i32 %.v31 to i64
  %t574 = sext i32 1 to i64
  %t575 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t573, i64 %t574
  store i32 %.v30, i32* %t575
  %.v32 = load i32, i32* %i
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %i
  br label %while.cond1
while.end3:
  %t578 = sext i32 0 to i64
  %t579 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t578
  %.v34 = getelementptr [2 x i32], [2 x i32]* %t579, i32 0, i32 0
  %t581 = sext i32 1 to i64
  %t582 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t581
  %.v35 = getelementptr [2 x i32], [2 x i32]* %t582, i32 0, i32 0
  %t584 = sext i32 2 to i64
  %t585 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t584
  %.v36 = getelementptr [2 x i32], [2 x i32]* %t585, i32 0, i32 0
  %t587 = sext i32 3 to i64
  %t588 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t587
  %.v37 = getelementptr [2 x i32], [2 x i32]* %t588, i32 0, i32 0
  %t590 = sext i32 4 to i64
  %t591 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t590
  %.v38 = getelementptr [2 x i32], [2 x i32]* %t591, i32 0, i32 0
  %t593 = sext i32 5 to i64
  %t594 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t593
  %.v39 = getelementptr [2 x i32], [2 x i32]* %t594, i32 0, i32 0
  %t596 = sext i32 6 to i64
  %t597 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t596
  %.v40 = getelementptr [2 x i32], [2 x i32]* %t597, i32 0, i32 0
  %t599 = sext i32 7 to i64
  %t600 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t599
  %.v41 = getelementptr [2 x i32], [2 x i32]* %t600, i32 0, i32 0
  %t602 = sext i32 8 to i64
  %t603 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t602
  %.v42 = getelementptr [2 x i32], [2 x i32]* %t603, i32 0, i32 0
  %t605 = sext i32 9 to i64
  %t606 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t605
  %.v43 = getelementptr [2 x i32], [2 x i32]* %t606, i32 0, i32 0
  %t608 = sext i32 10 to i64
  %t609 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t608
  %.v44 = getelementptr [2 x i32], [2 x i32]* %t609, i32 0, i32 0
  %t611 = sext i32 11 to i64
  %t612 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t611
  %.v45 = getelementptr [2 x i32], [2 x i32]* %t612, i32 0, i32 0
  %t614 = sext i32 12 to i64
  %t615 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t614
  %.v46 = getelementptr [2 x i32], [2 x i32]* %t615, i32 0, i32 0
  %t617 = sext i32 13 to i64
  %t618 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t617
  %.v47 = getelementptr [2 x i32], [2 x i32]* %t618, i32 0, i32 0
  %t620 = sext i32 14 to i64
  %t621 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t620
  %.v48 = getelementptr [2 x i32], [2 x i32]* %t621, i32 0, i32 0
  %t623 = sext i32 15 to i64
  %t624 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t623
  %.v49 = getelementptr [2 x i32], [2 x i32]* %t624, i32 0, i32 0
  %t626 = sext i32 16 to i64
  %t627 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t626
  %.v50 = getelementptr [2 x i32], [2 x i32]* %t627, i32 0, i32 0
  %t629 = sext i32 17 to i64
  %t630 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t629
  %.v51 = getelementptr [2 x i32], [2 x i32]* %t630, i32 0, i32 0
  %t632 = sext i32 18 to i64
  %t633 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t632
  %.v52 = getelementptr [2 x i32], [2 x i32]* %t633, i32 0, i32 0
  %t635 = sext i32 19 to i64
  %t636 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t635
  %.v53 = getelementptr [2 x i32], [2 x i32]* %t636, i32 0, i32 0
  %t638 = sext i32 20 to i64
  %t639 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t638
  %.v54 = getelementptr [2 x i32], [2 x i32]* %t639, i32 0, i32 0
  %t641 = sext i32 21 to i64
  %t642 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t641
  %.v55 = getelementptr [2 x i32], [2 x i32]* %t642, i32 0, i32 0
  %t644 = sext i32 22 to i64
  %t645 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t644
  %.v56 = getelementptr [2 x i32], [2 x i32]* %t645, i32 0, i32 0
  %t647 = sext i32 23 to i64
  %t648 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t647
  %.v57 = getelementptr [2 x i32], [2 x i32]* %t648, i32 0, i32 0
  %t650 = sext i32 24 to i64
  %t651 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t650
  %.v58 = getelementptr [2 x i32], [2 x i32]* %t651, i32 0, i32 0
  %t653 = sext i32 25 to i64
  %t654 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t653
  %.v59 = getelementptr [2 x i32], [2 x i32]* %t654, i32 0, i32 0
  %t656 = sext i32 26 to i64
  %t657 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t656
  %.v60 = getelementptr [2 x i32], [2 x i32]* %t657, i32 0, i32 0
  %t659 = sext i32 27 to i64
  %t660 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t659
  %.v61 = getelementptr [2 x i32], [2 x i32]* %t660, i32 0, i32 0
  %t662 = sext i32 28 to i64
  %t663 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t662
  %.v62 = getelementptr [2 x i32], [2 x i32]* %t663, i32 0, i32 0
  %t665 = sext i32 29 to i64
  %t666 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t665
  %.v63 = getelementptr [2 x i32], [2 x i32]* %t666, i32 0, i32 0
  %t668 = sext i32 30 to i64
  %t669 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t668
  %.v64 = getelementptr [2 x i32], [2 x i32]* %t669, i32 0, i32 0
  %t671 = sext i32 31 to i64
  %t672 = getelementptr [32 x [2 x i32]], [32 x [2 x i32]]* %arr, i64 0, i64 %t671
  %.v65 = getelementptr [2 x i32], [2 x i32]* %t672, i32 0, i32 0
  %.v66 = call i32 @param32_arr(i32* %.v34, i32* %.v35, i32* %.v36, i32* %.v37, i32* %.v38, i32* %.v39, i32* %.v40, i32* %.v41, i32* %.v42, i32* %.v43, i32* %.v44, i32* %.v45, i32* %.v46, i32* %.v47, i32* %.v48, i32* %.v49, i32* %.v50, i32* %.v51, i32* %.v52, i32* %.v53, i32* %.v54, i32* %.v55, i32* %.v56, i32* %.v57, i32* %.v58, i32* %.v59, i32* %.v60, i32* %.v61, i32* %.v62, i32* %.v63, i32* %.v64, i32* %.v65)
  call void @putint(i32 %.v66)
  call void @putch(i32 10)
  ret i32 0
}

