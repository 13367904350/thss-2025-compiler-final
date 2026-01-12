@N = constant i32 -1
@arr = global [6 x i32] [i32 1, i32 2, i32 33, i32 4, i32 5, i32 6]
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
  %t1 = alloca i32
  store i32 0, i32* %t1
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = icmp slt i32 %v1, 6
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = load i32, i32* %t1
  %v6 = load i32, i32* %t0
  %t8 = getelementptr [6 x i32], [6 x i32]* @arr, i32 0, i32 %v6
  %v7 = load i32, i32* %t8
  %v8 = add i32 %v5, %v7
  store i32 %v8, i32* %t1
  %v9 = load i32, i32* %t0
  %v10 = add i32 %v9, 1
  store i32 %v10, i32* %t0
  br label %while.cond1
while.end3:
  %v11 = load i32, i32* %t1
  ret i32 %v11
}

