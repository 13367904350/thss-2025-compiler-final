@k = global i32 zeroinitializer
@n = constant i32 10
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %i = alloca i32
  store i32 0, i32* %i
  store i32 1, i32* @k
  br label %while.cond1
while.cond1:
  %.v1 = load i32, i32* %i
  %.v2 = sub i32 10, 1
  %.v3 = icmp sle i32 %.v1, %.v2
  %.v4 = zext i1 %.v3 to i32
  %.v5 = icmp ne i32 %.v4, 0
  br i1 %.v5, label %while.body2, label %while.end3
while.body2:
  %.v6 = load i32, i32* %i
  %.v7 = add i32 %.v6, 1
  store i32 %.v7, i32* %i
  %.v8 = load i32, i32* @k
  %.v9 = add i32 %.v8, 1
  %.v10 = load i32, i32* @k
  %.v11 = load i32, i32* @k
  %.v12 = add i32 %.v10, %.v11
  store i32 %.v12, i32* @k
  br label %while.cond1
while.end3:
  %.v13 = load i32, i32* @k
  call void @putint(i32 %.v13)
  %.v14 = load i32, i32* @k
  ret i32 %.v14
}

