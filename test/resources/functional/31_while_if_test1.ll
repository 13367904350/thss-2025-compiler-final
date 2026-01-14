declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @whileIf() {
entry:
  %b = alloca i32
  %a = alloca i32
  store i32 0, i32* %a
  store i32 0, i32* %b
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %a
  %.v2 = icmp slt i32 %.v1, 100
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %a
  %.v6 = icmp eq i32 %.v5, 5
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then4, label %if.else5
while.end3:
  %.v17 = load i32, i32* %b
  ret i32 %.v17
if.then4:
  store i32 25, i32* %b
  br label %if.end6
if.else5:
  %.v9 = load i32, i32* %a
  %.v10 = icmp eq i32 %.v9, 10
  %.v11 = zext i1 %.v10 to i32
  %.v12 = icmp ne i32 %.v11, 0
  br i1 %.v12, label %if.then7, label %if.else8
if.end6:
  %.v15 = load i32, i32* %a
  %.v16 = add i32 %.v15, 1
  store i32 %.v16, i32* %a
  br label %while.cond1
if.then7:
  store i32 42, i32* %b
  br label %if.end9
if.else8:
  %.v13 = load i32, i32* %a
  %.v14 = mul i32 %.v13, 2
  store i32 %.v14, i32* %b
  br label %if.end9
if.end9:
  br label %if.end6
}

define i32 @main() {
entry:
  %.v1 = call i32 @whileIf()
  ret i32 %.v1
}

