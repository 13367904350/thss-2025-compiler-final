@ints = global [10000 x i32] zeroinitializer
@intt = global i32 zeroinitializer
@chas = global [10000 x i32] zeroinitializer
@chat = global i32 zeroinitializer
@i = global i32 zeroinitializer
@ii = global i32 1
@c = global i32 zeroinitializer
@get = global [10000 x i32] zeroinitializer
@get2 = global [10000 x i32] zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @isdigit(i32 %x) {
entry:
  %.v1 = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 0, i32* %.v1
  %.v2 = load i32, i32* %x.addr
  %.v3 = icmp sge i32 %.v2, 48
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %land.rhs3, label %land.end4
if.then1:
  ret i32 1
if.end2:
  ret i32 0
land.rhs3:
  %.v6 = load i32, i32* %x.addr
  %.v7 = icmp sle i32 %.v6, 57
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  store i32 %.v10, i32* %.v1
  br label %land.end4
land.end4:
  %.v11 = load i32, i32* %.v1
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then1, label %if.end2
}

define i32 @power(i32 %b, i32 %a) {
entry:
  %result = alloca i32
  %a.addr = alloca i32
  %b.addr = alloca i32
  store i32 %b, i32* %b.addr
  store i32 %a, i32* %a.addr
  store i32 1, i32* %result
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %a.addr
  %.v2 = icmp ne i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %result
  %.v6 = load i32, i32* %b.addr
  %.v7 = mul i32 %.v5, %.v6
  store i32 %.v7, i32* %result
  %.v8 = load i32, i32* %a.addr
  %.v9 = sub i32 %.v8, 1
  store i32 %.v9, i32* %a.addr
  br label %while.cond1
while.end3:
  %.v10 = load i32, i32* %result
  ret i32 %.v10
}

define i32 @getstr(i32* %get) {
entry:
  %.v2 = alloca i32
  %length = alloca i32
  %x = alloca i32
  %.v1 = call i32 @getch()
  store i32 %.v1, i32* %x
  store i32 0, i32* %length
  br label %while.cond1
while.cond1:
  store i32 0, i32* %.v2
  %.v3 = load i32, i32* %x
  %.v4 = icmp ne i32 %.v3, 13
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp ne i32 %.v5, 0
  br i1 %.v6, label %land.rhs4, label %land.end5
while.body2:
  %.v14 = load i32, i32* %x
  %.v15 = load i32, i32* %length
  %t35 = sext i32 %.v15 to i64
  %t36 = getelementptr i32, i32* %get, i64 %t35
  store i32 %.v14, i32* %t36
  %.v16 = load i32, i32* %length
  %.v17 = add i32 %.v16, 1
  store i32 %.v17, i32* %length
  %.v18 = call i32 @getch()
  store i32 %.v18, i32* %x
  br label %while.cond1
while.end3:
  %.v19 = load i32, i32* %length
  ret i32 %.v19
land.rhs4:
  %.v7 = load i32, i32* %x
  %.v8 = icmp ne i32 %.v7, 10
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  %.v11 = zext i1 %.v10 to i32
  store i32 %.v11, i32* %.v2
  br label %land.end5
land.end5:
  %.v12 = load i32, i32* %.v2
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %while.body2, label %while.end3
}

define void @intpush(i32 %x) {
entry:
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  %.v1 = load i32, i32* @intt
  %.v2 = add i32 %.v1, 1
  store i32 %.v2, i32* @intt
  %.v3 = load i32, i32* %x.addr
  %.v4 = load i32, i32* @intt
  %t45 = sext i32 %.v4 to i64
  %t46 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t45
  store i32 %.v3, i32* %t46
  ret void
}

define void @chapush(i32 %x) {
entry:
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  %.v1 = load i32, i32* @chat
  %.v2 = add i32 %.v1, 1
  store i32 %.v2, i32* @chat
  %.v3 = load i32, i32* %x.addr
  %.v4 = load i32, i32* @chat
  %t51 = sext i32 %.v4 to i64
  %t52 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t51
  store i32 %.v3, i32* %t52
  ret void
}

define i32 @intpop() {
entry:
  %.v1 = load i32, i32* @intt
  %.v2 = sub i32 %.v1, 1
  store i32 %.v2, i32* @intt
  %.v3 = load i32, i32* @intt
  %.v4 = add i32 %.v3, 1
  %t57 = sext i32 %.v4 to i64
  %t58 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t57
  %.v5 = load i32, i32* %t58
  ret i32 %.v5
}

define i32 @chapop() {
entry:
  %.v1 = load i32, i32* @chat
  %.v2 = sub i32 %.v1, 1
  store i32 %.v2, i32* @chat
  %.v3 = load i32, i32* @chat
  %.v4 = add i32 %.v3, 1
  %t64 = sext i32 %.v4 to i64
  %t65 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t64
  %.v5 = load i32, i32* %t65
  ret i32 %.v5
}

define void @intadd(i32 %x) {
entry:
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  %.v1 = load i32, i32* @intt
  %t68 = sext i32 %.v1 to i64
  %t69 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t68
  %.v2 = load i32, i32* %t69
  %.v3 = mul i32 %.v2, 10
  %.v4 = load i32, i32* @intt
  %t73 = sext i32 %.v4 to i64
  %t74 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t73
  store i32 %.v3, i32* %t74
  %.v5 = load i32, i32* @intt
  %t76 = sext i32 %.v5 to i64
  %t77 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t76
  %.v6 = load i32, i32* %t77
  %.v7 = load i32, i32* %x.addr
  %.v8 = add i32 %.v6, %.v7
  %.v9 = load i32, i32* @intt
  %t82 = sext i32 %.v9 to i64
  %t83 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t82
  store i32 %.v8, i32* %t83
  ret void
}

