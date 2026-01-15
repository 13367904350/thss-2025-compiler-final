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

define i32 @deepWhileBr(i32 %a, i32 %b) {
entry:
  %e = alloca i32
  %d = alloca i32
  %c = alloca i32
  %b.addr = alloca i32
  %a.addr = alloca i32
  store i32 %a, i32* %a.addr
  store i32 %b, i32* %b.addr
  %.v1 = load i32, i32* %a.addr
  %.v2 = load i32, i32* %b.addr
  %.v3 = add i32 %.v1, %.v2
  store i32 %.v3, i32* %c
  br label %while.cond1
while.cond1:
  %.v4 = load i32, i32* %c
  %.v5 = icmp slt i32 %.v4, 75
  %.v6 = zext i1 %.v5 to i32
  %.v7 = icmp ne i32 %.v6, 0
  br i1 %.v7, label %while.body2, label %while.end3
while.body2:
  store i32 42, i32* %d
  %.v8 = load i32, i32* %c
  %.v9 = icmp slt i32 %.v8, 100
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp ne i32 %.v10, 0
  br i1 %.v11, label %if.then4, label %if.end5
while.end3:
  %.v26 = load i32, i32* %c
  ret i32 %.v26
if.then4:
  %.v12 = load i32, i32* %c
  %.v13 = load i32, i32* %d
  %.v14 = add i32 %.v12, %.v13
  store i32 %.v14, i32* %c
  %.v15 = load i32, i32* %c
  %.v16 = icmp sgt i32 %.v15, 99
  %.v17 = zext i1 %.v16 to i32
  %.v18 = icmp ne i32 %.v17, 0
  br i1 %.v18, label %if.then6, label %if.end7
if.end5:
  br label %while.cond1
if.then6:
  %.v19 = load i32, i32* %d
  %.v20 = mul i32 %.v19, 2
  store i32 %.v20, i32* %e
  %.v21 = icmp eq i32 1, 1
  %.v22 = zext i1 %.v21 to i32
  %.v23 = icmp ne i32 %.v22, 0
  br i1 %.v23, label %if.then8, label %if.end9
if.end7:
  br label %if.end5
if.then8:
  %.v24 = load i32, i32* %e
  %.v25 = mul i32 %.v24, 2
  store i32 %.v25, i32* %c
  br label %if.end9
if.end9:
  br label %if.end7
}

define i32 @main() {
entry:
  %p = alloca i32
  store i32 2, i32* %p
  %.v1 = load i32, i32* %p
  %.v2 = load i32, i32* %p
  %.v3 = call i32 @deepWhileBr(i32 %.v1, i32 %.v2)
  ret i32 %.v3
}

