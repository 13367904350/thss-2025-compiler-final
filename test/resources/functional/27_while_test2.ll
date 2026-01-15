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

define i32 @FourWhile() {
entry:
  %d = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  store i32 5, i32* %a
  store i32 6, i32* %b
  store i32 7, i32* %c
  store i32 10, i32* %d
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %a
  %.v2 = icmp slt i32 %.v1, 20
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %a
  %.v6 = add i32 %.v5, 3
  store i32 %.v6, i32* %a
  br label %while.cond4
while.end3:
  %.v31 = load i32, i32* %a
  %.v32 = load i32, i32* %b
  %.v33 = load i32, i32* %d
  %.v34 = add i32 %.v32, %.v33
  %.v35 = add i32 %.v31, %.v34
  %.v36 = load i32, i32* %c
  %.v37 = add i32 %.v35, %.v36
  ret i32 %.v37
while.cond4:
  %.v7 = load i32, i32* %b
  %.v8 = icmp slt i32 %.v7, 10
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  br i1 %.v10, label %while.body5, label %while.end6
while.body5:
  %.v11 = load i32, i32* %b
  %.v12 = add i32 %.v11, 1
  store i32 %.v12, i32* %b
  br label %while.cond7
while.end6:
  %.v29 = load i32, i32* %b
  %.v30 = sub i32 %.v29, 2
  store i32 %.v30, i32* %b
  br label %while.cond1
while.cond7:
  %.v13 = load i32, i32* %c
  %.v14 = icmp eq i32 %.v13, 7
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %while.body8, label %while.end9
while.body8:
  %.v17 = load i32, i32* %c
  %.v18 = sub i32 %.v17, 1
  store i32 %.v18, i32* %c
  br label %while.cond10
while.end9:
  %.v27 = load i32, i32* %c
  %.v28 = add i32 %.v27, 1
  store i32 %.v28, i32* %c
  br label %while.cond4
while.cond10:
  %.v19 = load i32, i32* %d
  %.v20 = icmp slt i32 %.v19, 20
  %.v21 = zext i1 %.v20 to i32
  %.v22 = icmp ne i32 %.v21, 0
  br i1 %.v22, label %while.body11, label %while.end12
while.body11:
  %.v23 = load i32, i32* %d
  %.v24 = add i32 %.v23, 3
  store i32 %.v24, i32* %d
  br label %while.cond10
while.end12:
  %.v25 = load i32, i32* %d
  %.v26 = sub i32 %.v25, 1
  store i32 %.v26, i32* %d
  br label %while.cond7
}

define i32 @main() {
entry:
  %.v1 = call i32 @FourWhile()
  ret i32 %.v1
}

