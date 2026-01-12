@k = global i32 0
@n = constant i32 10
declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  store i32 0, i32* %t0
  store i32 1, i32* @k
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = load i32, i32* @n
  %v3 = sub i32 %v2, 1
  %v4 = icmp sle i32 %v1, %v3
  %v5 = zext i1 %v4 to i32
  %v6 = icmp ne i32 %v5, 0
  br i1 %v6, label %while.body2, label %while.end3
while.body2:
  %v7 = load i32, i32* %t0
  %v8 = add i32 %v7, 1
  store i32 %v8, i32* %t0
  %v9 = load i32, i32* @k
  %v10 = add i32 %v9, 1
  %v11 = load i32, i32* @k
  %v12 = load i32, i32* @k
  %v13 = add i32 %v11, %v12
  store i32 %v13, i32* @k
  br label %while.cond1
while.end3:
  %v14 = load i32, i32* @k
  call void @putint(i32 %v14)
  %v15 = load i32, i32* @k
  ret i32 %v15
}

