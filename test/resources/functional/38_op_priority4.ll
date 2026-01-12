@a = global i32 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@e = global i32 0
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %v1 = call i32 @getint()
  store i32 %v1, i32* @a
  %v2 = call i32 @getint()
  store i32 %v2, i32* @b
  %v3 = call i32 @getint()
  store i32 %v3, i32* @c
  %v4 = call i32 @getint()
  store i32 %v4, i32* @d
  %v5 = call i32 @getint()
  store i32 %v5, i32* @e
  %t5 = alloca i32
  store i32 0, i32* %t5
  %v6 = alloca i32
  store i32 1, i32* %v6
  %v7 = alloca i32
  store i32 1, i32* %v7
  %v8 = load i32, i32* @a
  %v9 = load i32, i32* @b
  %v10 = load i32, i32* @c
  %v11 = mul i32 %v9, %v10
  %v12 = sub i32 %v8, %v11
  %v13 = load i32, i32* @d
  %v14 = load i32, i32* @a
  %v15 = load i32, i32* @c
  %v16 = sdiv i32 %v14, %v15
  %v17 = sub i32 %v13, %v16
  %v18 = icmp ne i32 %v12, %v17
  %v19 = zext i1 %v18 to i32
  %v20 = icmp ne i32 %v19, 0
  br i1 %v20, label %lor.end4, label %lor.rhs3
if.then1:
  store i32 1, i32* %t5
  br label %if.end2
if.end2:
  %v49 = load i32, i32* %t5
  ret i32 %v49
lor.rhs3:
  %v21 = load i32, i32* @a
  %v22 = load i32, i32* @b
  %v23 = mul i32 %v21, %v22
  %v24 = load i32, i32* @c
  %v25 = sdiv i32 %v23, %v24
  %v26 = load i32, i32* @e
  %v27 = load i32, i32* @d
  %v28 = add i32 %v26, %v27
  %v29 = icmp eq i32 %v25, %v28
  %v30 = zext i1 %v29 to i32
  %v31 = icmp ne i32 %v30, 0
  %v32 = zext i1 %v31 to i32
  store i32 %v32, i32* %v7
  br label %lor.end4
lor.end4:
  %v33 = load i32, i32* %v7
  %v34 = icmp ne i32 %v33, 0
  br i1 %v34, label %lor.end6, label %lor.rhs5
lor.rhs5:
  %v35 = load i32, i32* @a
  %v36 = load i32, i32* @b
  %v37 = add i32 %v35, %v36
  %v38 = load i32, i32* @c
  %v39 = add i32 %v37, %v38
  %v40 = load i32, i32* @d
  %v41 = load i32, i32* @e
  %v42 = add i32 %v40, %v41
  %v43 = icmp eq i32 %v39, %v42
  %v44 = zext i1 %v43 to i32
  %v45 = icmp ne i32 %v44, 0
  %v46 = zext i1 %v45 to i32
  store i32 %v46, i32* %v6
  br label %lor.end6
lor.end6:
  %v47 = load i32, i32* %v6
  %v48 = icmp ne i32 %v47, 0
  br i1 %v48, label %if.then1, label %if.end2
}

