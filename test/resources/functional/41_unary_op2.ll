declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %b = alloca i32
  %a = alloca i32
  store i32 56, i32* %a
  store i32 4, i32* %b
  %.v1 = load i32, i32* %a
  %.v2 = sub i32 0, 4
  %.v3 = sub i32 %.v1, %.v2
  %.v4 = load i32, i32* %b
  %.v5 = add i32 %.v3, %.v4
  store i32 %.v5, i32* %a
  %.v6 = load i32, i32* %a
  %.v7 = icmp eq i32 %.v6, 0
  %.v8 = zext i1 %.v7 to i32
  %.v9 = icmp eq i32 %.v8, 0
  %.v10 = zext i1 %.v9 to i32
  %.v11 = icmp eq i32 %.v10, 0
  %.v12 = zext i1 %.v11 to i32
  %.v13 = sub i32 0, %.v12
  %.v14 = icmp ne i32 %.v13, 0
  br i1 %.v14, label %if.then1, label %if.else2
if.then1:
  %.v15 = sub i32 0, 1
  %.v16 = sub i32 0, %.v15
  %.v17 = sub i32 0, %.v16
  store i32 %.v17, i32* %a
  br label %if.end3
if.else2:
  %.v18 = load i32, i32* %b
  %.v19 = add i32 0, %.v18
  store i32 %.v19, i32* %a
  br label %if.end3
if.end3:
  %.v20 = load i32, i32* %a
  call void @putint(i32 %.v20)
  ret i32 0
}