define i32 @find() {
entry:
  %.v1 = call i32 @chapop()
  store i32 %.v1, i32* @c
  %.v2 = load i32, i32* @ii
  %t86 = sext i32 %.v2 to i64
  %t87 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t86
  store i32 32, i32* %t87
  %.v3 = load i32, i32* @c
  %.v4 = load i32, i32* @ii
  %.v5 = add i32 %.v4, 1
  %t91 = sext i32 %.v5 to i64
  %t92 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t91
  store i32 %.v3, i32* %t92
  %.v6 = load i32, i32* @ii
  %.v7 = add i32 %.v6, 2
  store i32 %.v7, i32* @ii
  %.v8 = load i32, i32* @chat
  %.v9 = icmp eq i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then1, label %if.end2
if.then1:
  ret i32 0
if.end2:
  ret i32 1
}

define i32 @main() {
entry:
  %c.1 = alloca i32
  %b = alloca i32
  %a = alloca i32
  %.v313 = alloca i32
  %.v312 = alloca i32
  %.v311 = alloca i32
  %.v310 = alloca i32
  %.v309 = alloca i32
  %c = alloca i32
  %.v253 = alloca i32
  %.v252 = alloca i32
  %.v251 = alloca i32
  %.v212 = alloca i32
  %.v211 = alloca i32
  %.v210 = alloca i32
  %.v171 = alloca i32
  %.v170 = alloca i32
  %.v169 = alloca i32
  %.v114 = alloca i32
  %.v113 = alloca i32
  %.v112 = alloca i32
  %.v111 = alloca i32
  %.v110 = alloca i32
  %.v55 = alloca i32
  %.v54 = alloca i32
  %.v53 = alloca i32
  %.v52 = alloca i32
  %.v51 = alloca i32
  %lengets = alloca i32
  store i32 0, i32* @intt
  store i32 0, i32* @chat
  %.v1 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 0
  %.v2 = call i32 @getstr(i32* %.v1)
  store i32 %.v2, i32* %lengets
  br label %while.cond1
while.cond1:
  %.v3 = load i32, i32* @i
  %.v4 = load i32, i32* %lengets
  %.v5 = icmp slt i32 %.v3, %.v4
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  %.v8 = load i32, i32* @i
  %t107 = sext i32 %.v8 to i64
  %t108 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t107
  %.v9 = load i32, i32* %t108
  %.v10 = call i32 @isdigit(i32 %.v9)
  %.v11 = icmp eq i32 %.v10, 1
  %.v12 = zext i1 %.v11 to i32
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %if.then4, label %if.else5
while.end3:
  br label %while.cond89
if.then4:
  %.v14 = load i32, i32* @i
  %t115 = sext i32 %.v14 to i64
  %t116 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t115
  %.v15 = load i32, i32* %t116
  %.v16 = load i32, i32* @ii
  %t119 = sext i32 %.v16 to i64
  %t120 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t119
  store i32 %.v15, i32* %t120
  %.v17 = load i32, i32* @ii
  %.v18 = add i32 %.v17, 1
  store i32 %.v18, i32* @ii
  br label %if.end6
if.else5:
  %.v19 = load i32, i32* @i
  %t124 = sext i32 %.v19 to i64
  %t125 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t124
  %.v20 = load i32, i32* %t125
  %.v21 = icmp eq i32 %.v20, 40
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %if.then7, label %if.end8
if.end6:
  %.v290 = load i32, i32* @i
  %.v291 = add i32 %.v290, 1
  store i32 %.v291, i32* @i
  br label %while.cond1
if.then7:
  call void @chapush(i32 40)
  br label %if.end8
if.end8:
  %.v24 = load i32, i32* @i
  %t131 = sext i32 %.v24 to i64
  %t132 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t131
  %.v25 = load i32, i32* %t132
  %.v26 = icmp eq i32 %.v25, 94
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %if.then9, label %if.end10
if.then9:
  call void @chapush(i32 94)
  br label %if.end10
if.end10:
  %.v29 = load i32, i32* @i
  %t138 = sext i32 %.v29 to i64
  %t139 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t138
  %.v30 = load i32, i32* %t139
  %.v31 = icmp eq i32 %.v30, 41
  %.v32 = zext i1 %.v31 to i32
  %.v33 = icmp ne i32 %.v32, 0
  br i1 %.v33, label %if.then11, label %if.end12
if.then11:
  %.v34 = call i32 @chapop()
  store i32 %.v34, i32* @c
  br label %while.cond13
if.end12:
  %.v46 = load i32, i32* @i
  %t161 = sext i32 %.v46 to i64
  %t162 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t161
  %.v47 = load i32, i32* %t162
  %.v48 = icmp eq i32 %.v47, 43
  %.v49 = zext i1 %.v48 to i32
  %.v50 = icmp ne i32 %.v49, 0
  br i1 %.v50, label %if.then16, label %if.end17
while.cond13:
  %.v35 = load i32, i32* @c
  %.v36 = icmp ne i32 %.v35, 40
  %.v37 = zext i1 %.v36 to i32
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %while.body14, label %while.end15
while.body14:
  %.v39 = load i32, i32* @ii
  %t150 = sext i32 %.v39 to i64
  %t151 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t150
  store i32 32, i32* %t151
  %.v40 = load i32, i32* @c
  %.v41 = load i32, i32* @ii
  %.v42 = add i32 %.v41, 1
  %t155 = sext i32 %.v42 to i64
  %t156 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t155
  store i32 %.v40, i32* %t156
  %.v43 = load i32, i32* @ii
  %.v44 = add i32 %.v43, 2
  store i32 %.v44, i32* @ii
  %.v45 = call i32 @chapop()
  store i32 %.v45, i32* @c
  br label %while.cond13
while.end15:
  br label %if.end12
if.then16:
  br label %while.cond18
if.end17:
  %.v105 = load i32, i32* @i
  %t229 = sext i32 %.v105 to i64
  %t230 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t229
  %.v106 = load i32, i32* %t230
  %.v107 = icmp eq i32 %.v106, 45
  %.v108 = zext i1 %.v107 to i32
  %.v109 = icmp ne i32 %.v108, 0
  br i1 %.v109, label %if.then33, label %if.end34
while.cond18:
  store i32 1, i32* %.v51
  store i32 1, i32* %.v52
  store i32 1, i32* %.v53
  store i32 1, i32* %.v54
  store i32 1, i32* %.v55
  %.v56 = load i32, i32* @chat
  %t168 = sext i32 %.v56 to i64
  %t169 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t168
  %.v57 = load i32, i32* %t169
  %.v58 = icmp eq i32 %.v57, 43
  %.v59 = zext i1 %.v58 to i32
  %.v60 = icmp ne i32 %.v59, 0
  br i1 %.v60, label %lor.end22, label %lor.rhs21
while.body19:
  %.v101 = call i32 @find()
  %.v102 = icmp eq i32 %.v101, 0
  %.v103 = zext i1 %.v102 to i32
  %.v104 = icmp ne i32 %.v103, 0
  br i1 %.v104, label %if.then31, label %if.end32
while.end20:
  call void @chapush(i32 43)
  br label %if.end17
lor.rhs21:
  %.v61 = load i32, i32* @chat
  %t175 = sext i32 %.v61 to i64
  %t176 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t175
  %.v62 = load i32, i32* %t176
  %.v63 = icmp eq i32 %.v62, 45
  %.v64 = zext i1 %.v63 to i32
  %.v65 = icmp ne i32 %.v64, 0
  %.v66 = zext i1 %.v65 to i32
  store i32 %.v66, i32* %.v55
  br label %lor.end22
lor.end22:
  %.v67 = load i32, i32* %.v55
  %.v68 = icmp ne i32 %.v67, 0
  br i1 %.v68, label %lor.end24, label %lor.rhs23
lor.rhs23:
  %.v69 = load i32, i32* @chat
  %t185 = sext i32 %.v69 to i64
  %t186 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t185
  %.v70 = load i32, i32* %t186
  %.v71 = icmp eq i32 %.v70, 42
  %.v72 = zext i1 %.v71 to i32
  %.v73 = icmp ne i32 %.v72, 0
  %.v74 = zext i1 %.v73 to i32
  store i32 %.v74, i32* %.v54
  br label %lor.end24
lor.end24:
  %.v75 = load i32, i32* %.v54
  %.v76 = icmp ne i32 %.v75, 0
  br i1 %.v76, label %lor.end26, label %lor.rhs25
lor.rhs25:
  %.v77 = load i32, i32* @chat
  %t195 = sext i32 %.v77 to i64
  %t196 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t195
  %.v78 = load i32, i32* %t196
  %.v79 = icmp eq i32 %.v78, 47
  %.v80 = zext i1 %.v79 to i32
  %.v81 = icmp ne i32 %.v80, 0
  %.v82 = zext i1 %.v81 to i32
  store i32 %.v82, i32* %.v53
  br label %lor.end26
lor.end26:
  %.v83 = load i32, i32* %.v53
  %.v84 = icmp ne i32 %.v83, 0
  br i1 %.v84, label %lor.end28, label %lor.rhs27
lor.rhs27:
  %.v85 = load i32, i32* @chat
  %t205 = sext i32 %.v85 to i64
  %t206 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t205
  %.v86 = load i32, i32* %t206
  %.v87 = icmp eq i32 %.v86, 37
  %.v88 = zext i1 %.v87 to i32
  %.v89 = icmp ne i32 %.v88, 0
  %.v90 = zext i1 %.v89 to i32
  store i32 %.v90, i32* %.v52
  br label %lor.end28
lor.end28:
  %.v91 = load i32, i32* %.v52
  %.v92 = icmp ne i32 %.v91, 0
  br i1 %.v92, label %lor.end30, label %lor.rhs29
lor.rhs29:
  %.v93 = load i32, i32* @chat
  %t215 = sext i32 %.v93 to i64
  %t216 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t215
  %.v94 = load i32, i32* %t216
  %.v95 = icmp eq i32 %.v94, 94
  %.v96 = zext i1 %.v95 to i32
  %.v97 = icmp ne i32 %.v96, 0
  %.v98 = zext i1 %.v97 to i32
  store i32 %.v98, i32* %.v51
  br label %lor.end30
lor.end30:
  %.v99 = load i32, i32* %.v51
  %.v100 = icmp ne i32 %.v99, 0
  br i1 %.v100, label %while.body19, label %while.end20
if.then31:
  br label %while.end20
if.end32:
  br label %while.cond18
if.then33:
  br label %while.cond35
if.end34:
  %.v164 = load i32, i32* @i
  %t297 = sext i32 %.v164 to i64
  %t298 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t297
  %.v165 = load i32, i32* %t298
  %.v166 = icmp eq i32 %.v165, 42
  %.v167 = zext i1 %.v166 to i32
  %.v168 = icmp ne i32 %.v167, 0
  br i1 %.v168, label %if.then50, label %if.end51
while.cond35:
  store i32 1, i32* %.v110
  store i32 1, i32* %.v111
  store i32 1, i32* %.v112
  store i32 1, i32* %.v113
  store i32 1, i32* %.v114
  %.v115 = load i32, i32* @chat
  %t236 = sext i32 %.v115 to i64
  %t237 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t236
  %.v116 = load i32, i32* %t237
  %.v117 = icmp eq i32 %.v116, 43
  %.v118 = zext i1 %.v117 to i32
  %.v119 = icmp ne i32 %.v118, 0
  br i1 %.v119, label %lor.end39, label %lor.rhs38
while.body36:
  %.v160 = call i32 @find()
  %.v161 = icmp eq i32 %.v160, 0
  %.v162 = zext i1 %.v161 to i32
  %.v163 = icmp ne i32 %.v162, 0
  br i1 %.v163, label %if.then48, label %if.end49
while.end37:
  call void @chapush(i32 45)
  br label %if.end34
lor.rhs38:
  %.v120 = load i32, i32* @chat
  %t243 = sext i32 %.v120 to i64
  %t244 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t243
  %.v121 = load i32, i32* %t244
  %.v122 = icmp eq i32 %.v121, 45
  %.v123 = zext i1 %.v122 to i32
  %.v124 = icmp ne i32 %.v123, 0
  %.v125 = zext i1 %.v124 to i32
  store i32 %.v125, i32* %.v114
  br label %lor.end39
lor.end39:
  %.v126 = load i32, i32* %.v114
  %.v127 = icmp ne i32 %.v126, 0
  br i1 %.v127, label %lor.end41, label %lor.rhs40
lor.rhs40:
  %.v128 = load i32, i32* @chat
  %t253 = sext i32 %.v128 to i64
  %t254 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t253
  %.v129 = load i32, i32* %t254
  %.v130 = icmp eq i32 %.v129, 42
  %.v131 = zext i1 %.v130 to i32
  %.v132 = icmp ne i32 %.v131, 0
  %.v133 = zext i1 %.v132 to i32
  store i32 %.v133, i32* %.v113
  br label %lor.end41
lor.end41:
  %.v134 = load i32, i32* %.v113
  %.v135 = icmp ne i32 %.v134, 0
  br i1 %.v135, label %lor.end43, label %lor.rhs42
lor.rhs42:
  %.v136 = load i32, i32* @chat
  %t263 = sext i32 %.v136 to i64
  %t264 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t263
  %.v137 = load i32, i32* %t264
  %.v138 = icmp eq i32 %.v137, 47
  %.v139 = zext i1 %.v138 to i32
  %.v140 = icmp ne i32 %.v139, 0
  %.v141 = zext i1 %.v140 to i32
  store i32 %.v141, i32* %.v112
  br label %lor.end43
lor.end43:
  %.v142 = load i32, i32* %.v112
  %.v143 = icmp ne i32 %.v142, 0
  br i1 %.v143, label %lor.end45, label %lor.rhs44
lor.rhs44:
  %.v144 = load i32, i32* @chat
  %t273 = sext i32 %.v144 to i64
  %t274 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t273
  %.v145 = load i32, i32* %t274
  %.v146 = icmp eq i32 %.v145, 37
  %.v147 = zext i1 %.v146 to i32
  %.v148 = icmp ne i32 %.v147, 0
  %.v149 = zext i1 %.v148 to i32
  store i32 %.v149, i32* %.v111
  br label %lor.end45
lor.end45:
  %.v150 = load i32, i32* %.v111
  %.v151 = icmp ne i32 %.v150, 0
  br i1 %.v151, label %lor.end47, label %lor.rhs46
lor.rhs46:
  %.v152 = load i32, i32* @chat
  %t283 = sext i32 %.v152 to i64
  %t284 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t283
  %.v153 = load i32, i32* %t284
  %.v154 = icmp eq i32 %.v153, 94
  %.v155 = zext i1 %.v154 to i32
  %.v156 = icmp ne i32 %.v155, 0
  %.v157 = zext i1 %.v156 to i32
  store i32 %.v157, i32* %.v110
  br label %lor.end47
lor.end47:
  %.v158 = load i32, i32* %.v110
  %.v159 = icmp ne i32 %.v158, 0
  br i1 %.v159, label %while.body36, label %while.end37
if.then48:
  br label %while.end37
if.end49:
  br label %while.cond35
if.then50:
  br label %while.cond52
if.end51:
  %.v205 = load i32, i32* @i
  %t345 = sext i32 %.v205 to i64
  %t346 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t345
  %.v206 = load i32, i32* %t346
  %.v207 = icmp eq i32 %.v206, 47
  %.v208 = zext i1 %.v207 to i32
  %.v209 = icmp ne i32 %.v208, 0
  br i1 %.v209, label %if.then63, label %if.end64
while.cond52:
  store i32 1, i32* %.v169
  store i32 1, i32* %.v170
  store i32 1, i32* %.v171
  %.v172 = load i32, i32* @chat
  %t304 = sext i32 %.v172 to i64
  %t305 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t304
  %.v173 = load i32, i32* %t305
  %.v174 = icmp eq i32 %.v173, 42
  %.v175 = zext i1 %.v174 to i32
  %.v176 = icmp ne i32 %.v175, 0
  br i1 %.v176, label %lor.end56, label %lor.rhs55
while.body53:
  %.v201 = call i32 @find()
  %.v202 = icmp eq i32 %.v201, 0
  %.v203 = zext i1 %.v202 to i32
  %.v204 = icmp ne i32 %.v203, 0
  br i1 %.v204, label %if.then61, label %if.end62
while.end54:
  call void @chapush(i32 42)
  br label %if.end51
lor.rhs55:
  %.v177 = load i32, i32* @chat
  %t311 = sext i32 %.v177 to i64
  %t312 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t311
  %.v178 = load i32, i32* %t312
  %.v179 = icmp eq i32 %.v178, 47
  %.v180 = zext i1 %.v179 to i32
  %.v181 = icmp ne i32 %.v180, 0
  %.v182 = zext i1 %.v181 to i32
  store i32 %.v182, i32* %.v171
  br label %lor.end56
lor.end56:
  %.v183 = load i32, i32* %.v171
  %.v184 = icmp ne i32 %.v183, 0
  br i1 %.v184, label %lor.end58, label %lor.rhs57
lor.rhs57:
  %.v185 = load i32, i32* @chat
  %t321 = sext i32 %.v185 to i64
  %t322 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t321
  %.v186 = load i32, i32* %t322
  %.v187 = icmp eq i32 %.v186, 37
  %.v188 = zext i1 %.v187 to i32
  %.v189 = icmp ne i32 %.v188, 0
  %.v190 = zext i1 %.v189 to i32
  store i32 %.v190, i32* %.v170
  br label %lor.end58
lor.end58:
  %.v191 = load i32, i32* %.v170
  %.v192 = icmp ne i32 %.v191, 0
  br i1 %.v192, label %lor.end60, label %lor.rhs59
lor.rhs59:
  %.v193 = load i32, i32* @chat
  %t331 = sext i32 %.v193 to i64
  %t332 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t331
  %.v194 = load i32, i32* %t332
  %.v195 = icmp eq i32 %.v194, 94
  %.v196 = zext i1 %.v195 to i32
  %.v197 = icmp ne i32 %.v196, 0
  %.v198 = zext i1 %.v197 to i32
  store i32 %.v198, i32* %.v169
  br label %lor.end60
lor.end60:
  %.v199 = load i32, i32* %.v169
  %.v200 = icmp ne i32 %.v199, 0
  br i1 %.v200, label %while.body53, label %while.end54
if.then61:
  br label %while.end54
if.end62:
  br label %while.cond52
if.then63:
  br label %while.cond65
if.end64:
  %.v246 = load i32, i32* @i
  %t393 = sext i32 %.v246 to i64
  %t394 = getelementptr [10000 x i32], [10000 x i32]* @get, i64 0, i64 %t393
  %.v247 = load i32, i32* %t394
  %.v248 = icmp eq i32 %.v247, 37
  %.v249 = zext i1 %.v248 to i32
  %.v250 = icmp ne i32 %.v249, 0
  br i1 %.v250, label %if.then76, label %if.end77
while.cond65:
  store i32 1, i32* %.v210
  store i32 1, i32* %.v211
  store i32 1, i32* %.v212
  %.v213 = load i32, i32* @chat
  %t352 = sext i32 %.v213 to i64
  %t353 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t352
  %.v214 = load i32, i32* %t353
  %.v215 = icmp eq i32 %.v214, 42
  %.v216 = zext i1 %.v215 to i32
  %.v217 = icmp ne i32 %.v216, 0
  br i1 %.v217, label %lor.end69, label %lor.rhs68
while.body66:
  %.v242 = call i32 @find()
  %.v243 = icmp eq i32 %.v242, 0
  %.v244 = zext i1 %.v243 to i32
  %.v245 = icmp ne i32 %.v244, 0
  br i1 %.v245, label %if.then74, label %if.end75
while.end67:
  call void @chapush(i32 47)
  br label %if.end64
lor.rhs68:
  %.v218 = load i32, i32* @chat
  %t359 = sext i32 %.v218 to i64
  %t360 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t359
  %.v219 = load i32, i32* %t360
  %.v220 = icmp eq i32 %.v219, 47
  %.v221 = zext i1 %.v220 to i32
  %.v222 = icmp ne i32 %.v221, 0
  %.v223 = zext i1 %.v222 to i32
  store i32 %.v223, i32* %.v212
  br label %lor.end69
lor.end69:
  %.v224 = load i32, i32* %.v212
  %.v225 = icmp ne i32 %.v224, 0
  br i1 %.v225, label %lor.end71, label %lor.rhs70
lor.rhs70:
  %.v226 = load i32, i32* @chat
  %t369 = sext i32 %.v226 to i64
  %t370 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t369
  %.v227 = load i32, i32* %t370
  %.v228 = icmp eq i32 %.v227, 37
  %.v229 = zext i1 %.v228 to i32
  %.v230 = icmp ne i32 %.v229, 0
  %.v231 = zext i1 %.v230 to i32
  store i32 %.v231, i32* %.v211
  br label %lor.end71
lor.end71:
  %.v232 = load i32, i32* %.v211
  %.v233 = icmp ne i32 %.v232, 0
  br i1 %.v233, label %lor.end73, label %lor.rhs72
lor.rhs72:
  %.v234 = load i32, i32* @chat
  %t379 = sext i32 %.v234 to i64
  %t380 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t379
  %.v235 = load i32, i32* %t380
  %.v236 = icmp eq i32 %.v235, 94
  %.v237 = zext i1 %.v236 to i32
  %.v238 = icmp ne i32 %.v237, 0
  %.v239 = zext i1 %.v238 to i32
  store i32 %.v239, i32* %.v210
  br label %lor.end73
lor.end73:
  %.v240 = load i32, i32* %.v210
  %.v241 = icmp ne i32 %.v240, 0
  br i1 %.v241, label %while.body66, label %while.end67
if.then74:
  br label %while.end67
if.end75:
  br label %while.cond65
if.then76:
  br label %while.cond78
if.end77:
  %.v287 = load i32, i32* @ii
  %t441 = sext i32 %.v287 to i64
  %t442 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t441
  store i32 32, i32* %t442
  %.v288 = load i32, i32* @ii
  %.v289 = add i32 %.v288, 1
  store i32 %.v289, i32* @ii
  br label %if.end6
while.cond78:
  store i32 1, i32* %.v251
  store i32 1, i32* %.v252
  store i32 1, i32* %.v253
  %.v254 = load i32, i32* @chat
  %t400 = sext i32 %.v254 to i64
  %t401 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t400
  %.v255 = load i32, i32* %t401
  %.v256 = icmp eq i32 %.v255, 42
  %.v257 = zext i1 %.v256 to i32
  %.v258 = icmp ne i32 %.v257, 0
  br i1 %.v258, label %lor.end82, label %lor.rhs81
while.body79:
  %.v283 = call i32 @find()
  %.v284 = icmp eq i32 %.v283, 0
  %.v285 = zext i1 %.v284 to i32
  %.v286 = icmp ne i32 %.v285, 0
  br i1 %.v286, label %if.then87, label %if.end88
while.end80:
  call void @chapush(i32 37)
  br label %if.end77
lor.rhs81:
  %.v259 = load i32, i32* @chat
  %t407 = sext i32 %.v259 to i64
  %t408 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t407
  %.v260 = load i32, i32* %t408
  %.v261 = icmp eq i32 %.v260, 47
  %.v262 = zext i1 %.v261 to i32
  %.v263 = icmp ne i32 %.v262, 0
  %.v264 = zext i1 %.v263 to i32
  store i32 %.v264, i32* %.v253
  br label %lor.end82
lor.end82:
  %.v265 = load i32, i32* %.v253
  %.v266 = icmp ne i32 %.v265, 0
  br i1 %.v266, label %lor.end84, label %lor.rhs83
lor.rhs83:
  %.v267 = load i32, i32* @chat
  %t417 = sext i32 %.v267 to i64
  %t418 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t417
  %.v268 = load i32, i32* %t418
  %.v269 = icmp eq i32 %.v268, 37
  %.v270 = zext i1 %.v269 to i32
  %.v271 = icmp ne i32 %.v270, 0
  %.v272 = zext i1 %.v271 to i32
  store i32 %.v272, i32* %.v252
  br label %lor.end84
lor.end84:
  %.v273 = load i32, i32* %.v252
  %.v274 = icmp ne i32 %.v273, 0
  br i1 %.v274, label %lor.end86, label %lor.rhs85
lor.rhs85:
  %.v275 = load i32, i32* @chat
  %t427 = sext i32 %.v275 to i64
  %t428 = getelementptr [10000 x i32], [10000 x i32]* @chas, i64 0, i64 %t427
  %.v276 = load i32, i32* %t428
  %.v277 = icmp eq i32 %.v276, 94
  %.v278 = zext i1 %.v277 to i32
  %.v279 = icmp ne i32 %.v278, 0
  %.v280 = zext i1 %.v279 to i32
  store i32 %.v280, i32* %.v251
  br label %lor.end86
lor.end86:
  %.v281 = load i32, i32* %.v251
  %.v282 = icmp ne i32 %.v281, 0
  br i1 %.v282, label %while.body79, label %while.end80
if.then87:
  br label %while.end80
if.end88:
  br label %while.cond78
while.cond89:
  %.v292 = load i32, i32* @chat
  %.v293 = icmp sgt i32 %.v292, 0
  %.v294 = zext i1 %.v293 to i32
  %.v295 = icmp ne i32 %.v294, 0
  br i1 %.v295, label %while.body90, label %while.end91
while.body90:
  %.v296 = call i32 @chapop()
  store i32 %.v296, i32* %c
  %.v297 = load i32, i32* @ii
  %t453 = sext i32 %.v297 to i64
  %t454 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t453
  store i32 32, i32* %t454
  %.v298 = load i32, i32* %c
  %.v299 = load i32, i32* @ii
  %.v300 = add i32 %.v299, 1
  %t458 = sext i32 %.v300 to i64
  %t459 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t458
  store i32 %.v298, i32* %t459
  %.v301 = load i32, i32* @ii
  %.v302 = add i32 %.v301, 2
  store i32 %.v302, i32* @ii
  br label %while.cond89
while.end91:
  %.v303 = load i32, i32* @ii
  %t463 = sext i32 %.v303 to i64
  %t464 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t463
  store i32 64, i32* %t464
  store i32 1, i32* @i
  br label %while.cond92
while.cond92:
  %.v304 = load i32, i32* @i
  %t466 = sext i32 %.v304 to i64
  %t467 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t466
  %.v305 = load i32, i32* %t467
  %.v306 = icmp ne i32 %.v305, 64
  %.v307 = zext i1 %.v306 to i32
  %.v308 = icmp ne i32 %.v307, 0
  br i1 %.v308, label %while.body93, label %while.end94
while.body93:
  store i32 1, i32* %.v309
  store i32 1, i32* %.v310
  store i32 1, i32* %.v311
  store i32 1, i32* %.v312
  store i32 1, i32* %.v313
  %.v314 = load i32, i32* @i
  %t473 = sext i32 %.v314 to i64
  %t474 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t473
  %.v315 = load i32, i32* %t474
  %.v316 = icmp eq i32 %.v315, 43
  %.v317 = zext i1 %.v316 to i32
  %.v318 = icmp ne i32 %.v317, 0
  br i1 %.v318, label %lor.end99, label %lor.rhs98
while.end94:
  %t628 = sext i32 1 to i64
  %t629 = getelementptr [10000 x i32], [10000 x i32]* @ints, i64 0, i64 %t628
  %.v438 = load i32, i32* %t629
  call void @putint(i32 %.v438)
  ret i32 0
if.then95:
  %.v359 = call i32 @intpop()
  store i32 %.v359, i32* %a
  %.v360 = call i32 @intpop()
  store i32 %.v360, i32* %b
  %.v361 = load i32, i32* @i
  %t532 = sext i32 %.v361 to i64
  %t533 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t532
  %.v362 = load i32, i32* %t533
  %.v363 = icmp eq i32 %.v362, 43
  %.v364 = zext i1 %.v363 to i32
  %.v365 = icmp ne i32 %.v364, 0
  br i1 %.v365, label %if.then108, label %if.end109
if.else96:
  %.v410 = load i32, i32* @i
  %t593 = sext i32 %.v410 to i64
  %t594 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t593
  %.v411 = load i32, i32* %t594
  %.v412 = icmp ne i32 %.v411, 32
  %.v413 = zext i1 %.v412 to i32
  %.v414 = icmp ne i32 %.v413, 0
  br i1 %.v414, label %if.then120, label %if.end121
if.end97:
  %.v436 = load i32, i32* @i
  %.v437 = add i32 %.v436, 1
  store i32 %.v437, i32* @i
  br label %while.cond92
lor.rhs98:
  %.v319 = load i32, i32* @i
  %t480 = sext i32 %.v319 to i64
  %t481 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t480
  %.v320 = load i32, i32* %t481
  %.v321 = icmp eq i32 %.v320, 45
  %.v322 = zext i1 %.v321 to i32
  %.v323 = icmp ne i32 %.v322, 0
  %.v324 = zext i1 %.v323 to i32
  store i32 %.v324, i32* %.v313
  br label %lor.end99
lor.end99:
  %.v325 = load i32, i32* %.v313
  %.v326 = icmp ne i32 %.v325, 0
  br i1 %.v326, label %lor.end101, label %lor.rhs100
lor.rhs100:
  %.v327 = load i32, i32* @i
  %t490 = sext i32 %.v327 to i64
  %t491 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t490
  %.v328 = load i32, i32* %t491
  %.v329 = icmp eq i32 %.v328, 42
  %.v330 = zext i1 %.v329 to i32
  %.v331 = icmp ne i32 %.v330, 0
  %.v332 = zext i1 %.v331 to i32
  store i32 %.v332, i32* %.v312
  br label %lor.end101
lor.end101:
  %.v333 = load i32, i32* %.v312
  %.v334 = icmp ne i32 %.v333, 0
  br i1 %.v334, label %lor.end103, label %lor.rhs102
lor.rhs102:
  %.v335 = load i32, i32* @i
  %t500 = sext i32 %.v335 to i64
  %t501 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t500
  %.v336 = load i32, i32* %t501
  %.v337 = icmp eq i32 %.v336, 47
  %.v338 = zext i1 %.v337 to i32
  %.v339 = icmp ne i32 %.v338, 0
  %.v340 = zext i1 %.v339 to i32
  store i32 %.v340, i32* %.v311
  br label %lor.end103
lor.end103:
  %.v341 = load i32, i32* %.v311
  %.v342 = icmp ne i32 %.v341, 0
  br i1 %.v342, label %lor.end105, label %lor.rhs104
lor.rhs104:
  %.v343 = load i32, i32* @i
  %t510 = sext i32 %.v343 to i64
  %t511 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t510
  %.v344 = load i32, i32* %t511
  %.v345 = icmp eq i32 %.v344, 37
  %.v346 = zext i1 %.v345 to i32
  %.v347 = icmp ne i32 %.v346, 0
  %.v348 = zext i1 %.v347 to i32
  store i32 %.v348, i32* %.v310
  br label %lor.end105
lor.end105:
  %.v349 = load i32, i32* %.v310
  %.v350 = icmp ne i32 %.v349, 0
  br i1 %.v350, label %lor.end107, label %lor.rhs106
lor.rhs106:
  %.v351 = load i32, i32* @i
  %t520 = sext i32 %.v351 to i64
  %t521 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t520
  %.v352 = load i32, i32* %t521
  %.v353 = icmp eq i32 %.v352, 94
  %.v354 = zext i1 %.v353 to i32
  %.v355 = icmp ne i32 %.v354, 0
  %.v356 = zext i1 %.v355 to i32
  store i32 %.v356, i32* %.v309
  br label %lor.end107
lor.end107:
  %.v357 = load i32, i32* %.v309
  %.v358 = icmp ne i32 %.v357, 0
  br i1 %.v358, label %if.then95, label %if.else96
if.then108:
  %.v366 = load i32, i32* %a
  %.v367 = load i32, i32* %b
  %.v368 = add i32 %.v366, %.v367
  store i32 %.v368, i32* %c.1
  br label %if.end109
if.end109:
  %.v369 = load i32, i32* @i
  %t542 = sext i32 %.v369 to i64
  %t543 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t542
  %.v370 = load i32, i32* %t543
  %.v371 = icmp eq i32 %.v370, 45
  %.v372 = zext i1 %.v371 to i32
  %.v373 = icmp ne i32 %.v372, 0
  br i1 %.v373, label %if.then110, label %if.end111
if.then110:
  %.v374 = load i32, i32* %b
  %.v375 = load i32, i32* %a
  %.v376 = sub i32 %.v374, %.v375
  store i32 %.v376, i32* %c.1
  br label %if.end111
if.end111:
  %.v377 = load i32, i32* @i
  %t552 = sext i32 %.v377 to i64
  %t553 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t552
  %.v378 = load i32, i32* %t553
  %.v379 = icmp eq i32 %.v378, 42
  %.v380 = zext i1 %.v379 to i32
  %.v381 = icmp ne i32 %.v380, 0
  br i1 %.v381, label %if.then112, label %if.end113
if.then112:
  %.v382 = load i32, i32* %a
  %.v383 = load i32, i32* %b
  %.v384 = mul i32 %.v382, %.v383
  store i32 %.v384, i32* %c.1
  br label %if.end113
if.end113:
  %.v385 = load i32, i32* @i
  %t562 = sext i32 %.v385 to i64
  %t563 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t562
  %.v386 = load i32, i32* %t563
  %.v387 = icmp eq i32 %.v386, 47
  %.v388 = zext i1 %.v387 to i32
  %.v389 = icmp ne i32 %.v388, 0
  br i1 %.v389, label %if.then114, label %if.end115
if.then114:
  %.v390 = load i32, i32* %b
  %.v391 = load i32, i32* %a
  %.v392 = sdiv i32 %.v390, %.v391
  store i32 %.v392, i32* %c.1
  br label %if.end115
if.end115:
  %.v393 = load i32, i32* @i
  %t572 = sext i32 %.v393 to i64
  %t573 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t572
  %.v394 = load i32, i32* %t573
  %.v395 = icmp eq i32 %.v394, 37
  %.v396 = zext i1 %.v395 to i32
  %.v397 = icmp ne i32 %.v396, 0
  br i1 %.v397, label %if.then116, label %if.end117
if.then116:
  %.v398 = load i32, i32* %b
  %.v399 = load i32, i32* %a
  %.v400 = srem i32 %.v398, %.v399
  store i32 %.v400, i32* %c.1
  br label %if.end117
if.end117:
  %.v401 = load i32, i32* @i
  %t582 = sext i32 %.v401 to i64
  %t583 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t582
  %.v402 = load i32, i32* %t583
  %.v403 = icmp eq i32 %.v402, 94
  %.v404 = zext i1 %.v403 to i32
  %.v405 = icmp ne i32 %.v404, 0
  br i1 %.v405, label %if.then118, label %if.end119
if.then118:
  %.v406 = load i32, i32* %b
  %.v407 = load i32, i32* %a
  %.v408 = call i32 @power(i32 %.v406, i32 %.v407)
  store i32 %.v408, i32* %c.1
  br label %if.end119
if.end119:
  %.v409 = load i32, i32* %c.1
  call void @intpush(i32 %.v409)
  br label %if.end97
if.then120:
  %.v415 = load i32, i32* @i
  %t600 = sext i32 %.v415 to i64
  %t601 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t600
  %.v416 = load i32, i32* %t601
  %.v417 = sub i32 %.v416, 48
  call void @intpush(i32 %.v417)
  store i32 1, i32* @ii
  br label %while.cond122
if.end121:
  br label %if.end97
while.cond122:
  %.v418 = load i32, i32* @i
  %.v419 = load i32, i32* @ii
  %.v420 = add i32 %.v418, %.v419
  %t607 = sext i32 %.v420 to i64
  %t608 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t607
  %.v421 = load i32, i32* %t608
  %.v422 = icmp ne i32 %.v421, 32
  %.v423 = zext i1 %.v422 to i32
  %.v424 = icmp ne i32 %.v423, 0
  br i1 %.v424, label %while.body123, label %while.end124
while.body123:
  %.v425 = load i32, i32* @i
  %.v426 = load i32, i32* @ii
  %.v427 = add i32 %.v425, %.v426
  %t616 = sext i32 %.v427 to i64
  %t617 = getelementptr [10000 x i32], [10000 x i32]* @get2, i64 0, i64 %t616
  %.v428 = load i32, i32* %t617
  %.v429 = sub i32 %.v428, 48
  call void @intadd(i32 %.v429)
  %.v430 = load i32, i32* @ii
  %.v431 = add i32 %.v430, 1
  store i32 %.v431, i32* @ii
  br label %while.cond122
while.end124:
  %.v432 = load i32, i32* @i
  %.v433 = load i32, i32* @ii
  %.v434 = add i32 %.v432, %.v433
  %.v435 = sub i32 %.v434, 1
  store i32 %.v435, i32* @i
  br label %if.end121
}

