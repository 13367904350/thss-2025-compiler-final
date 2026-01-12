declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @move(i32 %x, i32 %y) {
entry:
  %t0 = alloca i32
  store i32 %x, i32* %t0
  %t1 = alloca i32
  store i32 %y, i32* %t1
  %v1 = load i32, i32* %t0
  call void @putint(i32 %v1)
  call void @putch(i32 32)
  %v2 = load i32, i32* %t1
  call void @putint(i32 %v2)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi(i32 %n, i32 %one, i32 %two, i32 %three) {
entry:
  %t4 = alloca i32
  store i32 %n, i32* %t4
  %t5 = alloca i32
  store i32 %one, i32* %t5
  %t6 = alloca i32
  store i32 %two, i32* %t6
  %t7 = alloca i32
  store i32 %three, i32* %t7
  %v1 = load i32, i32* %t4
  %v2 = icmp eq i32 %v1, 1
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %if.then1, label %if.else2
if.then1:
  %v5 = load i32, i32* %t5
  %v6 = load i32, i32* %t7
  call void @move(i32 %v5, i32 %v6)
  br label %if.end3
if.else2:
  %v7 = load i32, i32* %t4
  %v8 = sub i32 %v7, 1
  %v9 = load i32, i32* %t5
  %v10 = load i32, i32* %t7
  %v11 = load i32, i32* %t6
  call void @hanoi(i32 %v8, i32 %v9, i32 %v10, i32 %v11)
  %v12 = load i32, i32* %t5
  %v13 = load i32, i32* %t7
  call void @move(i32 %v12, i32 %v13)
  %v14 = load i32, i32* %t4
  %v15 = sub i32 %v14, 1
  %v16 = load i32, i32* %t6
  %v17 = load i32, i32* %t5
  %v18 = load i32, i32* %t7
  call void @hanoi(i32 %v15, i32 %v16, i32 %v17, i32 %v18)
  br label %if.end3
if.end3:
  ret void
}

define i32 @main() {
entry:
  %t26 = alloca i32
  %v1 = call i32 @getint()
  store i32 %v1, i32* %t26
  br label %while.cond1
while.cond1:
  %v2 = load i32, i32* %t26
  %v3 = icmp sgt i32 %v2, 0
  %v4 = zext i1 %v3 to i32
  %v5 = icmp ne i32 %v4, 0
  br i1 %v5, label %while.body2, label %while.end3
while.body2:
  %v6 = call i32 @getint()
  call void @hanoi(i32 %v6, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %v7 = load i32, i32* %t26
  %v8 = sub i32 %v7, 1
  store i32 %v8, i32* %t26
  br label %while.cond1
while.end3:
  ret i32 0
}

