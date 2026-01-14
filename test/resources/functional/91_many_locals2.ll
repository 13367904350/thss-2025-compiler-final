@n = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %newline = alloca i32
  %t = alloca i32
  %b = alloca i32
  %a29 = alloca i32
  %a28 = alloca i32
  %a27 = alloca i32
  %a26 = alloca i32
  %a25 = alloca i32
  %a24 = alloca i32
  %a23 = alloca i32
  %a22 = alloca i32
  %a21 = alloca i32
  %a20 = alloca i32
  %a19 = alloca i32
  %a18 = alloca i32
  %a17 = alloca i32
  %a16 = alloca i32
  %a15 = alloca i32
  %a14 = alloca i32
  %a13 = alloca i32
  %a12 = alloca i32
  %a11 = alloca i32
  %a10 = alloca i32
  %a9 = alloca i32
  %a8 = alloca i32
  %a7 = alloca i32
  %a6 = alloca i32
  %a5 = alloca i32
  %a4 = alloca i32
  %a3 = alloca i32
  %a2 = alloca i32
  %a1 = alloca i32
  %a0 = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %b
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %b
  %.v3 = icmp eq i32 %.v2, 5
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %b
  %.v7 = add i32 %.v6, 1
  store i32 %.v7, i32* %b
  br label %while.cond1
