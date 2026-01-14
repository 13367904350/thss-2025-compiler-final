declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %a = alloca i32
  store i32 10, i32* %a
  %.v1 = load i32, i32* %a
  %.v2 = icmp eq i32 %.v1, 0
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp eq i32 %.v3, 0
  %.v5 = zext i1 %.v4 to i32
  %.v6 = icmp eq i32 %.v5, 0
  %.v7 = zext i1 %.v6 to i32
  %.v8 = sub i32 0, %.v7
  %.v9 = icmp ne i32 %.v8, 0
  br i1 %.v9, label %if.then1, label %if.else2
if.then1:
  %.v10 = sub i32 0, 1
  %.v11 = sub i32 0, %.v10
  %.v12 = sub i32 0, %.v11
  store i32 %.v12, i32* %a
  br label %if.end3
if.else2:
  store i32 0, i32* %a
  br label %if.end3
if.end3:
  %.v13 = load i32, i32* %a
  ret i32 %.v13
}

