@N = constant i32 10000
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @long_array(i32 %k) {
entry:
  %t0 = alloca i32
  store i32 %k, i32* %t0
  %t1 = alloca [10000 x i32]
  %t2 = alloca [10000 x i32]
  %t3 = alloca [10000 x i32]
  %t4 = alloca i32
  store i32 0, i32* %t4
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t4
  %v2 = load i32, i32* @N
  %v3 = icmp slt i32 %v1, %v2
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t4
  %v7 = load i32, i32* %t4
  %v8 = mul i32 %v6, %v7
  %v9 = srem i32 %v8, 10
  %v10 = load i32, i32* %t4
  %t15 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v10
  store i32 %v9, i32* %t15
  %v11 = load i32, i32* %t4
  %v12 = add i32 %v11, 1
  store i32 %v12, i32* %t4
  br label %while.cond1
while.end3:
  store i32 0, i32* %t4
  br label %while.cond4
while.cond4:
  %v13 = load i32, i32* %t4
  %v14 = load i32, i32* @N
  %v15 = icmp slt i32 %v13, %v14
  %v16 = zext i1 %v15 to i32
  %v17 = icmp ne i32 %v16, 0
  br i1 %v17, label %while.body5, label %while.end6
while.body5:
  %v18 = load i32, i32* %t4
  %t24 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v18
  %v19 = load i32, i32* %t24
  %v20 = load i32, i32* %t4
  %t27 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v20
  %v21 = load i32, i32* %t27
  %v22 = mul i32 %v19, %v21
  %v23 = srem i32 %v22, 10
  %v24 = load i32, i32* %t4
  %t32 = getelementptr [10000 x i32], [10000 x i32]* %t2, i32 0, i32 %v24
  store i32 %v23, i32* %t32
  %v25 = load i32, i32* %t4
  %v26 = add i32 %v25, 1
  store i32 %v26, i32* %t4
  br label %while.cond4
while.end6:
  store i32 0, i32* %t4
  br label %while.cond7
while.cond7:
  %v27 = load i32, i32* %t4
  %v28 = load i32, i32* @N
  %v29 = icmp slt i32 %v27, %v28
  %v30 = zext i1 %v29 to i32
  %v31 = icmp ne i32 %v30, 0
  br i1 %v31, label %while.body8, label %while.end9
while.body8:
  %v32 = load i32, i32* %t4
  %t41 = getelementptr [10000 x i32], [10000 x i32]* %t2, i32 0, i32 %v32
  %v33 = load i32, i32* %t41
  %v34 = load i32, i32* %t4
  %t44 = getelementptr [10000 x i32], [10000 x i32]* %t2, i32 0, i32 %v34
  %v35 = load i32, i32* %t44
  %v36 = mul i32 %v33, %v35
  %v37 = srem i32 %v36, 100
  %v38 = load i32, i32* %t4
  %t49 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v38
  %v39 = load i32, i32* %t49
  %v40 = add i32 %v37, %v39
  %v41 = load i32, i32* %t4
  %t53 = getelementptr [10000 x i32], [10000 x i32]* %t3, i32 0, i32 %v41
  store i32 %v40, i32* %t53
  %v42 = load i32, i32* %t4
  %v43 = add i32 %v42, 1
  store i32 %v43, i32* %t4
  br label %while.cond7
while.end9:
  %t56 = alloca i32
  store i32 0, i32* %t56
  store i32 0, i32* %t4
  br label %while.cond10
while.cond10:
  %v44 = load i32, i32* %t4
  %v45 = load i32, i32* @N
  %v46 = icmp slt i32 %v44, %v45
  %v47 = zext i1 %v46 to i32
  %v48 = icmp ne i32 %v47, 0
  br i1 %v48, label %while.body11, label %while.end12
while.body11:
  %v49 = load i32, i32* %t4
  %v50 = icmp slt i32 %v49, 10
  %v51 = zext i1 %v50 to i32
  %v52 = icmp ne i32 %v51, 0
  br i1 %v52, label %if.then13, label %if.else14
while.end12:
  %v124 = load i32, i32* %t56
  ret i32 %v124
if.then13:
  %v53 = load i32, i32* %t56
  %v54 = load i32, i32* %t4
  %t68 = getelementptr [10000 x i32], [10000 x i32]* %t3, i32 0, i32 %v54
  %v55 = load i32, i32* %t68
  %v56 = add i32 %v53, %v55
  %v57 = srem i32 %v56, 1333
  store i32 %v57, i32* %t56
  %v58 = load i32, i32* %t56
  call void @putint(i32 %v58)
  br label %if.end15
if.else14:
  %v59 = load i32, i32* %t4
  %v60 = icmp slt i32 %v59, 20
  %v61 = zext i1 %v60 to i32
  %v62 = icmp ne i32 %v61, 0
  br i1 %v62, label %if.then16, label %if.else17
if.end15:
  %v122 = load i32, i32* %t4
  %v123 = add i32 %v122, 1
  store i32 %v123, i32* %t4
  br label %while.cond10
if.then16:
  %t77 = alloca i32
  %v63 = load i32, i32* @N
  %v64 = sdiv i32 %v63, 2
  store i32 %v64, i32* %t77
  br label %while.cond19
if.else17:
  %v80 = load i32, i32* %t4
  %v81 = icmp slt i32 %v80, 30
  %v82 = zext i1 %v81 to i32
  %v83 = icmp ne i32 %v82, 0
  br i1 %v83, label %if.then22, label %if.else23
if.end18:
  br label %if.end15
while.cond19:
  %v65 = load i32, i32* %t77
  %v66 = load i32, i32* @N
  %v67 = icmp slt i32 %v65, %v66
  %v68 = zext i1 %v67 to i32
  %v69 = icmp ne i32 %v68, 0
  br i1 %v69, label %while.body20, label %while.end21
while.body20:
  %v70 = load i32, i32* %t56
  %v71 = load i32, i32* %t4
  %t87 = getelementptr [10000 x i32], [10000 x i32]* %t3, i32 0, i32 %v71
  %v72 = load i32, i32* %t87
  %v73 = add i32 %v70, %v72
  %v74 = load i32, i32* %t77
  %t91 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v74
  %v75 = load i32, i32* %t91
  %v76 = sub i32 %v73, %v75
  store i32 %v76, i32* %t56
  %v77 = load i32, i32* %t77
  %v78 = add i32 %v77, 1
  store i32 %v78, i32* %t77
  br label %while.cond19
while.end21:
  %v79 = load i32, i32* %t56
  call void @putint(i32 %v79)
  br label %if.end18
if.then22:
  %t101 = alloca i32
  %v84 = load i32, i32* @N
  %v85 = sdiv i32 %v84, 2
  store i32 %v85, i32* %t101
  br label %while.cond25
if.else23:
  %v115 = load i32, i32* %t56
  %v116 = load i32, i32* %t4
  %t139 = getelementptr [10000 x i32], [10000 x i32]* %t3, i32 0, i32 %v116
  %v117 = load i32, i32* %t139
  %v118 = load i32, i32* %t0
  %v119 = mul i32 %v117, %v118
  %v120 = add i32 %v115, %v119
  %v121 = srem i32 %v120, 99988
  store i32 %v121, i32* %t56
  br label %if.end24
if.end24:
  br label %if.end18
while.cond25:
  %v86 = load i32, i32* %t101
  %v87 = load i32, i32* @N
  %v88 = icmp slt i32 %v86, %v87
  %v89 = zext i1 %v88 to i32
  %v90 = icmp ne i32 %v89, 0
  br i1 %v90, label %while.body26, label %while.end27
while.body26:
  %v91 = load i32, i32* %t101
  %v92 = icmp sgt i32 %v91, 2233
  %v93 = zext i1 %v92 to i32
  %v94 = icmp ne i32 %v93, 0
  br i1 %v94, label %if.then28, label %if.else29
while.end27:
  %v114 = load i32, i32* %t56
  call void @putint(i32 %v114)
  br label %if.end24
if.then28:
  %v95 = load i32, i32* %t56
  %v96 = load i32, i32* %t4
  %t115 = getelementptr [10000 x i32], [10000 x i32]* %t2, i32 0, i32 %v96
  %v97 = load i32, i32* %t115
  %v98 = add i32 %v95, %v97
  %v99 = load i32, i32* %t101
  %t119 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v99
  %v100 = load i32, i32* %t119
  %v101 = sub i32 %v98, %v100
  store i32 %v101, i32* %t56
  %v102 = load i32, i32* %t101
  %v103 = add i32 %v102, 1
  store i32 %v103, i32* %t101
  br label %if.end30
if.else29:
  %v104 = load i32, i32* %t56
  %v105 = load i32, i32* %t4
  %t126 = getelementptr [10000 x i32], [10000 x i32]* %t1, i32 0, i32 %v105
  %v106 = load i32, i32* %t126
  %v107 = add i32 %v104, %v106
  %v108 = load i32, i32* %t101
  %t130 = getelementptr [10000 x i32], [10000 x i32]* %t3, i32 0, i32 %v108
  %v109 = load i32, i32* %t130
  %v110 = add i32 %v107, %v109
  %v111 = srem i32 %v110, 13333
  store i32 %v111, i32* %t56
  %v112 = load i32, i32* %t101
  %v113 = add i32 %v112, 2
  store i32 %v113, i32* %t101
  br label %if.end30
if.end30:
  br label %while.cond25
}

define i32 @main() {
entry:
  %v1 = call i32 @long_array(i32 9)
  ret i32 %v1
}

