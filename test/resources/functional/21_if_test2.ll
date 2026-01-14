declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @ifElseIf() {
entry:
  %.v26 = alloca i32
  %.v14 = alloca i32
  %.v1 = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 5, i32* %a
  store i32 10, i32* %b
  store i32 1, i32* %.v1
  %.v2 = load i32, i32* %a
  %.v3 = icmp eq i32 %.v2, 6
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %lor.end5, label %lor.rhs4
if.then1:
  %.v13 = load i32, i32* %a
  ret i32 %.v13
if.else2:
  store i32 0, i32* %.v14
  %.v15 = load i32, i32* %b
  %.v16 = icmp eq i32 %.v15, 10
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %land.rhs9, label %land.end10
if.end3:
  %.v43 = load i32, i32* %a
  ret i32 %.v43
lor.rhs4:
  %.v6 = load i32, i32* %b
  %.v7 = icmp eq i32 %.v6, 11
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp ne i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  store i32 %.v10, i32* %.v1
  br label %lor.end5
lor.end5:
  %.v11 = load i32, i32* %.v1
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then1, label %if.else2
if.then6:
  store i32 25, i32* %a
  br label %if.end8
if.else7:
  store i32 0, i32* %.v26
  %.v27 = load i32, i32* %b
  %.v28 = icmp eq i32 %.v27, 10
  %.v29 = zext i1 %.v28 to i32
  %.v30 = icmp ne i32 %.v29, 0
  br i1 %.v30, label %land.rhs14, label %land.end15
if.end8:
  br label %if.end3
land.rhs9:
  %.v19 = load i32, i32* %a
  %.v20 = icmp eq i32 %.v19, 1
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  %.v23 = zext i1 %.v22 to i32
  store i32 %.v23, i32* %.v14
  br label %land.end10
land.end10:
  %.v24 = load i32, i32* %.v14
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %if.then6, label %if.else7
if.then11:
  %.v39 = load i32, i32* %a
  %.v40 = add i32 %.v39, 15
  store i32 %.v40, i32* %a
  br label %if.end13
if.else12:
  %.v41 = load i32, i32* %a
  %.v42 = sub i32 0, %.v41
  store i32 %.v42, i32* %a
  br label %if.end13
if.end13:
  br label %if.end8
land.rhs14:
  %.v31 = load i32, i32* %a
  %.v32 = sub i32 0, 5
  %.v33 = icmp eq i32 %.v31, %.v32
  %.v34 = zext i1 %.v33 to i32
  %.v35 = icmp ne i32 %.v34, 0
  %.v36 = zext i1 %.v35 to i32
  store i32 %.v36, i32* %.v26
  br label %land.end15
land.end15:
  %.v37 = load i32, i32* %.v26
  %.v38 = icmp ne i32 %.v37, 0
  br i1 %.v38, label %if.then11, label %if.else12
}

define i32 @main() {
entry:
  %.v1 = call i32 @ifElseIf()
  call void @putint(i32 %.v1)
  ret i32 0
}

