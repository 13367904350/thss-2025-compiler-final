declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  %t1 = alloca i32
  store i32 10, i32* %t0
  %v1 = sub i32 0, 1
  store i32 %v1, i32* %t1
  %v2 = load i32, i32* %t0
  %v3 = load i32, i32* %t1
  %v4 = add i32 %v2, %v3
  ret i32 %v4
}

