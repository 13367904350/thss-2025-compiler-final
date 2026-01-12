@n = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  %t2 = alloca i32
  %t3 = alloca i32
  %t4 = alloca i32
  %t5 = alloca i32
  %t6 = alloca i32
  %t7 = alloca i32
  %t8 = alloca i32
  %t9 = alloca i32
  %t10 = alloca i32
  %t11 = alloca i32
  %t12 = alloca i32
  %t13 = alloca i32
  %t14 = alloca i32
  %t15 = alloca i32
  %t16 = alloca i32
  %t17 = alloca i32
  %t18 = alloca i32
  %t19 = alloca i32
  %t20 = alloca i32
  %t21 = alloca i32
  %t22 = alloca i32
  %t23 = alloca i32
  %t24 = alloca i32
  %t25 = alloca i32
  %t26 = alloca i32
  %t27 = alloca i32
  %t28 = alloca i32
  %t29 = alloca i32
  %t30 = alloca i32
  %v1 = call i32 @getint()
  store i32 %v1, i32* %t30
  br label %while.cond1
while.cond1:
  %v2 = load i32, i32* %t30
  %v3 = icmp eq i32 %v2, 5
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = load i32, i32* %t30
  %v7 = add i32 %v6, 1
  store i32 %v7, i32* %t30
  br label %while.cond1
