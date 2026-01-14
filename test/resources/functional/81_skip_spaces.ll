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
  %arr = alloca [100 x i32]
  store i32 0, i32* %i
  store i32 0, i32* %sum
  br label %while.cond1
while.cond1:
  %.v1 = call i32 @getint()
  %.v2 = icmp ne i32 %.v1, 0
  br i1 %.v2, label %while.body2, label %while.end3
while.body2:
  %.v3 = call i32 @getint()
  %.v4 = load i32, i32* %i
  %t4 = sext i32 %.v4 to i64
  %t5 = getelementptr [100 x i32], [100 x i32]* %arr, i64 0, i64 %t4
  store i32 %.v3, i32* %t5
  %.v5 = load i32, i32* %i
  %.v6 = add i32 %.v5, 1
  store i32 %.v6, i32* %i
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %.v7 = load i32, i32* %i
  %.v8 = icmp ne i32 %.v7, 0
  br i1 %.v8, label %while.body5, label %while.end6
while.body5:
  %.v9 = load i32, i32* %i
  %.v10 = sub i32 %.v9, 1
  store i32 %.v10, i32* %i
  %.v11 = load i32, i32* %sum
  %.v12 = load i32, i32* %i
  %t14 = sext i32 %.v12 to i64
  %t15 = getelementptr [100 x i32], [100 x i32]* %arr, i64 0, i64 %t14
  %.v13 = load i32, i32* %t15
  %.v14 = add i32 %.v11, %.v13
  store i32 %.v14, i32* %sum
  br label %while.cond4
while.end6:
  %.v15 = load i32, i32* %sum
  %.v16 = srem i32 %.v15, 79
  ret i32 %.v16
}

