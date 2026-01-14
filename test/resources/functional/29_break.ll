declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %sum = alloca i32
  %i = alloca i32
  store i32 0, i32* %i
  store i32 0, i32* %sum
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = icmp slt i32 %.v1, 100
  %.v3 = zext i1 %.v2 to i32
  %.v4 = icmp ne i32 %.v3, 0
  br i1 %.v4, label %while.body2, label %while.end3
while.body2:
  %.v5 = load i32, i32* %i
  %.v6 = icmp eq i32 %.v5, 50
  %.v7 = zext i1 %.v6 to i32
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %if.then4, label %if.end5
while.end3:
  %.v14 = load i32, i32* %sum
  ret i32 %.v14
if.then4:
  br label %while.end3
if.end5:
  %.v9 = load i32, i32* %sum
  %.v10 = load i32, i32* %i
  %.v11 = add i32 %.v9, %.v10
  store i32 %.v11, i32* %sum
  %.v12 = load i32, i32* %i
  %.v13 = add i32 %.v12, 1
  store i32 %.v13, i32* %i
  br label %while.cond1
}

