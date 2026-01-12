@a = global i32 7
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @func() {
entry:
  %t0 = alloca i32
  %v1 = load i32, i32* @a
  store i32 %v1, i32* %t0
  %t2 = alloca i32
  store i32 1, i32* %t2
  %v2 = load i32, i32* %t2
  %v3 = load i32, i32* %t0
  %v4 = icmp eq i32 %v2, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %if.then1, label %if.else2
if.then1:
  %v7 = load i32, i32* %t2
  %v8 = add i32 %v7, 1
  store i32 %v8, i32* %t2
  ret i32 1
if.else2:
  ret i32 0
if.end3:
  ret i32 0
}

define i32 @main() {
entry:
  %t10 = alloca i32
  store i32 0, i32* %t10
  %t11 = alloca i32
  store i32 0, i32* %t11
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t11
  %v2 = icmp slt i32 %v1, 100
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = call i32 @func()
  %v6 = icmp eq i32 %v5, 1
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %if.then4, label %if.end5
while.end3:
  %v13 = load i32, i32* %t10
  %v14 = icmp slt i32 %v13, 100
  %v15 = zext i1 %v14 to i32
  %v16 = icmp ne i32 %v15, 0
  br i1 %v16, label %if.then6, label %if.else7
if.then4:
  %v9 = load i32, i32* %t10
  %v10 = add i32 %v9, 1
  store i32 %v10, i32* %t10
  br label %if.end5
if.end5:
  %v11 = load i32, i32* %t11
  %v12 = add i32 %v11, 1
  store i32 %v12, i32* %t11
  br label %while.cond1
if.then6:
  call void @putint(i32 1)
  br label %if.end8
if.else7:
  call void @putint(i32 0)
  br label %if.end8
if.end8:
  ret i32 0
}

