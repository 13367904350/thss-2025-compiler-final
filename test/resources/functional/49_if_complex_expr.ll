declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %.v36 = alloca i32
  %.v29 = alloca i32
  %.v9 = alloca i32
  %.v2 = alloca i32
  %result = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 5, i32* %a
  store i32 5, i32* %b
  store i32 1, i32* %c
  %.v1 = sub i32 0, 2
  store i32 %.v1, i32* %d
  store i32 2, i32* %result
  store i32 1, i32* %.v2
  %.v3 = load i32, i32* %d
  %.v4 = mul i32 %.v3, 1
  %.v5 = sdiv i32 %.v4, 2
  %.v6 = icmp slt i32 %.v5, 0
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %lor.end4, label %lor.rhs3
if.then1:
  %.v28 = load i32, i32* %result
  call void @putint(i32 %.v28)
  br label %if.end2
if.end2:
  store i32 1, i32* %.v29
  %.v30 = load i32, i32* %d
  %.v31 = srem i32 %.v30, 2
  %.v32 = add i32 %.v31, 67
  %.v33 = icmp slt i32 %.v32, 0
  %.v34 = zext i1 %.v33 to i32
  %.v35 = icmp ne i32 %.v34, 0
  br i1 %.v35, label %lor.end10, label %lor.rhs9
lor.rhs3:
  store i32 0, i32* %.v9
  %.v10 = load i32, i32* %a
  %.v11 = load i32, i32* %b
  %.v12 = sub i32 %.v10, %.v11
  %.v13 = icmp ne i32 %.v12, 0
  %.v14 = zext i1 %.v13 to i32
  %.v15 = icmp ne i32 %.v14, 0
  br i1 %.v15, label %land.rhs5, label %land.end6
lor.end4:
  %.v26 = load i32, i32* %.v2
  %.v27 = icmp ne i32 %.v26, 0
  br i1 %.v27, label %if.then1, label %if.end2
land.rhs5:
  %.v16 = load i32, i32* %c
  %.v17 = add i32 %.v16, 3
  %.v18 = srem i32 %.v17, 2
  %.v19 = icmp ne i32 %.v18, 0
  %.v20 = zext i1 %.v19 to i32
  %.v21 = icmp ne i32 %.v20, 0
  %.v22 = zext i1 %.v21 to i32
  store i32 %.v22, i32* %.v9
  br label %land.end6
land.end6:
  %.v23 = load i32, i32* %.v9
  %.v24 = icmp ne i32 %.v23, 0
  %.v25 = zext i1 %.v24 to i32
  store i32 %.v25, i32* %.v2
  br label %lor.end4
if.then7:
  store i32 4, i32* %result
  %.v55 = load i32, i32* %result
  call void @putint(i32 %.v55)
  br label %if.end8
if.end8:
  ret i32 0
lor.rhs9:
  store i32 0, i32* %.v36
  %.v37 = load i32, i32* %a
  %.v38 = load i32, i32* %b
  %.v39 = sub i32 %.v37, %.v38
  %.v40 = icmp ne i32 %.v39, 0
  %.v41 = zext i1 %.v40 to i32
  %.v42 = icmp ne i32 %.v41, 0
  br i1 %.v42, label %land.rhs11, label %land.end12
lor.end10:
  %.v53 = load i32, i32* %.v29
  %.v54 = icmp ne i32 %.v53, 0
  br i1 %.v54, label %if.then7, label %if.end8
land.rhs11:
  %.v43 = load i32, i32* %c
  %.v44 = add i32 %.v43, 2
  %.v45 = srem i32 %.v44, 2
  %.v46 = icmp ne i32 %.v45, 0
  %.v47 = zext i1 %.v46 to i32
  %.v48 = icmp ne i32 %.v47, 0
  %.v49 = zext i1 %.v48 to i32
  store i32 %.v49, i32* %.v36
  br label %land.end12
land.end12:
  %.v50 = load i32, i32* %.v36
  %.v51 = icmp ne i32 %.v50, 0
  %.v52 = zext i1 %.v51 to i32
  store i32 %.v52, i32* %.v29
  br label %lor.end10
}

