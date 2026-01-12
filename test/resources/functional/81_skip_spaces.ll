declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca [100 x i32]
  %t1 = alloca i32
  store i32 0, i32* %t1
  %t2 = alloca i32
  store i32 0, i32* %t2
  br label %while.cond1
while.cond1:
  %v1 = call i32 @getint()
  %v2 = icmp ne i32 %v1, 0
  br i1 %v2, label %while.body2, label %while.end3
while.body2:
  %v3 = call i32 @getint()
  %v4 = load i32, i32* %t1
  %t7 = getelementptr [100 x i32], [100 x i32]* %t0, i32 0, i32 %v4
  store i32 %v3, i32* %t7
  %v5 = load i32, i32* %t1
  %v6 = add i32 %v5, 1
  store i32 %v6, i32* %t1
  br label %while.cond1
while.end3:
  br label %while.cond4
while.cond4:
  %v7 = load i32, i32* %t1
  %v8 = icmp ne i32 %v7, 0
  br i1 %v8, label %while.body5, label %while.end6
while.body5:
  %v9 = load i32, i32* %t1
  %v10 = sub i32 %v9, 1
  store i32 %v10, i32* %t1
  %v11 = load i32, i32* %t2
  %v12 = load i32, i32* %t1
  %t16 = getelementptr [100 x i32], [100 x i32]* %t0, i32 0, i32 %v12
  %v13 = load i32, i32* %t16
  %v14 = add i32 %v11, %v13
  store i32 %v14, i32* %t2
  br label %while.cond4
while.end6:
  %v15 = load i32, i32* %t2
  %v16 = srem i32 %v15, 79
  ret i32 %v16
}

