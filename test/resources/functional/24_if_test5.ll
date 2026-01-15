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

define i32 @if_if_Else() {
entry:
  %b = alloca i32
  %a = alloca i32
  store i32 5, i32* %a
  store i32 10, i32* %b
  %.v1 = load i32, i32* %a
  %.v2 = icmp eq i32 %.v1, 5
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %if.then1, label %if.else2
if.then1:
  %.v5 = load i32, i32* %b
  %.v6 = icmp eq i32 %.v5, 10
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then4, label %if.end5
if.else2:
  %.v9 = load i32, i32* %a
  %.v10 = add i32 %.v9, 15
  store i32 %.v10, i32* %a
  br label %if.end3
if.end3:
  %.v11 = load i32, i32* %a
  ret i32 %.v11
if.then4:
  store i32 25, i32* %a
  br label %if.end5
if.end5:
  br label %if.end3
}

define i32 @main() {
entry:
  %.v1 = call i32 @if_if_Else()
  ret i32 %.v1
}

