declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @ifWhile() {
entry:
  %t0 = alloca i32
  store i32 0, i32* %t0
  %t1 = alloca i32
  store i32 3, i32* %t1
  %v1 = load i32, i32* %t0
  %v2 = icmp eq i32 %v1, 5
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %if.then1, label %if.else2
if.then1:
  br label %while.cond4
if.else2:
  br label %while.cond7
if.end3:
  %v21 = load i32, i32* %t1
  ret i32 %v21
while.cond4:
  %v5 = load i32, i32* %t1
  %v6 = icmp eq i32 %v5, 2
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %while.body5, label %while.end6
while.body5:
  %v9 = load i32, i32* %t1
  %v10 = add i32 %v9, 2
  store i32 %v10, i32* %t1
  br label %while.cond4
while.end6:
  %v11 = load i32, i32* %t1
  %v12 = add i32 %v11, 25
  store i32 %v12, i32* %t1
  br label %if.end3
while.cond7:
  %v13 = load i32, i32* %t0
  %v14 = icmp slt i32 %v13, 5
  %v15 = zext i1 %v14 to i32
  %v16 = icmp ne i32 %v15, 0
  br i1 %v16, label %while.body8, label %while.end9
while.body8:
  %v17 = load i32, i32* %t1
  %v18 = mul i32 %v17, 2
  store i32 %v18, i32* %t1
  %v19 = load i32, i32* %t0
  %v20 = add i32 %v19, 1
  store i32 %v20, i32* %t0
  br label %while.cond7
while.end9:
  br label %if.end3
}

define i32 @main() {
entry:
  %v1 = call i32 @ifWhile()
  ret i32 %v1
}

