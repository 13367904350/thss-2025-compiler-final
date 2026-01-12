declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @if_ifElse_() {
entry:
  %t0 = alloca i32
  store i32 5, i32* %t0
  %t1 = alloca i32
  store i32 10, i32* %t1
  %v1 = load i32, i32* %t0
  %v2 = icmp eq i32 %v1, 5
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %if.then1, label %if.end2
if.then1:
  %v5 = load i32, i32* %t1
  %v6 = icmp eq i32 %v5, 10
  %v7 = zext i1 %v6 to i32
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %if.then3, label %if.else4
if.end2:
  %v11 = load i32, i32* %t0
  ret i32 %v11
if.then3:
  store i32 25, i32* %t0
  br label %if.end5
if.else4:
  %v9 = load i32, i32* %t0
  %v10 = add i32 %v9, 15
  store i32 %v10, i32* %t0
  br label %if.end5
if.end5:
  br label %if.end2
}

define i32 @main() {
entry:
  %v1 = call i32 @if_ifElse_()
  ret i32 %v1
}

