@a = global i32 -1
@b = global i32 1
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

declare float @getfloat()

declare void @putfloat(float)

declare i32 @getfarray(float*)

declare void @putfarray(i32, float*)

define i32 @inc_a() {
entry:
  %b = alloca i32
  %.v1 = load i32, i32* @a
  store i32 %.v1, i32* %b
  %.v2 = load i32, i32* %b
  %.v3 = add i32 %.v2, 1
  store i32 %.v3, i32* %b
  %.v4 = load i32, i32* %b
  store i32 %.v4, i32* @a
  %.v5 = load i32, i32* @a
  ret i32 %.v5
}

define i32 @main() {
entry:
  %.v26 = alloca i32
  %.v21 = alloca i32
  %.v6 = alloca i32
  %.v5 = alloca i32
  %k = alloca i32
  store i32 5, i32* %k
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %k
  %.v2 = icmp sge i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  store i32 0, i32* %.v5
  store i32 0, i32* %.v6
  %.v7 = call i32 @inc_a()
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %land.rhs6, label %land.end7
while.end3:
  %.v46 = load i32, i32* @a
  call void @putint(i32 %.v46)
  call void @putch(i32 32)
  %.v47 = load i32, i32* @b
  call void @putint(i32 %.v47)
  call void @putch(i32 10)
  %.v48 = load i32, i32* @a
  ret i32 %.v48
if.then4:
  %.v19 = load i32, i32* @a
  call void @putint(i32 %.v19)
  call void @putch(i32 32)
  %.v20 = load i32, i32* @b
  call void @putint(i32 %.v20)
  call void @putch(i32 10)
  br label %if.end5
if.end5:
  store i32 1, i32* %.v21
  %.v22 = call i32 @inc_a()
  %.v23 = icmp slt i32 %.v22, 14
  %.v24 = zext i1 %.v23 to i32
  %.v25 = icmp ne i32 %.v24, 0
  br i1 %.v25, label %lor.end14, label %lor.rhs13
land.rhs6:
  %.v9 = call i32 @inc_a()
  %.v10 = icmp ne i32 %.v9, 0
  %.v11 = zext i1 %.v10 to i32
  store i32 %.v11, i32* %.v6
  br label %land.end7
land.end7:
  %.v12 = load i32, i32* %.v6
  %.v13 = icmp ne i32 %.v12, 0
  br i1 %.v13, label %land.rhs8, label %land.end9
land.rhs8:
  %.v14 = call i32 @inc_a()
  %.v15 = icmp ne i32 %.v14, 0
  %.v16 = zext i1 %.v15 to i32
  store i32 %.v16, i32* %.v5
  br label %land.end9
land.end9:
  %.v17 = load i32, i32* %.v5
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then4, label %if.end5
if.then10:
  %.v40 = load i32, i32* @a
  call void @putint(i32 %.v40)
  call void @putch(i32 10)
  %.v41 = load i32, i32* @b
  %.v42 = mul i32 %.v41, 2
  store i32 %.v42, i32* @b
  br label %if.end12
if.else11:
  %.v43 = call i32 @inc_a()
  br label %if.end12
if.end12:
  %.v44 = load i32, i32* %k
  %.v45 = sub i32 %.v44, 1
  store i32 %.v45, i32* %k
  br label %while.cond1
lor.rhs13:
  store i32 0, i32* %.v26
  %.v27 = call i32 @inc_a()
  %.v28 = icmp ne i32 %.v27, 0
  br i1 %.v28, label %land.rhs15, label %land.end16
lor.end14:
  %.v38 = load i32, i32* %.v21
  %.v39 = icmp ne i32 %.v38, 0
  br i1 %.v39, label %if.then10, label %if.else11
land.rhs15:
  %.v29 = call i32 @inc_a()
  %.v30 = call i32 @inc_a()
  %.v31 = sub i32 %.v29, %.v30
  %.v32 = add i32 %.v31, 1
  %.v33 = icmp ne i32 %.v32, 0
  %.v34 = zext i1 %.v33 to i32
  store i32 %.v34, i32* %.v26
  br label %land.end16
land.end16:
  %.v35 = load i32, i32* %.v26
  %.v36 = icmp ne i32 %.v35, 0
  %.v37 = zext i1 %.v36 to i32
  store i32 %.v37, i32* %.v21
  br label %lor.end14
}

