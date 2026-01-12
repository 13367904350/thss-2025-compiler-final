declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @get_one(i32 %a) {
entry:
  %t0 = alloca i32
  store i32 %a, i32* %t0
  ret i32 1
}

define i32 @deepWhileBr(i32 %a, i32 %b) {
entry:
  %t1 = alloca i32
  store i32 %a, i32* %t1
  %t2 = alloca i32
  store i32 %b, i32* %t2
  %t3 = alloca i32
  %v1 = load i32, i32* %t1
  %v2 = load i32, i32* %t2
  %v3 = add i32 %v1, %v2
  store i32 %v3, i32* %t3
  br label %while.cond1
while.cond1:
  %v4 = load i32, i32* %t3
  %v5 = icmp slt i32 %v4, 75
  %v6 = zext i1 %v5 to i32
  %v7 = icmp ne i32 %v6, 0
  br i1 %v7, label %while.body2, label %while.end3
while.body2:
  %t11 = alloca i32
  store i32 42, i32* %t11
  %v8 = load i32, i32* %t3
  %v9 = icmp slt i32 %v8, 100
  %v10 = zext i1 %v9 to i32
  %v11 = icmp ne i32 %v10, 0
  br i1 %v11, label %if.then4, label %if.end5
while.end3:
  %v27 = load i32, i32* %t3
  ret i32 %v27
if.then4:
  %v12 = load i32, i32* %t3
  %v13 = load i32, i32* %t11
  %v14 = add i32 %v12, %v13
  store i32 %v14, i32* %t3
  %v15 = load i32, i32* %t3
  %v16 = icmp sgt i32 %v15, 99
  %v17 = zext i1 %v16 to i32
  %v18 = icmp ne i32 %v17, 0
  br i1 %v18, label %if.then6, label %if.end7
if.end5:
  br label %while.cond1
if.then6:
  %t23 = alloca i32
  %v19 = load i32, i32* %t11
  %v20 = mul i32 %v19, 2
  store i32 %v20, i32* %t23
  %v21 = call i32 @get_one(i32 0)
  %v22 = icmp eq i32 %v21, 1
  %v23 = zext i1 %v22 to i32
  %v24 = icmp ne i32 %v23, 0
  br i1 %v24, label %if.then8, label %if.end9
if.end7:
  br label %if.end5
if.then8:
  %v25 = load i32, i32* %t23
  %v26 = mul i32 %v25, 2
  store i32 %v26, i32* %t3
  br label %if.end9
if.end9:
  br label %if.end7
}

define i32 @main() {
entry:
  %t33 = alloca i32
  store i32 2, i32* %t33
  %v1 = load i32, i32* %t33
  %v2 = load i32, i32* %t33
  %v3 = call i32 @deepWhileBr(i32 %v1, i32 %v2)
  store i32 %v3, i32* %t33
  %v4 = load i32, i32* %t33
  call void @putint(i32 %v4)
  ret i32 0
}

