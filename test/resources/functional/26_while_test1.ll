declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @doubleWhile() {
entry:
  %t0 = alloca i32
  store i32 5, i32* %t0
  %t1 = alloca i32
  store i32 7, i32* %t1
  br label %while.cond1
while.cond1:
  %v1 = load i32, i32* %t0
  %v2 = icmp slt i32 %v1, 100
  %v3 = zext i1 %v2 to i32
  %v4 = icmp ne i32 %v3, 0
  br i1 %v4, label %while.body2, label %while.end3
while.body2:
  %v5 = load i32, i32* %t0
  %v6 = add i32 %v5, 30
  store i32 %v6, i32* %t0
  br label %while.cond4
while.end3:
  %v15 = load i32, i32* %t1
  ret i32 %v15
while.cond4:
  %v7 = load i32, i32* %t1
  %v8 = icmp slt i32 %v7, 100
  %v9 = zext i1 %v8 to i32
  %v10 = icmp ne i32 %v9, 0
  br i1 %v10, label %while.body5, label %while.end6
while.body5:
  %v11 = load i32, i32* %t1
  %v12 = add i32 %v11, 6
  store i32 %v12, i32* %t1
  br label %while.cond4
while.end6:
  %v13 = load i32, i32* %t1
  %v14 = sub i32 %v13, 100
  store i32 %v14, i32* %t1
  br label %while.cond1
}

define i32 @main() {
entry:
  %v1 = call i32 @doubleWhile()
  ret i32 %v1
}

