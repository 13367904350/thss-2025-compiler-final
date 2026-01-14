@k = global i32 zeroinitializer
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %g.1 = alloca i32
  %l = alloca i32
  %g = alloca i32
  %k = alloca i32
  store i32 3389, i32* @k
  %.v1 = load i32, i32* @k
  %.v2 = icmp slt i32 %.v1, 10000
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.end2
if.then1:
  %.v5 = load i32, i32* @k
  %.v6 = add i32 %.v5, 1
  store i32 %.v6, i32* @k
  store i32 112, i32* %k
  br label %while.cond3
if.end2:
  %.v26 = load i32, i32* @k
  ret i32 %.v26
while.cond3:
  %.v7 = load i32, i32* %k
  %.v8 = icmp sgt i32 %.v7, 10
  %.v9 = zext i1 %.v8 to i32
  %.v10 = icmp ne i32 %.v9, 0
  br i1 %.v10, label %while.body4, label %while.end5
while.body4:
  %.v11 = load i32, i32* %k
  %.v12 = sub i32 %.v11, 88
  store i32 %.v12, i32* %k
  %.v13 = load i32, i32* %k
  %.v14 = icmp slt i32 %.v13, 1000
  %.v15 = zext i1 %.v14 to i32
  %.v16 = icmp ne i32 %.v15, 0
  br i1 %.v16, label %if.then6, label %if.end7
while.end5:
  %.v25 = load i32, i32* %k
  call void @putint(i32 %.v25)
  br label %if.end2
if.then6:
  store i32 9, i32* %g
  store i32 11, i32* %l
  store i32 10, i32* %g
  %.v17 = load i32, i32* %k
  %.v18 = load i32, i32* %g
  %.v19 = sub i32 %.v17, %.v18
  store i32 %.v19, i32* %k
  store i32 11, i32* %g.1
  %.v20 = load i32, i32* %k
  %.v21 = load i32, i32* %g.1
  %.v22 = add i32 %.v20, %.v21
  %.v23 = load i32, i32* %l
  %.v24 = add i32 %.v22, %.v23
  store i32 %.v24, i32* %k
  br label %if.end7
if.end7:
  br label %while.cond3
}