while.end3:
  store i32 0, i32* %t0
  %v8 = load i32, i32* %t0
  %v9 = add i32 %v8, 1
  store i32 %v9, i32* %t1
  %v10 = load i32, i32* %t1
  %v11 = add i32 %v10, 1
  store i32 %v11, i32* %t2
  %v12 = load i32, i32* %t2
  %v13 = add i32 %v12, 1
  store i32 %v13, i32* %t3
  %v14 = load i32, i32* %t3
  %v15 = add i32 %v14, 1
  store i32 %v15, i32* %t4
  %v16 = load i32, i32* %t4
  %v17 = add i32 %v16, 1
  store i32 %v17, i32* %t5
  %v18 = load i32, i32* %t5
  %v19 = add i32 %v18, 1
  store i32 %v19, i32* %t6
  %v20 = load i32, i32* %t6
  %v21 = add i32 %v20, 1
  store i32 %v21, i32* %t7
  %v22 = load i32, i32* %t7
  %v23 = add i32 %v22, 1
  store i32 %v23, i32* %t8
  %v24 = load i32, i32* %t8
  %v25 = add i32 %v24, 1
  store i32 %v25, i32* %t9
  %v26 = load i32, i32* %t9
  %v27 = add i32 %v26, 1
  store i32 %v27, i32* %t10
  %v28 = load i32, i32* %t10
  %v29 = add i32 %v28, 1
  store i32 %v29, i32* %t11
  %v30 = load i32, i32* %t11
  %v31 = add i32 %v30, 1
  store i32 %v31, i32* %t12
  %v32 = load i32, i32* %t12
  %v33 = add i32 %v32, 1
  store i32 %v33, i32* %t13
  %v34 = load i32, i32* %t13
  %v35 = add i32 %v34, 1
  store i32 %v35, i32* %t14
  %v36 = load i32, i32* %t14
  %v37 = add i32 %v36, 1
  store i32 %v37, i32* %t15
  %v38 = load i32, i32* %t15
  %v39 = add i32 %v38, 1
  store i32 %v39, i32* %t16
  %v40 = load i32, i32* %t16
  %v41 = add i32 %v40, 1
  store i32 %v41, i32* %t17
  %v42 = load i32, i32* %t17
  %v43 = add i32 %v42, 1
  store i32 %v43, i32* %t18
  %v44 = load i32, i32* %t18
  %v45 = add i32 %v44, 1
  store i32 %v45, i32* %t19
  %v46 = load i32, i32* %t19
  %v47 = add i32 %v46, 1
  store i32 %v47, i32* %t20
  %v48 = load i32, i32* %t20
  %v49 = add i32 %v48, 1
  store i32 %v49, i32* %t21
  %v50 = load i32, i32* %t21
  %v51 = add i32 %v50, 1
  store i32 %v51, i32* %t22
  %v52 = load i32, i32* %t22
  %v53 = add i32 %v52, 1
  store i32 %v53, i32* %t23
  %v54 = load i32, i32* %t23
  %v55 = add i32 %v54, 1
  store i32 %v55, i32* %t24
  %v56 = load i32, i32* %t24
  %v57 = add i32 %v56, 1
  store i32 %v57, i32* %t25
  %v58 = load i32, i32* %t25
  %v59 = add i32 %v58, 1
  store i32 %v59, i32* %t26
  %v60 = load i32, i32* %t26
  %v61 = add i32 %v60, 1
  store i32 %v61, i32* %t27
  %v62 = load i32, i32* %t27
  %v63 = add i32 %v62, 1
  store i32 %v63, i32* %t28
  %v64 = load i32, i32* %t28
  %v65 = add i32 %v64, 1
  store i32 %v65, i32* %t29
  %t96 = alloca i32
  %v66 = load i32, i32* %t0
  call void @putint(i32 %v66)
  %v67 = load i32, i32* %t1
  call void @putint(i32 %v67)
  %v68 = load i32, i32* %t2
  call void @putint(i32 %v68)
  %v69 = load i32, i32* %t3
  call void @putint(i32 %v69)
  %v70 = load i32, i32* %t4
  call void @putint(i32 %v70)
  %v71 = load i32, i32* %t5
  call void @putint(i32 %v71)
  %v72 = load i32, i32* %t6
  call void @putint(i32 %v72)
  %v73 = load i32, i32* %t7
  call void @putint(i32 %v73)
  %v74 = load i32, i32* %t8
  call void @putint(i32 %v74)
  %v75 = load i32, i32* %t9
  call void @putint(i32 %v75)
  %v76 = load i32, i32* %t10
  call void @putint(i32 %v76)
  %v77 = load i32, i32* %t11
  call void @putint(i32 %v77)
  %v78 = load i32, i32* %t12
  call void @putint(i32 %v78)
  %v79 = load i32, i32* %t13
  call void @putint(i32 %v79)
  %v80 = load i32, i32* %t14
  call void @putint(i32 %v80)
  %v81 = load i32, i32* %t15
  call void @putint(i32 %v81)
  %v82 = load i32, i32* %t16
  call void @putint(i32 %v82)
  %v83 = load i32, i32* %t17
  call void @putint(i32 %v83)
  %v84 = load i32, i32* %t18
  call void @putint(i32 %v84)
  %v85 = load i32, i32* %t19
  call void @putint(i32 %v85)
  %v86 = load i32, i32* %t20
  call void @putint(i32 %v86)
  %v87 = load i32, i32* %t21
  call void @putint(i32 %v87)
  %v88 = load i32, i32* %t22
  call void @putint(i32 %v88)
  %v89 = load i32, i32* %t23
  call void @putint(i32 %v89)
  %v90 = load i32, i32* %t24
  call void @putint(i32 %v90)
  %v91 = load i32, i32* %t25
  call void @putint(i32 %v91)
  %v92 = load i32, i32* %t26
  call void @putint(i32 %v92)
  %v93 = load i32, i32* %t27
  call void @putint(i32 %v93)
  %v94 = load i32, i32* %t28
  call void @putint(i32 %v94)
  %v95 = load i32, i32* %t29
  call void @putint(i32 %v95)
  %t127 = alloca i32
  store i32 10, i32* %t127
  %v96 = load i32, i32* %t127
  call void @putch(i32 %v96)
  %v97 = load i32, i32* %t30
  call void @putint(i32 %v97)
  %v98 = load i32, i32* %t127
  call void @putch(i32 %v98)
  %v99 = load i32, i32* %t25
  ret i32 %v99
}

