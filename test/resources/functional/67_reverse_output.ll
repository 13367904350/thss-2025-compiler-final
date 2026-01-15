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

define void @reverse(i32 %n) {
entry:
  %next = alloca i32
  %n.addr = alloca i32
  store i32 %n, i32* %n.addr
  %.v1 = load i32, i32* %n.addr
  %.v2 = icmp sle i32 %.v1, 1
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = call i32 @getint()
  store i32 %.v5, i32* %next
  %.v6 = load i32, i32* %next
  call void @putint(i32 %.v6)
  br label %if.end3
if.else2:
  %.v7 = call i32 @getint()
  store i32 %.v7, i32* %next
  %.v8 = load i32, i32* %n.addr
  %.v9 = sub i32 %.v8, 1
  call void @reverse(i32 %.v9)
  %.v10 = load i32, i32* %next
  call void @putint(i32 %.v10)
  br label %if.end3
if.end3:
  ret void
}

define i32 @main() {
entry:
  %i = alloca i32
  store i32 200, i32* %i
  %.v1 = load i32, i32* %i
  call void @reverse(i32 %.v1)
  ret i32 0
}

