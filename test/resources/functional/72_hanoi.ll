declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define void @move(i32 %x, i32 %y) {
entry:
  %y.addr = alloca i32
  %x.addr = alloca i32
  store i32 %x, i32* %x.addr
  store i32 %y, i32* %y.addr
  %.v1 = load i32, i32* %x.addr
  call void @putint(i32 %.v1)
  call void @putch(i32 32)
  %.v2 = load i32, i32* %y.addr
  call void @putint(i32 %.v2)
  call void @putch(i32 44)
  call void @putch(i32 32)
  ret void
}

define void @hanoi(i32 %n, i32 %one, i32 %two, i32 %three) {
entry:
  %three.addr = alloca i32
  %two.addr = alloca i32
  %one.addr = alloca i32
  %n.addr = alloca i32
  store i32 %n, i32* %n.addr
  store i32 %one, i32* %one.addr
  store i32 %two, i32* %two.addr
  store i32 %three, i32* %three.addr
  %.v1 = load i32, i32* %n.addr
  %.v2 = icmp eq i32 %.v1, 1
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = load i32, i32* %one.addr
  %.v6 = load i32, i32* %three.addr
  call void @move(i32 %.v5, i32 %.v6)
  br label %if.end3
if.else2:
  %.v7 = load i32, i32* %n.addr
  %.v8 = sub i32 %.v7, 1
  %.v9 = load i32, i32* %one.addr
  %.v10 = load i32, i32* %three.addr
  %.v11 = load i32, i32* %two.addr
  call void @hanoi(i32 %.v8, i32 %.v9, i32 %.v10, i32 %.v11)
  %.v12 = load i32, i32* %one.addr
  %.v13 = load i32, i32* %three.addr
  call void @move(i32 %.v12, i32 %.v13)
  %.v14 = load i32, i32* %n.addr
  %.v15 = sub i32 %.v14, 1
  %.v16 = load i32, i32* %two.addr
  %.v17 = load i32, i32* %one.addr
  %.v18 = load i32, i32* %three.addr
  call void @hanoi(i32 %.v15, i32 %.v16, i32 %.v17, i32 %.v18)
  br label %if.end3
if.end3:
  ret void
}

define i32 @main() {
entry:
  %n = alloca i32
  %.v1 = call i32 @getint()
  store i32 %.v1, i32* %n
  br label %while.cond1
while.cond1:
  %.v2 = load i32, i32* %n
  %.v3 = icmp sgt i32 %.v2, 0
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = call i32 @getint()
  call void @hanoi(i32 %.v6, i32 1, i32 2, i32 3)
  call void @putch(i32 10)
  %.v7 = load i32, i32* %n
  %.v8 = sub i32 %.v7, 1
  store i32 %.v8, i32* %n
  br label %while.cond1
while.end3:
  ret i32 0
}

