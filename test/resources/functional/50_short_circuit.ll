@g = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @func(i32 %n) {
entry:
  %t0 = alloca i32
  store i32 %n, i32* %t0
  %v1 = load i32, i32* @g
  %v2 = load i32, i32* %t0
  %v3 = add i32 %v1, %v2
  store i32 %v3, i32* @g
  %v4 = load i32, i32* @g
  call void @putint(i32 %v4)
  %v5 = load i32, i32* @g
  ret i32 %v5
}

define i32 @main() {
entry:
  %t6 = alloca i32
  %v1 = call i32 @getint()
  store i32 %v1, i32* %t6
  %v2 = alloca i32
  store i32 0, i32* %v2
  %v3 = load i32, i32* %t6
  %v4 = icmp sgt i32 %v3, 10
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %land.rhs4, label %land.end5
if.then1:
  store i32 1, i32* %t6
  br label %if.end3
if.else2:
  store i32 0, i32* %t6
  br label %if.end3
if.end3:
  %v13 = call i32 @getint()
  store i32 %v13, i32* %t6
  %v14 = alloca i32
  store i32 0, i32* %v14
  %v15 = load i32, i32* %t6
  %v16 = icmp sgt i32 %v15, 11
  %v17 = zext i1 %v16 to i32
  %v18 = icmp ne i32 %v17, 0
  br i1 %v18, label %land.rhs9, label %land.end10
land.rhs4:
  %v7 = load i32, i32* %t6
  %v8 = call i32 @func(i32 %v7)
  %v9 = icmp ne i32 %v8, 0
  %v10 = zext i1 %v9 to i32
  store i32 %v10, i32* %v2
  br label %land.end5
land.end5:
  %v11 = load i32, i32* %v2
  %v12 = icmp ne i32 %v11, 0
  br i1 %v12, label %if.then1, label %if.else2
if.then6:
  store i32 1, i32* %t6
  br label %if.end8
if.else7:
  store i32 0, i32* %t6
  br label %if.end8
if.end8:
  %v25 = call i32 @getint()
  store i32 %v25, i32* %t6
  %v26 = alloca i32
  store i32 1, i32* %v26
  %v27 = load i32, i32* %t6
  %v28 = icmp sle i32 %v27, 99
  %v29 = zext i1 %v28 to i32
  %v30 = icmp ne i32 %v29, 0
  br i1 %v30, label %lor.end15, label %lor.rhs14
land.rhs9:
  %v19 = load i32, i32* %t6
  %v20 = call i32 @func(i32 %v19)
  %v21 = icmp ne i32 %v20, 0
  %v22 = zext i1 %v21 to i32
  store i32 %v22, i32* %v14
  br label %land.end10
land.end10:
  %v23 = load i32, i32* %v14
  %v24 = icmp ne i32 %v23, 0
  br i1 %v24, label %if.then6, label %if.else7
if.then11:
  store i32 1, i32* %t6
  br label %if.end13
if.else12:
  store i32 0, i32* %t6
  br label %if.end13
if.end13:
  %v37 = call i32 @getint()
  store i32 %v37, i32* %t6
  %v38 = alloca i32
  store i32 1, i32* %v38
  %v39 = load i32, i32* %t6
  %v40 = icmp sle i32 %v39, 100
  %v41 = zext i1 %v40 to i32
  %v42 = icmp ne i32 %v41, 0
  br i1 %v42, label %lor.end20, label %lor.rhs19
lor.rhs14:
  %v31 = load i32, i32* %t6
  %v32 = call i32 @func(i32 %v31)
  %v33 = icmp ne i32 %v32, 0
  %v34 = zext i1 %v33 to i32
  store i32 %v34, i32* %v26
  br label %lor.end15
lor.end15:
  %v35 = load i32, i32* %v26
  %v36 = icmp ne i32 %v35, 0
  br i1 %v36, label %if.then11, label %if.else12
if.then16:
  store i32 1, i32* %t6
  br label %if.end18
if.else17:
  store i32 0, i32* %t6
  br label %if.end18
if.end18:
  %v49 = alloca i32
  store i32 0, i32* %v49
  %v50 = call i32 @func(i32 99)
  %v51 = icmp eq i32 %v50, 0
  %v52 = zext i1 %v51 to i32
  %v53 = icmp ne i32 %v52, 0
  br i1 %v53, label %land.rhs24, label %land.end25
lor.rhs19:
  %v43 = load i32, i32* %t6
  %v44 = call i32 @func(i32 %v43)
  %v45 = icmp ne i32 %v44, 0
  %v46 = zext i1 %v45 to i32
  store i32 %v46, i32* %v38
  br label %lor.end20
lor.end20:
  %v47 = load i32, i32* %v38
  %v48 = icmp ne i32 %v47, 0
  br i1 %v48, label %if.then16, label %if.else17
if.then21:
  store i32 1, i32* %t6
  br label %if.end23
if.else22:
  store i32 0, i32* %t6
  br label %if.end23
if.end23:
  ret i32 0
land.rhs24:
  %v54 = call i32 @func(i32 100)
  %v55 = icmp ne i32 %v54, 0
  %v56 = zext i1 %v55 to i32
  store i32 %v56, i32* %v49
  br label %land.end25
land.end25:
  %v57 = load i32, i32* %v49
  %v58 = icmp ne i32 %v57, 0
  br i1 %v58, label %if.then21, label %if.else22
}

