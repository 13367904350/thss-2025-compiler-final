@a = global i32 1
@b = global i32 0
@c = global i32 1
@d = global i32 2
@e = global i32 4
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  store i32 0, i32* %t0
  %v1 = alloca i32
  store i32 1, i32* %v1
  %v2 = alloca i32
  store i32 0, i32* %v2
  %v3 = load i32, i32* @a
  %v4 = load i32, i32* @b
  %v5 = mul i32 %v3, %v4
  %v6 = load i32, i32* @c
  %v7 = sdiv i32 %v5, %v6
  %v8 = load i32, i32* @e
  %v9 = load i32, i32* @d
  %v10 = add i32 %v8, %v9
  %v11 = icmp eq i32 %v7, %v10
  %v12 = zext i1 %v11 to i32
  %v13 = icmp ne i32 %v12, 0
  br i1 %v13, label %land.rhs3, label %land.end4
if.then1:
  store i32 1, i32* %t0
  br label %if.end2
if.end2:
  %v46 = load i32, i32* %t0
  call void @putint(i32 %v46)
  %v47 = load i32, i32* %t0
  ret i32 %v47
land.rhs3:
  %v14 = load i32, i32* @a
  %v15 = load i32, i32* @a
  %v16 = load i32, i32* @b
  %v17 = add i32 %v15, %v16
  %v18 = mul i32 %v14, %v17
  %v19 = load i32, i32* @c
  %v20 = add i32 %v18, %v19
  %v21 = load i32, i32* @d
  %v22 = load i32, i32* @e
  %v23 = add i32 %v21, %v22
  %v24 = icmp sle i32 %v20, %v23
  %v25 = zext i1 %v24 to i32
  %v26 = icmp ne i32 %v25, 0
  %v27 = zext i1 %v26 to i32
  store i32 %v27, i32* %v2
  br label %land.end4
land.end4:
  %v28 = load i32, i32* %v2
  %v29 = icmp ne i32 %v28, 0
  br i1 %v29, label %lor.end6, label %lor.rhs5
lor.rhs5:
  %v30 = load i32, i32* @a
  %v31 = load i32, i32* @b
  %v32 = load i32, i32* @c
  %v33 = mul i32 %v31, %v32
  %v34 = sub i32 %v30, %v33
  %v35 = load i32, i32* @d
  %v36 = load i32, i32* @a
  %v37 = load i32, i32* @c
  %v38 = sdiv i32 %v36, %v37
  %v39 = sub i32 %v35, %v38
  %v40 = icmp eq i32 %v34, %v39
  %v41 = zext i1 %v40 to i32
  %v42 = icmp ne i32 %v41, 0
  %v43 = zext i1 %v42 to i32
  store i32 %v43, i32* %v1
  br label %lor.end6
lor.end6:
  %v44 = load i32, i32* %v1
  %v45 = icmp ne i32 %v44, 0
  br i1 %v45, label %if.then1, label %if.end2
}

