declare i32 @getint()

declare i32 @getch()

declare i32 @getarray(i32*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

define i32 @main() {
entry:
  %t0 = alloca i32
  store i32 10, i32* %t0
  %t1 = alloca i32
  store i32 5, i32* %t1
  %v1 = load i32, i32* %t1
  ret i32 %v1
}

