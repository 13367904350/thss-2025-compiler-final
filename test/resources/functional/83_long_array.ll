@N = constant i32 10000
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @long_array(i32 %k) {
entry:
  %j.1 = alloca i32
  %j = alloca i32
  %ans = alloca i32
  %i = alloca i32
  %a3 = alloca [10000 x i32]
  %a2 = alloca [10000 x i32]
  %a1 = alloca [10000 x i32]
  %k.addr = alloca i32
  store i32 %k, i32* %k.addr
  store i32 0, i32* %i
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 10000
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %i
  %.v6 = load i32, i32* %i
  %.v7 = mul i32 %.v5, %.v6
  %.v8 = srem i32 %.v7, 10
  %.v9 = load i32, i32* %i
  %t9 = sext i32 %.v9 to i64
  %t10 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t9
  store i32 %.v8, i32* %t10
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %i
  br label %while.cond1
while.end3:
  store i32 0, i32* %i
  br label %while.cond4
while.cond4:
  %.v12 = load i32, i32* %i
  %.v13 = icmp slt i32 %.v12, 10000
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %while.body5, label %while.end6
while.body5:
  %.v16 = load i32, i32* %i
  %t18 = sext i32 %.v16 to i64
  %t19 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t18
  %.v17 = load i32, i32* %t19
  %.v18 = load i32, i32* %i
  %t22 = sext i32 %.v18 to i64
  %t23 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t22
  %.v19 = load i32, i32* %t23
  %.v20 = mul i32 %.v17, %.v19
  %.v21 = srem i32 %.v20, 10
  %.v22 = load i32, i32* %i
  %t28 = sext i32 %.v22 to i64
  %t29 = getelementptr [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %t28
  store i32 %.v21, i32* %t29
  %.v23 = load i32, i32* %i
  %.v24 = add i32 %.v23, 1
  store i32 %.v24, i32* %i
  br label %while.cond4
while.end6:
  store i32 0, i32* %i
  br label %while.cond7
while.cond7:
  %.v25 = load i32, i32* %i
  %.v26 = icmp slt i32 %.v25, 10000
  %.v27 = zext i1 %.v26 to i32
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %while.body8, label %while.end9
while.body8:
  %.v29 = load i32, i32* %i
  %t37 = sext i32 %.v29 to i64
  %t38 = getelementptr [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %t37
  %.v30 = load i32, i32* %t38
  %.v31 = load i32, i32* %i
  %t41 = sext i32 %.v31 to i64
  %t42 = getelementptr [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %t41
  %.v32 = load i32, i32* %t42
  %.v33 = mul i32 %.v30, %.v32
  %.v34 = srem i32 %.v33, 100
  %.v35 = load i32, i32* %i
  %t47 = sext i32 %.v35 to i64
  %t48 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t47
  %.v36 = load i32, i32* %t48
  %.v37 = add i32 %.v34, %.v36
  %.v38 = load i32, i32* %i
  %t52 = sext i32 %.v38 to i64
  %t53 = getelementptr [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %t52
  store i32 %.v37, i32* %t53
  %.v39 = load i32, i32* %i
  %.v40 = add i32 %.v39, 1
  store i32 %.v40, i32* %i
  br label %while.cond7
while.end9:
  store i32 0, i32* %ans
  store i32 0, i32* %i
  br label %while.cond10
while.cond10:
  %.v41 = load i32, i32* %i
  %.v42 = icmp slt i32 %.v41, 10000
  %.v43 = zext i1 %.v42 to i32
  %.v44 = icmp ne i32 %.v43, 0
  br i1 %.v44, label %while.body11, label %while.end12
while.body11:
  %.v45 = load i32, i32* %i
  %.v46 = icmp slt i32 %.v45, 10
  %.v47 = zext i1 %.v46 to i32
  %.v48 = icmp ne i32 %.v47, 0
  br i1 %.v48, label %if.then13, label %if.else14
while.end12:
  %.v116 = load i32, i32* %ans
  ret i32 %.v116
if.then13:
  %.v49 = load i32, i32* %ans
  %.v50 = load i32, i32* %i
  %t66 = sext i32 %.v50 to i64
  %t67 = getelementptr [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %t66
  %.v51 = load i32, i32* %t67
  %.v52 = add i32 %.v49, %.v51
  %.v53 = srem i32 %.v52, 1333
  store i32 %.v53, i32* %ans
  %.v54 = load i32, i32* %ans
  call void @putint(i32 %.v54)
  br label %if.end15
if.else14:
  %.v55 = load i32, i32* %i
  %.v56 = icmp slt i32 %.v55, 20
  %.v57 = zext i1 %.v56 to i32
  %.v58 = icmp ne i32 %.v57, 0
  br i1 %.v58, label %if.then16, label %if.else17
if.end15:
  %.v114 = load i32, i32* %i
  %.v115 = add i32 %.v114, 1
  store i32 %.v115, i32* %i
  br label %while.cond10
if.then16:
  %.v59 = sdiv i32 10000, 2
  store i32 %.v59, i32* %j
  br label %while.cond19
if.else17:
  %.v74 = load i32, i32* %i
  %.v75 = icmp slt i32 %.v74, 30
  %.v76 = zext i1 %.v75 to i32
  %.v77 = icmp ne i32 %.v76, 0
  br i1 %.v77, label %if.then22, label %if.else23
if.end18:
  br label %if.end15
while.cond19:
  %.v60 = load i32, i32* %j
  %.v61 = icmp slt i32 %.v60, 10000
  %.v62 = zext i1 %.v61 to i32
  %.v63 = icmp ne i32 %.v62, 0
  br i1 %.v63, label %while.body20, label %while.end21
while.body20:
  %.v64 = load i32, i32* %ans
  %.v65 = load i32, i32* %i
  %t83 = sext i32 %.v65 to i64
  %t84 = getelementptr [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %t83
  %.v66 = load i32, i32* %t84
  %.v67 = add i32 %.v64, %.v66
  %.v68 = load i32, i32* %j
  %t88 = sext i32 %.v68 to i64
  %t89 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t88
  %.v69 = load i32, i32* %t89
  %.v70 = sub i32 %.v67, %.v69
  store i32 %.v70, i32* %ans
  %.v71 = load i32, i32* %j
  %.v72 = add i32 %.v71, 1
  store i32 %.v72, i32* %j
  br label %while.cond19
while.end21:
  %.v73 = load i32, i32* %ans
  call void @putint(i32 %.v73)
  br label %if.end18
if.then22:
  %.v78 = sdiv i32 10000, 2
  store i32 %.v78, i32* %j.1
  br label %while.cond25
if.else23:
  %.v107 = load i32, i32* %ans
  %.v108 = load i32, i32* %i
  %t138 = sext i32 %.v108 to i64
  %t139 = getelementptr [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %t138
  %.v109 = load i32, i32* %t139
  %.v110 = load i32, i32* %k.addr
  %.v111 = mul i32 %.v109, %.v110
  %.v112 = add i32 %.v107, %.v111
  %.v113 = srem i32 %.v112, 99988
  store i32 %.v113, i32* %ans
  br label %if.end24
if.end24:
  br label %if.end18
while.cond25:
  %.v79 = load i32, i32* %j.1
  %.v80 = icmp slt i32 %.v79, 10000
  %.v81 = zext i1 %.v80 to i32
  %.v82 = icmp ne i32 %.v81, 0
  br i1 %.v82, label %while.body26, label %while.end27
while.body26:
  %.v83 = load i32, i32* %j.1
  %.v84 = icmp sgt i32 %.v83, 2233
  %.v85 = zext i1 %.v84 to i32
  %.v86 = icmp ne i32 %.v85, 0
  br i1 %.v86, label %if.then28, label %if.else29
while.end27:
  %.v106 = load i32, i32* %ans
  call void @putint(i32 %.v106)
  br label %if.end24
if.then28:
  %.v87 = load i32, i32* %ans
  %.v88 = load i32, i32* %i
  %t110 = sext i32 %.v88 to i64
  %t111 = getelementptr [10000 x i32], [10000 x i32]* %a2, i64 0, i64 %t110
  %.v89 = load i32, i32* %t111
  %.v90 = add i32 %.v87, %.v89
  %.v91 = load i32, i32* %j.1
  %t115 = sext i32 %.v91 to i64
  %t116 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t115
  %.v92 = load i32, i32* %t116
  %.v93 = sub i32 %.v90, %.v92
  store i32 %.v93, i32* %ans
  %.v94 = load i32, i32* %j.1
  %.v95 = add i32 %.v94, 1
  store i32 %.v95, i32* %j.1
  br label %if.end30
if.else29:
  %.v96 = load i32, i32* %ans
  %.v97 = load i32, i32* %i
  %t123 = sext i32 %.v97 to i64
  %t124 = getelementptr [10000 x i32], [10000 x i32]* %a1, i64 0, i64 %t123
  %.v98 = load i32, i32* %t124
  %.v99 = add i32 %.v96, %.v98
  %.v100 = load i32, i32* %j.1
  %t128 = sext i32 %.v100 to i64
  %t129 = getelementptr [10000 x i32], [10000 x i32]* %a3, i64 0, i64 %t128
  %.v101 = load i32, i32* %t129
  %.v102 = add i32 %.v99, %.v101
  %.v103 = srem i32 %.v102, 13333
  store i32 %.v103, i32* %ans
  %.v104 = load i32, i32* %j.1
  %.v105 = add i32 %.v104, 2
  store i32 %.v105, i32* %j.1
  br label %if.end30
if.end30:
  br label %while.cond25
}

define i32 @main() {
entry:
  %.v1 = call i32 @long_array(i32 9)
  ret i32 %.v1
}

