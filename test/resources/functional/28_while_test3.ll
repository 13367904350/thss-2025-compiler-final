@g = global i32 0
@h = global i32 0
@f = global i32 0
@e = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @EightWhile() {
entry:
  %t0 = alloca i32
  store i32 5, i32* %t0
  %t1 = alloca i32
  %t2 = alloca i32
  store i32 6, i32* %t1
  store i32 7, i32* %t2
  %t3 = alloca i32
  store i32 10, i32* %t3
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = icmp slt i32 %v1, 20
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = load i32, i32* %t0
  %v6 = add i32 %v5, 3
  store i32 %v6, i32* %t0
  br label %while.cond4
while.end3:
  %v63 = load i32, i32* %t0
  %v64 = load i32, i32* %t1
  %v65 = load i32, i32* %t3
  %v66 = add i32 %v64, %v65
  %v67 = add i32 %v63, %v66
  %v68 = load i32, i32* %t2
  %v69 = add i32 %v67, %v68
  %v70 = load i32, i32* @e
  %v71 = load i32, i32* %t3
  %v72 = add i32 %v70, %v71
  %v73 = load i32, i32* @g
  %v74 = sub i32 %v72, %v73
  %v75 = load i32, i32* @h
  %v76 = add i32 %v74, %v75
  %v77 = sub i32 %v69, %v76
  ret i32 %v77
while.cond4:
  %v7 = load i32, i32* %t1
  %v8 = icmp slt i32 %v7, 10
  %v9 = zext i1 %v8 to i32
  %v10 = icmp ne i32 %v9, 0
  br i1 %v10, label %while.body5, label %while.end6
while.body5:
  %v11 = load i32, i32* %t1
  %v12 = add i32 %v11, 1
  store i32 %v12, i32* %t1
  br label %while.cond7
while.end6:
  %v61 = load i32, i32* %t1
  %v62 = sub i32 %v61, 2
  store i32 %v62, i32* %t1
  br label %while.cond1
while.cond7:
  %v13 = load i32, i32* %t2
  %v14 = icmp eq i32 %v13, 7
  %v15 = zext i1 %v14 to i32
  %v16 = icmp ne i32 %v15, 0
  br i1 %v16, label %while.body8, label %while.end9
while.body8:
  %v17 = load i32, i32* %t2
  %v18 = sub i32 %v17, 1
  store i32 %v18, i32* %t2
  br label %while.cond10
while.end9:
  %v59 = load i32, i32* %t2
  %v60 = add i32 %v59, 1
  store i32 %v60, i32* %t2
  br label %while.cond4
while.cond10:
  %v19 = load i32, i32* %t3
  %v20 = icmp slt i32 %v19, 20
  %v21 = zext i1 %v20 to i32
  %v22 = icmp ne i32 %v21, 0
  br i1 %v22, label %while.body11, label %while.end12
while.body11:
  %v23 = load i32, i32* %t3
  %v24 = add i32 %v23, 3
  store i32 %v24, i32* %t3
  br label %while.cond13
while.end12:
  %v57 = load i32, i32* %t3
  %v58 = sub i32 %v57, 1
  store i32 %v58, i32* %t3
  br label %while.cond7
while.cond13:
  %v25 = load i32, i32* @e
  %v26 = icmp sgt i32 %v25, 1
  %v27 = zext i1 %v26 to i32
  %v28 = icmp ne i32 %v27, 0
  br i1 %v28, label %while.body14, label %while.end15
while.body14:
  %v29 = load i32, i32* @e
  %v30 = sub i32 %v29, 1
  store i32 %v30, i32* @e
  br label %while.cond16
while.end15:
  %v55 = load i32, i32* @e
  %v56 = add i32 %v55, 1
  store i32 %v56, i32* @e
  br label %while.cond10
while.cond16:
  %v31 = load i32, i32* @f
  %v32 = icmp sgt i32 %v31, 2
  %v33 = zext i1 %v32 to i32
  %v34 = icmp ne i32 %v33, 0
  br i1 %v34, label %while.body17, label %while.end18
while.body17:
  %v35 = load i32, i32* @f
  %v36 = sub i32 %v35, 2
  store i32 %v36, i32* @f
  br label %while.cond19
while.end18:
  %v53 = load i32, i32* @f
  %v54 = add i32 %v53, 1
  store i32 %v54, i32* @f
  br label %while.cond13
while.cond19:
  %v37 = load i32, i32* @g
  %v38 = icmp slt i32 %v37, 3
  %v39 = zext i1 %v38 to i32
  %v40 = icmp ne i32 %v39, 0
  br i1 %v40, label %while.body20, label %while.end21
while.body20:
  %v41 = load i32, i32* @g
  %v42 = add i32 %v41, 10
  store i32 %v42, i32* @g
  br label %while.cond22
while.end21:
  %v51 = load i32, i32* @g
  %v52 = sub i32 %v51, 8
  store i32 %v52, i32* @g
  br label %while.cond16
while.cond22:
  %v43 = load i32, i32* @h
  %v44 = icmp slt i32 %v43, 10
  %v45 = zext i1 %v44 to i32
  %v46 = icmp ne i32 %v45, 0
  br i1 %v46, label %while.body23, label %while.end24
while.body23:
  %v47 = load i32, i32* @h
  %v48 = add i32 %v47, 8
  store i32 %v48, i32* @h
  br label %while.cond22
while.end24:
  %v49 = load i32, i32* @h
  %v50 = sub i32 %v49, 1
  store i32 %v50, i32* @h
  br label %while.cond19
}

define i32 @main() {
entry:
  store i32 1, i32* @g
  store i32 2, i32* @h
  store i32 4, i32* @e
  store i32 6, i32* @f
  %v1 = call i32 @EightWhile()
  ret i32 %v1
}