while.end3:
  store i32 0, i32* %a0
  %.v8 = load i32, i32* %a0
  %.v9 = add i32 %.v8, 1
  store i32 %.v9, i32* %a1
  %.v10 = load i32, i32* %a1
  %.v11 = add i32 %.v10, 1
  store i32 %.v11, i32* %a2
  %.v12 = load i32, i32* %a2
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %a3
  %.v14 = load i32, i32* %a3
  %.v15 = add i32 %.v14, 1
  store i32 %.v15, i32* %a4
  %.v16 = load i32, i32* %a4
  %.v17 = add i32 %.v16, 1
  store i32 %.v17, i32* %a5
  %.v18 = load i32, i32* %a5
  %.v19 = add i32 %.v18, 1
  store i32 %.v19, i32* %a6
  %.v20 = load i32, i32* %a6
  %.v21 = add i32 %.v20, 1
  store i32 %.v21, i32* %a7
  %.v22 = load i32, i32* %a7
  %.v23 = add i32 %.v22, 1
  store i32 %.v23, i32* %a8
  %.v24 = load i32, i32* %a8
  %.v25 = add i32 %.v24, 1
  store i32 %.v25, i32* %a9
  %.v26 = load i32, i32* %a9
  %.v27 = add i32 %.v26, 1
  store i32 %.v27, i32* %a10
  %.v28 = load i32, i32* %a10
  %.v29 = add i32 %.v28, 1
  store i32 %.v29, i32* %a11
  %.v30 = load i32, i32* %a11
  %.v31 = add i32 %.v30, 1
  store i32 %.v31, i32* %a12
  %.v32 = load i32, i32* %a12
  %.v33 = add i32 %.v32, 1
  store i32 %.v33, i32* %a13
  %.v34 = load i32, i32* %a13
  %.v35 = add i32 %.v34, 1
  store i32 %.v35, i32* %a14
  %.v36 = load i32, i32* %a14
  %.v37 = add i32 %.v36, 1
  store i32 %.v37, i32* %a15
  %.v38 = load i32, i32* %a15
  %.v39 = add i32 %.v38, 1
  store i32 %.v39, i32* %a16
  %.v40 = load i32, i32* %a16
  %.v41 = add i32 %.v40, 1
  store i32 %.v41, i32* %a17
  %.v42 = load i32, i32* %a17
  %.v43 = add i32 %.v42, 1
  store i32 %.v43, i32* %a18
  %.v44 = load i32, i32* %a18
  %.v45 = add i32 %.v44, 1
  store i32 %.v45, i32* %a19
  %.v46 = load i32, i32* %a19
  %.v47 = add i32 %.v46, 1
  store i32 %.v47, i32* %a20
  %.v48 = load i32, i32* %a20
  %.v49 = add i32 %.v48, 1
  store i32 %.v49, i32* %a21
  %.v50 = load i32, i32* %a21
  %.v51 = add i32 %.v50, 1
  store i32 %.v51, i32* %a22
  %.v52 = load i32, i32* %a22
  %.v53 = add i32 %.v52, 1
  store i32 %.v53, i32* %a23
  %.v54 = load i32, i32* %a23
  %.v55 = add i32 %.v54, 1
  store i32 %.v55, i32* %a24
  %.v56 = load i32, i32* %a24
  %.v57 = add i32 %.v56, 1
  store i32 %.v57, i32* %a25
  %.v58 = load i32, i32* %a25
  %.v59 = add i32 %.v58, 1
  store i32 %.v59, i32* %a26
  %.v60 = load i32, i32* %a26
  %.v61 = add i32 %.v60, 1
  store i32 %.v61, i32* %a27
  %.v62 = load i32, i32* %a27
  %.v63 = add i32 %.v62, 1
  store i32 %.v63, i32* %a28
  %.v64 = load i32, i32* %a28
  %.v65 = add i32 %.v64, 1
  store i32 %.v65, i32* %a29
  %.v66 = load i32, i32* %a0
  call void @putint(i32 %.v66)
  %.v67 = load i32, i32* %a1
  call void @putint(i32 %.v67)
  %.v68 = load i32, i32* %a2
  call void @putint(i32 %.v68)
  %.v69 = load i32, i32* %a3
  call void @putint(i32 %.v69)
  %.v70 = load i32, i32* %a4
  call void @putint(i32 %.v70)
  %.v71 = load i32, i32* %a5
  call void @putint(i32 %.v71)
  %.v72 = load i32, i32* %a6
  call void @putint(i32 %.v72)
  %.v73 = load i32, i32* %a7
  call void @putint(i32 %.v73)
  %.v74 = load i32, i32* %a8
  call void @putint(i32 %.v74)
  %.v75 = load i32, i32* %a9
  call void @putint(i32 %.v75)
  %.v76 = load i32, i32* %a10
  call void @putint(i32 %.v76)
  %.v77 = load i32, i32* %a11
  call void @putint(i32 %.v77)
  %.v78 = load i32, i32* %a12
  call void @putint(i32 %.v78)
  %.v79 = load i32, i32* %a13
  call void @putint(i32 %.v79)
  %.v80 = load i32, i32* %a14
  call void @putint(i32 %.v80)
  %.v81 = load i32, i32* %a15
  call void @putint(i32 %.v81)
  %.v82 = load i32, i32* %a16
  call void @putint(i32 %.v82)
  %.v83 = load i32, i32* %a17
  call void @putint(i32 %.v83)
  %.v84 = load i32, i32* %a18
  call void @putint(i32 %.v84)
  %.v85 = load i32, i32* %a19
  call void @putint(i32 %.v85)
  %.v86 = load i32, i32* %a20
  call void @putint(i32 %.v86)
  %.v87 = load i32, i32* %a21
  call void @putint(i32 %.v87)
  %.v88 = load i32, i32* %a22
  call void @putint(i32 %.v88)
  %.v89 = load i32, i32* %a23
  call void @putint(i32 %.v89)
  %.v90 = load i32, i32* %a24
  call void @putint(i32 %.v90)
  %.v91 = load i32, i32* %a25
  call void @putint(i32 %.v91)
  %.v92 = load i32, i32* %a26
  call void @putint(i32 %.v92)
  %.v93 = load i32, i32* %a27
  call void @putint(i32 %.v93)
  %.v94 = load i32, i32* %a28
  call void @putint(i32 %.v94)
  %.v95 = load i32, i32* %a29
  call void @putint(i32 %.v95)
  store i32 10, i32* %newline
  %.v96 = load i32, i32* %newline
  call void @putch(i32 %.v96)
  %.v97 = load i32, i32* %b
  call void @putint(i32 %.v97)
  %.v98 = load i32, i32* %newline
  call void @putch(i32 %.v98)
  %.v99 = load i32, i32* %a25
  ret i32 %.v99
}

